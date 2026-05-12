.class public final Lcom/oplus/vfxsdk/common/COEParse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/common/COEParse$a;,
        Lcom/oplus/vfxsdk/common/COEParse$b;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/vfxsdk/common/COEParse$a;

.field private static final builtinAnimLineMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/oplus/vfxsdk/common/COEParse$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/common/COEParse$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/vfxsdk/common/COEParse;->Companion:Lcom/oplus/vfxsdk/common/COEParse$a;

    const-string v0, "_translate_"

    const-string v1, "builtin_translate"

    invoke-static {v0, v1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v0

    const-string v1, "_scale_"

    const-string v2, "builtin_scale"

    invoke-static {v1, v2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v1

    const-string v2, "_layout_"

    const-string v3, "builtin_layout"

    invoke-static {v2, v3}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v2

    const-string v3, "_rotate_"

    const-string v4, "builtin_rotate"

    invoke-static {v3, v4}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ln8/q;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/j0;->k([Ln8/q;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/oplus/vfxsdk/common/COEParse;->builtinAnimLineMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "COEParse"

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/COEParse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getBuiltinAnimLineMap$cp()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/oplus/vfxsdk/common/COEParse;->builtinAnimLineMap:Ljava/util/Map;

    return-object v0
.end method

.method private final getId(Lorg/json/JSONObject;)I
    .locals 0

    :try_start_0
    const-string p0, "id"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final parseAnimKey(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/vfxsdk/common/AnimKey;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual/range {p1 .. p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual/range {p1 .. p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v7, v4

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v10, v4

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "expr"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "ipol"

    const-string v5, "bezier"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/oplus/vfxsdk/common/m;->b()[F

    move-result-object v4

    invoke-direct {v0, v3, v5, v4}, Lcom/oplus/vfxsdk/common/COEParse;->parseFloatArray(Lorg/json/JSONObject;Ljava/lang/String;[F)[F

    move-result-object v12

    const-string v4, "spring"

    invoke-static {}, Lcom/oplus/vfxsdk/common/m;->c()[F

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/oplus/vfxsdk/common/COEParse;->parseFloatArray(Lorg/json/JSONObject;Ljava/lang/String;[F)[F

    move-result-object v13

    invoke-static {v12}, Lcom/oplus/vfxsdk/common/m;->a([F)V

    new-instance v3, Lcom/oplus/vfxsdk/common/AnimKey;

    invoke-static {v9}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v11}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/16 v16, 0x100

    const/16 v17, 0x0

    const/4 v15, 0x0

    move-object v6, v3

    move v8, v10

    invoke-direct/range {v6 .. v17}, Lcom/oplus/vfxsdk/common/AnimKey;-><init>(FFLjava/lang/String;FLjava/lang/String;[F[FLjava/lang/String;Landroid/animation/TimeInterpolator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final parseAnimator(Lorg/json/JSONArray;)Ljava/util/HashMap;
    .locals 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/AnimatorValue;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v1, :cond_14

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_14

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_1

    :goto_2
    move-object v4, v5

    move/from16 v17, v6

    move/from16 v29, v7

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_1
    invoke-direct {v0, v8}, Lcom/oplus/vfxsdk/common/COEParse;->getId(Lorg/json/JSONObject;)I

    move-result v10

    const-string v9, "name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v11, "duration"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-float v12, v11

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v13, "animLines"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    if-nez v14, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v14

    const/4 v4, 0x0

    :goto_3
    const-string v2, "animKeys"

    const-string v3, "lastTime"

    const-string v1, "nodeId"

    if-ge v4, v14, :cond_f

    move/from16 v17, v6

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v13

    const-string v13, "key"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move/from16 v28, v14

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move/from16 v29, v7

    const-string v7, "optString(...)"

    invoke-static {v14, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v30, v5

    const/4 v7, 0x1

    new-array v5, v7, [C

    const/16 v7, 0x2e

    const/16 v16, 0x0

    aput-char v7, v5, v16

    const/16 v22, 0x6

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v14

    move-object/from16 v19, v5

    invoke-static/range {v18 .. v23}, Lkotlin/text/r;->t0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/o;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {v0, v6}, Lcom/oplus/vfxsdk/common/COEParse;->parseUniformType(Lorg/json/JSONObject;)Lcom/oplus/vfxsdk/common/u;

    move-result-object v7

    move-object/from16 v31, v15

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-float v3, v14

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_4

    :goto_4
    move-object/from16 v34, v9

    move/from16 v33, v10

    move/from16 v32, v12

    :cond_3
    :goto_5
    const/4 v1, 0x1

    goto/16 :goto_c

    :cond_4
    sget-object v6, Lcom/oplus/vfxsdk/common/COEParse;->builtinAnimLineMap:Ljava/util/Map;

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/String;

    :cond_5
    sget-object v6, Lcom/oplus/vfxsdk/common/COEParse$b;->a:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v6, v6, v14

    packed-switch v6, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/oplus/vfxsdk/common/o;

    invoke-direct {v14}, Lcom/oplus/vfxsdk/common/o;-><init>()V

    sget-object v15, Lcom/oplus/vfxsdk/common/u;->Color:Lcom/oplus/vfxsdk/common/u;

    if-ne v7, v15, :cond_6

    const-string v18, "r"

    :goto_6
    move/from16 v32, v12

    move-object/from16 v12, v18

    goto :goto_7

    :cond_6
    const-string v18, "x"

    goto :goto_6

    :goto_7
    invoke-direct {v0, v2, v12, v6}, Lcom/oplus/vfxsdk/common/COEParse;->parseAnimKey(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v12

    if-eqz v12, :cond_7

    new-instance v12, Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v13}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-object/from16 v34, v9

    move/from16 v33, v10

    const/4 v10, 0x0

    new-array v9, v10, [Lcom/oplus/vfxsdk/common/r;

    invoke-interface {v6, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v25, v6

    check-cast v25, [Lcom/oplus/vfxsdk/common/r;

    const/16 v23, 0x0

    move-object/from16 v18, v12

    move-object/from16 v19, v1

    move-object/from16 v20, v13

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move/from16 v24, v3

    move-object/from16 v26, v14

    invoke-direct/range {v18 .. v26}, Lcom/oplus/vfxsdk/common/AnimLine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;IF[Lcom/oplus/vfxsdk/common/r;Lcom/oplus/vfxsdk/common/o;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_7
    move-object/from16 v34, v9

    move/from16 v33, v10

    :goto_8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-ne v7, v15, :cond_8

    const-string v9, "g"

    goto :goto_9

    :cond_8
    const-string v9, "y"

    :goto_9
    invoke-direct {v0, v2, v9, v6}, Lcom/oplus/vfxsdk/common/COEParse;->parseAnimKey(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v9

    if-eqz v9, :cond_9

    new-instance v9, Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v13}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v10, 0x0

    new-array v12, v10, [Lcom/oplus/vfxsdk/common/r;

    invoke-interface {v6, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v25, v6

    check-cast v25, [Lcom/oplus/vfxsdk/common/r;

    const/16 v23, 0x1

    move-object/from16 v18, v9

    move-object/from16 v19, v1

    move-object/from16 v20, v13

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move/from16 v24, v3

    move-object/from16 v26, v14

    invoke-direct/range {v18 .. v26}, Lcom/oplus/vfxsdk/common/AnimLine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;IF[Lcom/oplus/vfxsdk/common/r;Lcom/oplus/vfxsdk/common/o;)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-object v6, Lcom/oplus/vfxsdk/common/u;->Vec3:Lcom/oplus/vfxsdk/common/u;

    if-eq v7, v6, :cond_a

    sget-object v6, Lcom/oplus/vfxsdk/common/u;->Vec4:Lcom/oplus/vfxsdk/common/u;

    if-eq v7, v6, :cond_a

    if-ne v7, v15, :cond_c

    :cond_a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-ne v7, v15, :cond_b

    const-string v9, "b"

    goto :goto_a

    :cond_b
    const-string v9, "z"

    :goto_a
    invoke-direct {v0, v2, v9, v6}, Lcom/oplus/vfxsdk/common/COEParse;->parseAnimKey(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v9

    if-eqz v9, :cond_c

    new-instance v9, Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v13}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v10, 0x0

    new-array v12, v10, [Lcom/oplus/vfxsdk/common/r;

    invoke-interface {v6, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v25, v6

    check-cast v25, [Lcom/oplus/vfxsdk/common/r;

    const/16 v23, 0x2

    move-object/from16 v18, v9

    move-object/from16 v19, v1

    move-object/from16 v20, v13

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move/from16 v24, v3

    move-object/from16 v26, v14

    invoke-direct/range {v18 .. v26}, Lcom/oplus/vfxsdk/common/AnimLine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;IF[Lcom/oplus/vfxsdk/common/r;Lcom/oplus/vfxsdk/common/o;)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    sget-object v6, Lcom/oplus/vfxsdk/common/u;->Vec4:Lcom/oplus/vfxsdk/common/u;

    if-eq v7, v6, :cond_d

    if-ne v7, v15, :cond_3

    :cond_d
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-ne v7, v15, :cond_e

    const-string v9, "a"

    goto :goto_b

    :cond_e
    const-string v9, "w"

    :goto_b
    invoke-direct {v0, v2, v9, v6}, Lcom/oplus/vfxsdk/common/COEParse;->parseAnimKey(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v13}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v9, 0x0

    new-array v10, v9, [Lcom/oplus/vfxsdk/common/r;

    invoke-interface {v6, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v25, v6

    check-cast v25, [Lcom/oplus/vfxsdk/common/r;

    const/16 v23, 0x3

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    move-object/from16 v20, v13

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move/from16 v24, v3

    move-object/from16 v26, v14

    invoke-direct/range {v18 .. v26}, Lcom/oplus/vfxsdk/common/AnimLine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;IF[Lcom/oplus/vfxsdk/common/r;Lcom/oplus/vfxsdk/common/o;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_1
    move-object/from16 v34, v9

    move/from16 v33, v10

    move/from16 v32, v12

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "value"

    invoke-direct {v0, v2, v9, v6}, Lcom/oplus/vfxsdk/common/COEParse;->parseAnimKey(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)Z

    new-instance v2, Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v13}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v9, 0x0

    new-array v10, v9, [Lcom/oplus/vfxsdk/common/r;

    invoke-interface {v6, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v25, v6

    check-cast v25, [Lcom/oplus/vfxsdk/common/r;

    const/16 v26, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    move-object/from16 v20, v13

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move/from16 v24, v3

    invoke-direct/range {v18 .. v26}, Lcom/oplus/vfxsdk/common/AnimLine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;IF[Lcom/oplus/vfxsdk/common/r;Lcom/oplus/vfxsdk/common/o;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :goto_c
    add-int/2addr v4, v1

    move-object/from16 v1, p1

    move/from16 v6, v17

    move-object/from16 v13, v27

    move/from16 v14, v28

    move/from16 v7, v29

    move-object/from16 v5, v30

    move-object/from16 v15, v31

    move/from16 v12, v32

    move/from16 v10, v33

    move-object/from16 v9, v34

    goto/16 :goto_3

    :cond_f
    move-object/from16 v30, v5

    move/from16 v17, v6

    move/from16 v29, v7

    move-object/from16 v34, v9

    move/from16 v33, v10

    move/from16 v32, v12

    move-object/from16 v31, v15

    const-string v4, "eventLine"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v1, v5

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_12

    const-string v3, "event"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_12

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v4, :cond_11

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "time"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v7, v7

    const-string v8, "type"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v8, "eventType"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string v8, "action"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v8, v34

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v9, "linkIds"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    const/4 v13, 0x0

    :goto_e
    if-ge v13, v12, :cond_10

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->optInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x1

    add-int/2addr v13, v14

    goto :goto_e

    :cond_10
    const-string v9, "custom"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    new-instance v6, Lcom/oplus/vfxsdk/common/EventKey;

    invoke-static/range {v37 .. v37}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static/range {v40 .. v40}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v9, 0x0

    new-array v12, v9, [Ljava/lang/Integer;

    invoke-interface {v10, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v43, v9

    check-cast v43, [Ljava/lang/Integer;

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v35, v6

    move/from16 v36, v7

    invoke-direct/range {v35 .. v44}, Lcom/oplus/vfxsdk/common/EventKey;-><init>(FLjava/lang/String;FFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    add-int/2addr v5, v6

    move-object/from16 v34, v8

    goto :goto_d

    :cond_11
    new-instance v2, Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    sget-object v22, Lcom/oplus/vfxsdk/common/u;->Event:Lcom/oplus/vfxsdk/common/u;

    const/4 v4, 0x0

    new-array v5, v4, [Lcom/oplus/vfxsdk/common/r;

    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, [Lcom/oplus/vfxsdk/common/r;

    const/16 v26, 0x0

    const-string v20, "event"

    const-string v21, "event"

    const/16 v23, 0x0

    move-object/from16 v18, v2

    move/from16 v24, v1

    invoke-direct/range {v18 .. v26}, Lcom/oplus/vfxsdk/common/AnimLine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;IF[Lcom/oplus/vfxsdk/common/r;Lcom/oplus/vfxsdk/common/o;)V

    move-object v14, v2

    goto :goto_f

    :cond_12
    const/4 v14, 0x0

    :goto_f
    new-instance v1, Lcom/oplus/vfxsdk/common/AnimatorValue;

    invoke-static/range {v31 .. v31}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-interface {v11, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, [Lcom/oplus/vfxsdk/common/AnimLine;

    move-object v9, v1

    move/from16 v10, v33

    move-object/from16 v11, v31

    move/from16 v12, v32

    invoke-direct/range {v9 .. v14}, Lcom/oplus/vfxsdk/common/AnimatorValue;-><init>(ILjava/lang/String;F[Lcom/oplus/vfxsdk/common/AnimLine;Lcom/oplus/vfxsdk/common/AnimLine;)V

    move-object/from16 v4, v30

    if-eqz v30, :cond_13

    move-object/from16 v3, v31

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    const/4 v1, 0x1

    :goto_10
    add-int/lit8 v7, v29, 0x1

    move-object/from16 v1, p1

    move-object v5, v4

    move/from16 v6, v17

    goto/16 :goto_1

    :cond_14
    move-object v4, v5

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final parseEffects(Lorg/json/JSONArray;ZLjava/util/HashMap;)[Lcom/oplus/vfxsdk/common/Effect;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[",
            "Lcom/oplus/vfxsdk/common/Effect;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v2, v1, [Lcom/oplus/vfxsdk/common/Effect;

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "cs"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "uniforms"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    move v9, v0

    :goto_1
    if-ge v9, v8, :cond_1

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {p0, v10, p2, p3}, Lcom/oplus/vfxsdk/common/COEParse;->parseUniform(Lorg/json/JSONObject;ZLjava/util/HashMap;)Ln8/q;

    move-result-object v10

    invoke-virtual {v10}, Ln8/q;->component1()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10}, Ln8/q;->component2()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oplus/vfxsdk/common/Uniform;

    invoke-interface {v7, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    sget-object v4, Ln8/h0;->INSTANCE:Ln8/h0;

    :cond_2
    new-instance v4, Lcom/oplus/vfxsdk/common/Effect;

    invoke-direct {v4, v6, v5, v7}, Lcom/oplus/vfxsdk/common/Effect;-><init>(ILjava/lang/String;Ljava/util/HashMap;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    :goto_2
    new-array p0, v0, [Lcom/oplus/vfxsdk/common/Effect;

    return-object p0
.end method

.method private final parseExprRecord(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "exprRecord"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lb9/d;->l(II)Lb9/c;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Lkotlin/collections/h0;

    invoke-virtual {v3}, Lkotlin/collections/h0;->a()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x1

    :goto_1
    if-ge v6, v5, :cond_1

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, p1

    :goto_2
    if-eqz v3, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lkotlin/collections/j0;->o(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/j0;->s(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, kotlin.Array<kotlin.String>>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, kotlin.Array<kotlin.String>> }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Ljava/util/HashMap;

    :cond_4
    return-object p1
.end method

.method private final parseFloatArray(Lorg/json/JSONObject;Ljava/lang/String;[F)[F
    .locals 2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p2

    invoke-static {p1, p2}, Lb9/d;->l(II)Lb9/c;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Lkotlin/collections/h0;

    invoke-virtual {p3}, Lkotlin/collections/h0;->a()I

    move-result p3

    invoke-virtual {p0, p3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-float p3, v0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/collections/o;->o0(Ljava/util/Collection;)[F

    move-result-object p3

    :cond_1
    return-object p3
.end method

.method private final parseLayer(Lorg/json/JSONObject;ZLjava/util/HashMap;I)Lcom/oplus/vfxsdk/common/Layer;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)",
            "Lcom/oplus/vfxsdk/common/Layer;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "enableBlend"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const-string v2, "enable"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    const-string v2, "blendSfactor"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    const-string v2, "blendDfactor"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    const-string v2, "enableBlendA"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "blendSfactorA"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    goto :goto_0

    :cond_0
    move/from16 v17, v15

    :goto_0
    if-eqz v2, :cond_1

    const-string v2, "blendDfactorA"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    goto :goto_1

    :cond_1
    move/from16 v18, v16

    :goto_1
    const-string v2, "id"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "type"

    const-string v4, "Node"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "name"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "order"

    move/from16 v3, p4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    invoke-direct/range {p0 .. p1}, Lcom/oplus/vfxsdk/common/COEParse;->parseTransform(Lorg/json/JSONObject;)Lcom/oplus/vfxsdk/common/TransformData;

    move-result-object v8

    const-string v2, "postProcessor"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-direct {v0, v2}, Lcom/oplus/vfxsdk/common/COEParse;->parsePostProcessor(Lorg/json/JSONArray;)[Lcom/oplus/vfxsdk/common/PostProcessorData;

    move-result-object v2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object v9, v3

    :goto_2
    const-string v2, "render"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    move/from16 v4, p2

    move-object/from16 v10, p3

    invoke-direct {v0, v2, v4, v10}, Lcom/oplus/vfxsdk/common/COEParse;->parseRenders(Lorg/json/JSONArray;ZLjava/util/HashMap;)[Lcom/oplus/vfxsdk/common/RendPass;

    move-result-object v2

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object v10, v3

    :goto_3
    const-string v2, "params"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v10}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {v0, v2, v10}, Lcom/oplus/vfxsdk/common/COEParse;->parseParams(Lorg/json/JSONObject;[Lcom/oplus/vfxsdk/common/RendPass;)Ljava/util/HashMap;

    move-result-object v2

    move-object v11, v2

    goto :goto_4

    :cond_4
    move-object v11, v3

    :goto_4
    const-string v2, "animators"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/common/COEParse;->parseAnimator(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v0

    move-object v12, v0

    goto :goto_5

    :cond_5
    move-object v12, v3

    :goto_5
    new-instance v0, Lcom/oplus/vfxsdk/common/Layer;

    invoke-static {v5}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v7}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v10}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-object v4, v0

    invoke-direct/range {v4 .. v19}, Lcom/oplus/vfxsdk/common/Layer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/TransformData;[Lcom/oplus/vfxsdk/common/PostProcessorData;[Lcom/oplus/vfxsdk/common/RendPass;Ljava/util/HashMap;Ljava/util/HashMap;ZZIIIII)V

    return-object v0
.end method

.method static synthetic parseLayer$default(Lcom/oplus/vfxsdk/common/COEParse;Lorg/json/JSONObject;ZLjava/util/HashMap;IILjava/lang/Object;)Lcom/oplus/vfxsdk/common/Layer;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/vfxsdk/common/COEParse;->parseLayer(Lorg/json/JSONObject;ZLjava/util/HashMap;I)Lcom/oplus/vfxsdk/common/Layer;

    move-result-object p0

    return-object p0
.end method

.method private final parseParams(Lorg/json/JSONObject;[Lcom/oplus/vfxsdk/common/RendPass;)Ljava/util/HashMap;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "[",
            "Lcom/oplus/vfxsdk/common/RendPass;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/oplus/vfxsdk/common/PassParams;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "COE_LOGGER"

    const-string v4, "bezier"

    if-eqz v2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    if-eqz v7, :cond_7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v11, :cond_5

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    const-string v0, "keys(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    :try_start_0
    aget-object v0, p2, v13

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/RendPass;->getUniforms()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/Uniform;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v26, v5

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v26, v5

    goto/16 :goto_7

    :cond_1
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v26, v5

    :try_start_1
    const-string v5, "delay"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    const-string v5, "duration"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v21

    const-string v5, "ipol"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/oplus/vfxsdk/common/m;->b()[F

    move-result-object v5

    invoke-direct {v1, v2, v4, v5}, Lcom/oplus/vfxsdk/common/COEParse;->parseFloatArray(Lorg/json/JSONObject;Ljava/lang/String;[F)[F

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/oplus/vfxsdk/common/m;->a([F)V

    const-string v5, "spring"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v27, v4

    :try_start_2
    invoke-static {}, Lcom/oplus/vfxsdk/common/m;->c()[F

    move-result-object v4

    invoke-direct {v1, v2, v5, v4}, Lcom/oplus/vfxsdk/common/COEParse;->parseFloatArray(Lorg/json/JSONObject;Ljava/lang/String;[F)[F

    move-result-object v25

    invoke-direct {v1, v0, v2}, Lcom/oplus/vfxsdk/common/COEParse;->parseUniformValue(Lcom/oplus/vfxsdk/common/u;Lorg/json/JSONObject;)[Ljava/lang/Object;

    move-result-object v2

    array-length v4, v2

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_5

    :cond_2
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    new-instance v4, Lcom/oplus/vfxsdk/common/UniformValue;

    invoke-static {v12}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v4

    move-object/from16 v17, v12

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    invoke-direct/range {v16 .. v25}, Lcom/oplus/vfxsdk/common/UniformValue;-><init>(Ljava/lang/String;Lcom/oplus/vfxsdk/common/u;[Ljava/lang/Object;IJLjava/lang/String;[F[F)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v27, v4

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v27, v4

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, v1, Lcom/oplus/vfxsdk/common/COEParse;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=>Error processing uniform "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, v1, Lcom/oplus/vfxsdk/common/COEParse;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=>Error parsing JSON for uniform "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_8
    move-object/from16 v2, p1

    move-object/from16 v5, v26

    move-object/from16 v4, v27

    goto/16 :goto_3

    :cond_4
    move-object/from16 v27, v4

    new-instance v0, Lcom/oplus/vfxsdk/common/PassParams;

    const/4 v2, 0x0

    new-array v4, v2, [Lcom/oplus/vfxsdk/common/UniformValue;

    invoke-interface {v14, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/oplus/vfxsdk/common/UniformValue;

    invoke-direct {v0, v4}, Lcom/oplus/vfxsdk/common/PassParams;-><init>([Lcom/oplus/vfxsdk/common/UniformValue;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p1

    move-object/from16 v4, v27

    goto/16 :goto_2

    :cond_5
    move-object/from16 v27, v4

    const/4 v2, 0x0

    if-eqz v6, :cond_6

    invoke-static {v8}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    new-array v0, v2, [Lcom/oplus/vfxsdk/common/PassParams;

    invoke-interface {v10, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object/from16 v2, p1

    move-object/from16 v4, v27

    goto/16 :goto_1

    :cond_7
    return-object v6
.end method

.method private final parsePostProcessor(Lorg/json/JSONArray;)[Lcom/oplus/vfxsdk/common/PostProcessorData;
    .locals 17

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Lcom/oplus/vfxsdk/common/PostProcessorData;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "properties"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v9, v8, [Ln8/h0;

    move v10, v2

    :goto_1
    if-ge v10, v8, :cond_1

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v11, p0

    invoke-static/range {v11 .. v16}, Lcom/oplus/vfxsdk/common/COEParse;->parseUniform$default(Lcom/oplus/vfxsdk/common/COEParse;Lorg/json/JSONObject;ZLjava/util/HashMap;ILjava/lang/Object;)Ln8/q;

    move-result-object v11

    invoke-virtual {v11}, Ln8/q;->component1()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11}, Ln8/q;->component2()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oplus/vfxsdk/common/Uniform;

    invoke-interface {v7, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Ln8/h0;->INSTANCE:Ln8/h0;

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    new-instance v5, Lcom/oplus/vfxsdk/common/PostProcessorData;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {v5, v6, v7}, Lcom/oplus/vfxsdk/common/PostProcessorData;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private final parseRender(Lorg/json/JSONObject;ZLjava/util/HashMap;I)Lcom/oplus/vfxsdk/common/RendPass;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)",
            "Lcom/oplus/vfxsdk/common/RendPass;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "vs"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "fs"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "cs"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "order"

    move/from16 v5, p4

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v4, "uniforms"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v9, "effects"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/vfxsdk/common/COEParse;->parseEffects(Lorg/json/JSONArray;ZLjava/util/HashMap;)[Lcom/oplus/vfxsdk/common/Effect;

    move-result-object v12

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v13, v10, [Lcom/oplus/vfxsdk/common/StatusAnim;

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v10, :cond_2

    invoke-virtual {v5, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v1, "name"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 p4, v5

    const-string v5, "anims"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v15

    move/from16 v16, v10

    new-array v10, v15, [Lcom/oplus/vfxsdk/common/Anim;

    move-object/from16 v17, v12

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v15, :cond_1

    move/from16 v18, v15

    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v19, v5

    const-string v5, "uniformName"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v5, "type"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v5, "beizer"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move-object/from16 v27, v11

    const-string v11, "value"

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    const-string v11, "duration"

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v25

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v15, v11, [Ljava/lang/Float;

    move/from16 v28, v8

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v11, :cond_0

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v15, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    goto :goto_2

    :cond_0
    move-object/from16 v29, v6

    move-object/from16 v30, v7

    new-instance v5, Lcom/oplus/vfxsdk/common/Anim;

    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-object/from16 v20, v5

    move-object/from16 v23, v15

    invoke-direct/range {v20 .. v26}, Lcom/oplus/vfxsdk/common/Anim;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Float;Ljava/lang/Object;J)V

    aput-object v5, v10, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v15, v18

    move-object/from16 v5, v19

    move-object/from16 v11, v27

    move/from16 v8, v28

    goto :goto_1

    :cond_1
    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move/from16 v28, v8

    move-object/from16 v27, v11

    new-instance v5, Lcom/oplus/vfxsdk/common/StatusAnim;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {v5, v1, v10}, Lcom/oplus/vfxsdk/common/StatusAnim;-><init>(Ljava/lang/String;[Lcom/oplus/vfxsdk/common/Anim;)V

    aput-object v5, v13, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, p4

    move/from16 v10, v16

    move-object/from16 v12, v17

    goto/16 :goto_0

    :cond_2
    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move/from16 v28, v8

    move-object/from16 v27, v11

    move-object/from16 v17, v12

    move-object v10, v13

    goto :goto_3

    :cond_3
    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move/from16 v28, v8

    move-object/from16 v27, v11

    move-object/from16 v17, v12

    const/4 v1, 0x0

    move-object v10, v1

    :goto_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_4

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {v0, v6, v2, v3}, Lcom/oplus/vfxsdk/common/COEParse;->parseUniform(Lorg/json/JSONObject;ZLjava/util/HashMap;)Ln8/q;

    move-result-object v6

    invoke-virtual {v6}, Ln8/q;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6}, Ln8/q;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/vfxsdk/common/Uniform;

    invoke-interface {v9, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    new-instance v0, Lcom/oplus/vfxsdk/common/RendPass;

    invoke-static/range {v29 .. v29}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static/range {v30 .. v30}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-object v5, v0

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move/from16 v8, v28

    move-object/from16 v11, v27

    move-object/from16 v12, v17

    invoke-direct/range {v5 .. v12}, Lcom/oplus/vfxsdk/common/RendPass;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;[Lcom/oplus/vfxsdk/common/StatusAnim;Ljava/lang/String;[Lcom/oplus/vfxsdk/common/Effect;)V

    return-object v0
.end method

.method static synthetic parseRender$default(Lcom/oplus/vfxsdk/common/COEParse;Lorg/json/JSONObject;ZLjava/util/HashMap;IILjava/lang/Object;)Lcom/oplus/vfxsdk/common/RendPass;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/vfxsdk/common/COEParse;->parseRender(Lorg/json/JSONObject;ZLjava/util/HashMap;I)Lcom/oplus/vfxsdk/common/RendPass;

    move-result-object p0

    return-object p0
.end method

.method private final parseRenders(Lorg/json/JSONArray;ZLjava/util/HashMap;)[Lcom/oplus/vfxsdk/common/RendPass;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[",
            "Lcom/oplus/vfxsdk/common/RendPass;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Lcom/oplus/vfxsdk/common/RendPass;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v4, p2, p3, v3}, Lcom/oplus/vfxsdk/common/COEParse;->parseRender(Lorg/json/JSONObject;ZLjava/util/HashMap;I)Lcom/oplus/vfxsdk/common/RendPass;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private final parseTransform(Lorg/json/JSONObject;)Lcom/oplus/vfxsdk/common/TransformData;
    .locals 9

    const-string p0, "layout"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-static {v2, v3}, Lb9/d;->l(II)Lb9/c;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Lkotlin/collections/h0;

    invoke-virtual {v5}, Lkotlin/collections/h0;->a()I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v2, [Ljava/lang/Float;

    invoke-interface {v4, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Float;

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    const-string v3, "layout_expr"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-static {v2, v4}, Lb9/d;->l(II)Lb9/c;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v0}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    check-cast v6, Lkotlin/collections/h0;

    invoke-virtual {v6}, Lkotlin/collections/h0;->a()I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v3, v1

    :goto_3
    const-string v4, "scale"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-static {v2, v5}, Lb9/d;->l(II)Lb9/c;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v0}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v5

    check-cast v7, Lkotlin/collections/h0;

    invoke-virtual {v7}, Lkotlin/collections/h0;->a()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    new-array v4, v2, [Ljava/lang/Float;

    invoke-interface {v6, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Float;

    goto :goto_5

    :cond_5
    move-object v4, v1

    :goto_5
    const-string v5, "rotate"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-static {v2, v5}, Lb9/d;->l(II)Lb9/c;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v0}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v5, v0

    check-cast v5, Lkotlin/collections/h0;

    invoke-virtual {v5}, Lkotlin/collections/h0;->a()I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v7

    double-to-float v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    new-array p1, v2, [Ljava/lang/Float;

    invoke-interface {v6, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Float;

    goto :goto_7

    :cond_7
    move-object p1, v1

    :goto_7
    if-eqz p0, :cond_8

    if-eqz v4, :cond_8

    if-eqz p1, :cond_8

    new-instance v0, Lcom/oplus/vfxsdk/common/TransformData;

    invoke-direct {v0, p0, v3, v4, p1}, Lcom/oplus/vfxsdk/common/TransformData;-><init>([Ljava/lang/Float;[Ljava/lang/String;[Ljava/lang/Float;[Ljava/lang/Float;)V

    return-object v0

    :cond_8
    return-object v1
.end method

.method private final parseUniform(Lorg/json/JSONObject;ZLjava/util/HashMap;)Ln8/q;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ln8/q;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct/range {p0 .. p1}, Lcom/oplus/vfxsdk/common/COEParse;->getId(Lorg/json/JSONObject;)I

    move-result v2

    const-string v3, "uniformName"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {p0 .. p1}, Lcom/oplus/vfxsdk/common/COEParse;->parseUniformType(Lorg/json/JSONObject;)Lcom/oplus/vfxsdk/common/u;

    move-result-object v3

    const-string v4, "w"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "width"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    :cond_0
    const-string v6, "h"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "height"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    :cond_1
    const-string v7, "x"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v8, v8

    const-string v9, "y"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v10, v10

    const-string v11, "z"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v12, v12

    move v15, v12

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v12, v12

    const-string v13, "format"

    move/from16 v16, v8

    const/4 v8, 0x0

    invoke-virtual {v0, v13, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    const-string v13, "flip"

    const/4 v8, 0x1

    invoke-virtual {v0, v13, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    const-string v13, "wrapMode"

    const/16 v8, 0x2901

    invoke-virtual {v0, v13, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v13, "mediaType"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v13, "colorMode"

    move/from16 v22, v10

    const v10, 0x8058

    invoke-virtual {v0, v13, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    sget-object v13, Lcom/oplus/vfxsdk/common/COEParse$b;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aget v13, v13, v23

    move/from16 v23, v12

    const-string v12, "value"

    move/from16 v24, v15

    const/4 v15, 0x1

    if-eq v13, v15, :cond_7

    const/4 v15, 0x4

    if-eq v13, v15, :cond_6

    const/16 v4, 0x8

    const/16 v7, 0x9

    if-eq v13, v4, :cond_4

    if-eq v13, v7, :cond_3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    move-object v4, v0

    :cond_2
    move/from16 v7, v16

    goto/16 :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v4, v7, v9, v1}, [Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/i;->V([Ljava/lang/Float;)[F

    move-result-object v1

    move-object/from16 v4, p0

    invoke-direct {v4, v0, v12, v1}, Lcom/oplus/vfxsdk/common/COEParse;->parseFloatArray(Lorg/json/JSONObject;Ljava/lang/String;[F)[F

    move-result-object v0

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    const-string v9, "url://id/"

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v0, v9, v11, v12, v4}, Lkotlin/text/r;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_2

    if-eqz v1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v1, v12

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v7, v12

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-float v9, v11

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-float v0, v11

    new-array v4, v15, [Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v4, v13

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v4, v12

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v4, v12

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v4, v12

    move/from16 v23, v0

    move/from16 v22, v7

    move/from16 v24, v9

    move v7, v1

    goto :goto_1

    :cond_7
    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :goto_1
    sget-object v0, Lcom/oplus/vfxsdk/common/u;->FBO:Lcom/oplus/vfxsdk/common/u;

    if-ne v3, v0, :cond_9

    const/16 v0, 0x64

    if-nez v5, :cond_8

    move v5, v0

    :cond_8
    if-nez v6, :cond_9

    move v6, v0

    :cond_9
    move v9, v5

    move v11, v6

    new-instance v12, Lcom/oplus/vfxsdk/common/Uniform;

    move-object v0, v12

    invoke-static {v14}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x4000

    const/16 v18, 0x0

    const/4 v15, 0x0

    move v1, v2

    move-object v2, v14

    move v5, v7

    move/from16 v6, v22

    move/from16 v7, v24

    move/from16 v8, v23

    move v10, v11

    move/from16 v11, v19

    move-object/from16 v25, v12

    move/from16 v12, v20

    move-object/from16 v26, v14

    move-object/from16 v14, v21

    invoke-direct/range {v0 .. v18}, Lcom/oplus/vfxsdk/common/Uniform;-><init>(ILjava/lang/String;Lcom/oplus/vfxsdk/common/u;Ljava/lang/Object;FFFFIIIZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Ln8/q;

    move-object/from16 v2, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic parseUniform$default(Lcom/oplus/vfxsdk/common/COEParse;Lorg/json/JSONObject;ZLjava/util/HashMap;ILjava/lang/Object;)Ln8/q;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/common/COEParse;->parseUniform(Lorg/json/JSONObject;ZLjava/util/HashMap;)Ln8/q;

    move-result-object p0

    return-object p0
.end method

.method private final parseUniformType(Lorg/json/JSONObject;)Lcom/oplus/vfxsdk/common/u;
    .locals 6

    const-string p0, "type"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "optString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/vfxsdk/common/u;->values()[Lcom/oplus/vfxsdk/common/u;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    sget-object v3, Lcom/oplus/vfxsdk/common/u;->Float:Lcom/oplus/vfxsdk/common/u;

    :cond_2
    return-object v3
.end method

.method private final parseUniformValue(Lcom/oplus/vfxsdk/common/u;Lorg/json/JSONObject;)[Ljava/lang/Object;
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/oplus/vfxsdk/common/COEParse$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    :goto_0
    const/4 p1, 0x4

    const/4 v0, 0x3

    const-string v1, "value"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_0

    new-array p0, v4, [Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    double-to-float p2, v5

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float p2, v4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float p2, v3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-float p0, v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v0

    :goto_1
    move-object p0, p1

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-float p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-float p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v2

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-float p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v3

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    double-to-float p2, v5

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float p2, v4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float p2, v3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-float p0, v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p0

    double-to-float p0, p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v4

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v4

    goto/16 :goto_1

    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getTAG()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/COEParse;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public final parse([BZ)Lcom/oplus/vfxsdk/common/COEData;
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v4, "contentBytes"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "parseProtocl"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    if-eqz v2, :cond_4

    new-instance v10, Ljava/util/zip/ZipInputStream;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v10, v11}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    :try_start_0
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "data"

    invoke-static {v13, v12}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0x5000

    new-array v11, v11, [B

    :goto_1
    invoke-virtual {v10, v11}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_0

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v14, "UTF_8"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v11, v8, v12, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :cond_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "toString(...)"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "this as java.lang.String).substring(startIndex)"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    const-string v11, "decode(...)"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lkotlin/text/r;->s([B)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_1
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v13

    long-to-int v13, v13

    if-eqz v13, :cond_2

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v13

    long-to-int v11, v13

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-static {v10}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-static {v12}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v11}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v6, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    :cond_3
    sget-object v11, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v7}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v10, v1}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_4
    :goto_4
    new-instance v10, Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    new-instance v9, Ljava/lang/String;

    sget-object v11, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v1, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_5
    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "name"

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "v"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v29

    const-string v11, "mV"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v30

    const-string v11, "cT"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v31

    const-string v11, "coeV"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v33

    invoke-direct {v0, v10}, Lcom/oplus/vfxsdk/common/COEParse;->parseTransform(Lorg/json/JSONObject;)Lcom/oplus/vfxsdk/common/TransformData;

    move-result-object v35

    const-string v11, "postProcessor"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    const-string v11, "render"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    const-string v11, "params"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v11, "animators"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-direct {v0, v10}, Lcom/oplus/vfxsdk/common/COEParse;->parseExprRecord(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v11

    const-string v7, "layers"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v13, :cond_6

    const/4 v10, 0x0

    const/16 v16, 0x1

    goto :goto_6

    :cond_6
    invoke-direct {v0, v12}, Lcom/oplus/vfxsdk/common/COEParse;->parseAnimator(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v10

    move/from16 v16, v8

    :goto_6
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v17

    add-int v16, v16, v17

    :cond_7
    move/from16 v8, v16

    new-array v3, v8, [Lcom/oplus/vfxsdk/common/Layer;

    move-object/from16 v36, v10

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v8, :cond_a

    if-nez v10, :cond_9

    if-eqz v13, :cond_9

    if-eqz v15, :cond_8

    invoke-direct {v0, v15}, Lcom/oplus/vfxsdk/common/COEParse;->parsePostProcessor(Lorg/json/JSONArray;)[Lcom/oplus/vfxsdk/common/PostProcessorData;

    move-result-object v16

    move/from16 v37, v8

    goto :goto_8

    :cond_8
    move/from16 v37, v8

    const/16 v16, 0x0

    :goto_8
    invoke-direct {v0, v13, v2, v6}, Lcom/oplus/vfxsdk/common/COEParse;->parseRenders(Lorg/json/JSONArray;ZLjava/util/HashMap;)[Lcom/oplus/vfxsdk/common/RendPass;

    move-result-object v8

    move-object/from16 v17, v8

    invoke-direct {v0, v14, v8}, Lcom/oplus/vfxsdk/common/COEParse;->parseParams(Lorg/json/JSONObject;[Lcom/oplus/vfxsdk/common/RendPass;)Ljava/util/HashMap;

    move-result-object v18

    invoke-direct {v0, v12}, Lcom/oplus/vfxsdk/common/COEParse;->parseAnimator(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v19

    new-instance v8, Lcom/oplus/vfxsdk/common/Layer;

    move-object/from16 v38, v11

    move-object v11, v8

    invoke-static {v9}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/16 v27, 0x7e00

    const/16 v28, 0x0

    const-string v20, ""

    move-object/from16 v39, v12

    move-object/from16 v12, v20

    const-string v20, "Node"

    move-object/from16 v40, v14

    move-object/from16 v14, v20

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v41, v13

    move-object v13, v9

    move-object/from16 v42, v15

    move-object/from16 v15, v35

    invoke-direct/range {v11 .. v28}, Lcom/oplus/vfxsdk/common/Layer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/TransformData;[Lcom/oplus/vfxsdk/common/PostProcessorData;[Lcom/oplus/vfxsdk/common/RendPass;Ljava/util/HashMap;Ljava/util/HashMap;ZZIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v11, 0x1

    goto :goto_9

    :cond_9
    move/from16 v37, v8

    move-object/from16 v38, v11

    move-object/from16 v39, v12

    move-object/from16 v41, v13

    move-object/from16 v40, v14

    move-object/from16 v42, v15

    invoke-static {v7}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v11, "getJSONObject(...)"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x1

    add-int/lit8 v12, v1, 0x1

    invoke-direct {v0, v8, v2, v6, v1}, Lcom/oplus/vfxsdk/common/COEParse;->parseLayer(Lorg/json/JSONObject;ZLjava/util/HashMap;I)Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v8

    move v1, v12

    :goto_9
    aput-object v8, v3, v10

    add-int/2addr v10, v11

    move/from16 v8, v37

    move-object/from16 v11, v38

    move-object/from16 v12, v39

    move-object/from16 v14, v40

    move-object/from16 v13, v41

    move-object/from16 v15, v42

    goto/16 :goto_7

    :cond_a
    move-object/from16 v38, v11

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    iget-object v0, v0, Lcom/oplus/vfxsdk/common/COEParse;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=>parse time: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COE_LOGGER"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lf8/e;->a:Lf8/e$a;

    invoke-static {v9}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v9}, Lf8/e$a;->b(Ljava/lang/String;)Lf8/c;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, v9}, Lf8/c;->e(Ljava/lang/String;)V

    move-object/from16 v1, p1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lf8/c;->f(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lf8/c;->k(I)V

    :cond_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v0, Lcom/oplus/vfxsdk/common/COEData;

    new-instance v1, Lcom/oplus/vfxsdk/common/k;

    move-object/from16 v2, v38

    invoke-direct {v1, v2}, Lcom/oplus/vfxsdk/common/k;-><init>(Ljava/util/HashMap;)V

    move-object v11, v0

    move-object v12, v9

    move/from16 v13, v29

    move/from16 v14, v30

    move-wide/from16 v15, v31

    move-wide/from16 v17, v33

    move-object/from16 v19, v3

    move-object/from16 v20, v1

    move-object/from16 v21, v36

    invoke-direct/range {v11 .. v21}, Lcom/oplus/vfxsdk/common/COEData;-><init>(Ljava/lang/String;IIJJ[Lcom/oplus/vfxsdk/common/Layer;Lcom/oplus/vfxsdk/common/k;Ljava/util/HashMap;)V

    return-object v0
.end method
