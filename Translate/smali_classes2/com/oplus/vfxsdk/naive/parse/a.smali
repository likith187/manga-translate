.class public final Lcom/oplus/vfxsdk/naive/parse/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VFX:COEAnimator"

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/a;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/Animator;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/a;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/common/Animator;

    return-object p0
.end method

.method public b(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/HashMap;Lcom/oplus/vfxsdk/common/k;Ld8/b;)V
    .locals 21

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "layers"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "animParams"

    move-object/from16 v4, p2

    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "expressions"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "iLinkProxy"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Lcom/oplus/vfxsdk/common/Animator;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/vfxsdk/common/AnimatorValue;

    invoke-direct {v5, v6, v0, v1}, Lcom/oplus/vfxsdk/common/Animator;-><init>(Lcom/oplus/vfxsdk/common/AnimatorValue;Lcom/oplus/vfxsdk/common/k;Ld8/b;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/vfxsdk/common/AnimatorValue;

    invoke-virtual {v6}, Lcom/oplus/vfxsdk/common/AnimatorValue;->getAnimLines()[Lcom/oplus/vfxsdk/common/AnimLine;

    move-result-object v6

    array-length v7, v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_8

    aget-object v10, v6, v9

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    const-string v15, "null cannot be cast to non-null type com.oplus.vfxsdk.naive.parse.COERenderer"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-virtual {v14}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/oplus/vfxsdk/common/Layer;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10}, Lcom/oplus/vfxsdk/common/AnimLine;->getNodeId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    check-cast v12, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    if-eqz v12, :cond_2

    instance-of v11, v12, Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    if-nez v11, :cond_3

    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_3
    check-cast v12, Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-virtual {v12}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object v11

    const-string v14, "null cannot be cast to non-null type com.oplus.vfxsdk.common.AnimatorNative"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lcom/oplus/vfxsdk/common/f;

    invoke-static {}, Lcom/oplus/vfxsdk/naive/parse/b;->a()Lkotlin/text/n;

    move-result-object v14

    invoke-virtual {v10}, Lcom/oplus/vfxsdk/common/AnimLine;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lkotlin/text/n;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/l;

    move-result-object v14

    const/4 v15, 0x2

    if-eqz v14, :cond_5

    invoke-interface {v14}, Lkotlin/text/l;->b()Lkotlin/text/k;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v13, 0x3

    if-ne v8, v13, :cond_4

    invoke-interface {v14}, Lkotlin/text/l;->b()Lkotlin/text/k;

    move-result-object v8

    invoke-interface {v8, v15}, Lkotlin/text/k;->get(I)Lkotlin/text/j;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    :cond_4
    sget-object v8, Ln8/h0;->INSTANCE:Ln8/h0;

    :cond_5
    invoke-virtual {v10}, Lcom/oplus/vfxsdk/common/AnimLine;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v13, "."

    const/4 v0, 0x0

    const/4 v14, 0x0

    invoke-static {v8, v13, v14, v15, v0}, Lkotlin/text/r;->K(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v10}, Lcom/oplus/vfxsdk/common/AnimLine;->getKey()Ljava/lang/String;

    move-result-object v15

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x6

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lkotlin/text/r;->u0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-virtual {v10}, Lcom/oplus/vfxsdk/common/AnimLine;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_3
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v11}, Lcom/oplus/vfxsdk/common/f;->S()Le8/e;

    move-result-object v0

    invoke-virtual {v11}, Lcom/oplus/vfxsdk/common/f;->R()Le8/d;

    move-result-object v8

    invoke-virtual {v11, v10, v0, v8}, Lcom/oplus/vfxsdk/common/a;->b(Lcom/oplus/vfxsdk/common/AnimLine;Le8/e;Le8/d;)V

    :cond_7
    invoke-virtual {v12}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getBuiltinUpdate()Le8/e;

    move-result-object v0

    invoke-virtual {v11, v5, v10, v0}, Lcom/oplus/vfxsdk/common/f;->T(Lcom/oplus/vfxsdk/common/Animator;Lcom/oplus/vfxsdk/common/AnimLine;Le8/e;)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p3

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v5}, Lcom/oplus/vfxsdk/common/Animator;->init()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/AnimatorValue;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimatorValue;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, p0

    invoke-virtual {v4, v0, v5}, Lcom/oplus/vfxsdk/naive/parse/a;->c(Ljava/lang/String;Lcom/oplus/vfxsdk/common/Animator;)V

    move-object/from16 v0, p3

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final c(Ljava/lang/String;Lcom/oplus/vfxsdk/common/Animator;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putAnim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/a;->b:Ljava/util/HashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
