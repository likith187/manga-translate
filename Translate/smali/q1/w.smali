.class public abstract Lq1/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/airbnb/lottie/parser/moshi/c$a;

.field static b:Lcom/airbnb/lottie/parser/moshi/c$a;

.field private static final c:Lcom/airbnb/lottie/parser/moshi/c$a;

.field private static final d:Lcom/airbnb/lottie/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v9, "chars"

    const-string v10, "markers"

    const-string v0, "w"

    const-string v1, "h"

    const-string v2, "ip"

    const-string v3, "op"

    const-string v4, "fr"

    const-string v5, "v"

    const-string v6, "layers"

    const-string v7, "assets"

    const-string v8, "fonts"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lq1/w;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    const-string v5, "p"

    const-string v6, "u"

    const-string v1, "id"

    const-string v2, "layers"

    const-string v3, "w"

    const-string v4, "h"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lq1/w;->b:Lcom/airbnb/lottie/parser/moshi/c$a;

    const-string v0, "list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lq1/w;->c:Lcom/airbnb/lottie/parser/moshi/c$a;

    const-string v0, "tm"

    const-string v1, "dr"

    const-string v2, "cm"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lq1/w;->d:Lcom/airbnb/lottie/parser/moshi/c$a;

    return-void
.end method

.method public static a(Lcom/airbnb/lottie/parser/moshi/c;)Lcom/airbnb/lottie/j;
    .locals 24

    move-object/from16 v0, p0

    invoke-static {}, Lr1/j;->e()F

    move-result v1

    new-instance v8, Landroidx/collection/f;

    invoke-direct {v8}, Landroidx/collection/f;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Landroidx/collection/j;

    invoke-direct {v12}, Landroidx/collection/j;-><init>()V

    new-instance v15, Lcom/airbnb/lottie/j;

    invoke-direct {v15}, Lcom/airbnb/lottie/j;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/c;->k()V

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    move v6, v5

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result v16

    if-eqz v16, :cond_1

    sget-object v3, Lq1/w;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/c;->v0(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/c;->x0()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/c;->D0()V

    goto :goto_1

    :pswitch_0
    invoke-static {v0, v14}, Lq1/w;->f(Lcom/airbnb/lottie/parser/moshi/c;Ljava/util/List;)V

    goto :goto_1

    :pswitch_1
    invoke-static {v0, v15, v12}, Lq1/w;->c(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;Landroidx/collection/j;)V

    goto :goto_1

    :pswitch_2
    invoke-static {v0, v13}, Lq1/w;->d(Lcom/airbnb/lottie/parser/moshi/c;Ljava/util/Map;)V

    goto :goto_1

    :pswitch_3
    invoke-static {v0, v15, v9, v10}, Lq1/w;->b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1

    :pswitch_4
    invoke-static {v0, v15, v7, v8}, Lq1/w;->e(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;Ljava/util/List;Landroidx/collection/f;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v3

    const-string v0, "\\."

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v17, v0, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v21, 0x4

    invoke-static/range {v18 .. v23}, Lr1/j;->j(IIIIII)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Lottie only supports bodymovin >= 4.4.0"

    invoke-virtual {v15, v0}, Lcom/airbnb/lottie/j;->a(Ljava/lang/String;)V

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    goto :goto_0

    :pswitch_6
    move-object v0, v13

    move-object/from16 v17, v14

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/c;->G()D

    move-result-wide v13

    double-to-float v6, v13

    :goto_2
    move-object v13, v0

    move-object/from16 v14, v17

    goto :goto_1

    :pswitch_7
    move-object v0, v13

    move-object/from16 v17, v14

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/c;->G()D

    move-result-wide v13

    double-to-float v3, v13

    const v5, 0x3c23d70a    # 0.01f

    sub-float v5, v3, v5

    goto :goto_2

    :pswitch_8
    move-object v0, v13

    move-object/from16 v17, v14

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/c;->G()D

    move-result-wide v3

    double-to-float v4, v3

    goto :goto_1

    :pswitch_9
    move-object v0, v13

    move-object/from16 v17, v14

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/c;->I()I

    move-result v11

    goto :goto_1

    :pswitch_a
    move-object v0, v13

    move-object/from16 v17, v14

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/c;->I()I

    move-result v2

    goto :goto_1

    :cond_1
    move-object v0, v13

    move-object/from16 v17, v14

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v3, v11

    mul-float/2addr v3, v1

    float-to-int v1, v3

    new-instance v3, Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-direct {v3, v11, v11, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Lr1/j;->e()F

    move-result v11

    move-object v2, v15

    invoke-virtual/range {v2 .. v14}, Lcom/airbnb/lottie/j;->s(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/f;Ljava/util/Map;Ljava/util/Map;FLandroidx/collection/j;Ljava/util/Map;Ljava/util/List;)V

    return-object v15

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;Ljava/util/Map;Ljava/util/Map;)V
    .locals 10

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->i()V

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/collection/f;

    invoke-direct {v1}, Landroidx/collection/f;-><init>()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->k()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v6, v5

    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lq1/w;->b:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/c;->v0(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->x0()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->D0()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->I()I

    move-result v6

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->I()I

    move-result v5

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->i()V

    :goto_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0, p1}, Lq1/v;->b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lo1/e;

    move-result-object v2

    invoke-virtual {v2}, Lo1/e;->e()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Landroidx/collection/f;->i(JLjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->v()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->x()V

    if-eqz v8, :cond_8

    new-instance v0, Lcom/airbnb/lottie/j0;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/airbnb/lottie/j0;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/j0;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    invoke-interface {p2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->v()V

    return-void
.end method

.method private static c(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;Landroidx/collection/j;)V
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->i()V

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lq1/m;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Ll1/d;

    move-result-object v0

    invoke-virtual {v0}, Ll1/d;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroidx/collection/j;->h(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->v()V

    return-void
.end method

.method private static d(Lcom/airbnb/lottie/parser/moshi/c;Ljava/util/Map;)V
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->k()V

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lq1/w;->c:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/c;->v0(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->x0()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->D0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->i()V

    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lq1/n;->a(Lcom/airbnb/lottie/parser/moshi/c;)Ll1/c;

    move-result-object v0

    invoke-virtual {v0}, Ll1/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->v()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->x()V

    return-void
.end method

.method private static e(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;Ljava/util/List;Landroidx/collection/f;)V
    .locals 4

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->i()V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, p1}, Lq1/v;->b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lo1/e;

    move-result-object v1

    invoke-virtual {v1}, Lo1/e;->g()Lo1/e$a;

    move-result-object v2

    sget-object v3, Lo1/e$a;->IMAGE:Lo1/e$a;

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lo1/e;->e()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3, v1}, Landroidx/collection/f;->i(JLjava/lang/Object;)V

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr1/d;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->v()V

    return-void
.end method

.method private static f(Lcom/airbnb/lottie/parser/moshi/c;Ljava/util/List;)V
    .locals 5

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->i()V

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->k()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lq1/w;->d:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/c;->v0(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->x0()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->D0()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->G()D

    move-result-wide v3

    double-to-float v1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->G()D

    move-result-wide v3

    double-to-float v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->x()V

    new-instance v3, Ll1/h;

    invoke-direct {v3, v2, v0, v1}, Ll1/h;-><init>(Ljava/lang/String;FF)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->v()V

    return-void
.end method
