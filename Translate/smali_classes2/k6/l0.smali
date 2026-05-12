.class abstract Lk6/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/oplus/anim/parser/moshi/c$a;

.field private static final b:Lcom/oplus/anim/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v7, "hd"

    const-string v8, "d"

    const-string v0, "nm"

    const-string v1, "c"

    const-string v2, "w"

    const-string v3, "o"

    const-string v4, "lc"

    const-string v5, "lj"

    const-string v6, "ml"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lk6/l0;->a:Lcom/oplus/anim/parser/moshi/c$a;

    const-string v0, "n"

    const-string v1, "v"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lk6/l0;->b:Lcom/oplus/anim/parser/moshi/c$a;

    return-void
.end method

.method static a(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lh6/r;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v11, v3

    move v12, v4

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/c;->B()Z

    move-result v14

    if-eqz v14, :cond_8

    sget-object v14, Lk6/l0;->a:Lcom/oplus/anim/parser/moshi/c$a;

    invoke-virtual {v0, v14}, Lcom/oplus/anim/parser/moshi/c;->v0(Lcom/oplus/anim/parser/moshi/c$a;)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/c;->D0()V

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/c;->i()V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/c;->B()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/c;->k()V

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/c;->B()Z

    move-result v16

    if-eqz v16, :cond_3

    sget-object v2, Lk6/l0;->b:Lcom/oplus/anim/parser/moshi/c$a;

    invoke-virtual {v0, v2}, Lcom/oplus/anim/parser/moshi/c;->v0(Lcom/oplus/anim/parser/moshi/c$a;)I

    move-result v2

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/c;->x0()V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/c;->D0()V

    goto :goto_2

    :cond_1
    invoke-static/range {p0 .. p1}, Lk6/d;->e(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/b;

    move-result-object v15

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/c;->x()V

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :goto_3
    const/4 v2, -0x1

    goto :goto_4

    :sswitch_0
    const-string v2, "o"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x2

    goto :goto_4

    :sswitch_1
    const-string v2, "g"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_4

    :sswitch_2
    const-string v2, "d"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    move v2, v4

    :goto_4
    packed-switch v2, :pswitch_data_1

    move-object/from16 v2, p1

    goto :goto_1

    :pswitch_1
    move-object/from16 v2, p1

    move-object v6, v15

    goto :goto_1

    :pswitch_2
    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/oplus/anim/a;->u(Z)V

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/c;->v()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ne v14, v1, :cond_0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg6/b;

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/c;->D()Z

    move-result v12

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/c;->G()D

    move-result-wide v14

    double-to-float v11, v14

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v2, p1

    invoke-static {}, Lh6/r$c;->values()[Lh6/r$c;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/c;->I()I

    move-result v14

    sub-int/2addr v14, v1

    aget-object v10, v10, v14

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v2, p1

    invoke-static {}, Lh6/r$b;->values()[Lh6/r$b;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/c;->I()I

    move-result v14

    sub-int/2addr v14, v1

    aget-object v9, v9, v14

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v2, p1

    invoke-static/range {p0 .. p1}, Lk6/d;->h(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/d;

    move-result-object v13

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v2, p1

    invoke-static/range {p0 .. p1}, Lk6/d;->e(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/b;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v2, p1

    invoke-static/range {p0 .. p1}, Lk6/d;->c(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/a;

    move-result-object v7

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_8
    if-nez v13, :cond_9

    new-instance v0, Lg6/d;

    new-instance v1, Lm6/c;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lm6/c;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lg6/d;-><init>(Ljava/util/List;)V

    goto :goto_5

    :cond_9
    move-object v0, v13

    :goto_5
    new-instance v1, Lh6/r;

    move-object v2, v1

    move-object v4, v6

    move-object v6, v7

    move-object v7, v0

    invoke-direct/range {v2 .. v12}, Lh6/r;-><init>(Ljava/lang/String;Lg6/b;Ljava/util/List;Lg6/a;Lg6/d;Lg6/b;Lh6/r$b;Lh6/r$c;FZ)V

    return-object v1

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
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x67 -> :sswitch_1
        0x6f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
