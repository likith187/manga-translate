.class public Lp/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lo/f;

.field private b:Z

.field private c:Z

.field private d:Lo/f;

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/util/ArrayList;

.field private g:Lp/b$b;

.field private h:Lp/b$a;

.field i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lo/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp/e;->b:Z

    iput-boolean v0, p0, Lp/e;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp/e;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp/e;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lp/e;->g:Lp/b$b;

    new-instance v0, Lp/b$a;

    invoke-direct {v0}, Lp/b$a;-><init>()V

    iput-object v0, p0, Lp/e;->h:Lp/b$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp/e;->i:Ljava/util/ArrayList;

    iput-object p1, p0, Lp/e;->a:Lo/f;

    iput-object p1, p0, Lp/e;->d:Lo/f;

    return-void
.end method

.method private a(Lp/f;IILp/f;Ljava/util/ArrayList;Lp/m;)V
    .locals 8

    iget-object p1, p1, Lp/f;->d:Lp/p;

    iget-object v0, p1, Lp/p;->c:Lp/m;

    if-nez v0, :cond_c

    iget-object v0, p0, Lp/e;->a:Lo/f;

    iget-object v1, v0, Lo/e;->e:Lp/l;

    if-eq p1, v1, :cond_c

    iget-object v0, v0, Lo/e;->f:Lp/n;

    if-ne p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p6, :cond_1

    new-instance p6, Lp/m;

    invoke-direct {p6, p1, p3}, Lp/m;-><init>(Lp/p;I)V

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object p6, p1, Lp/p;->c:Lp/m;

    invoke-virtual {p6, p1}, Lp/m;->a(Lp/p;)V

    iget-object p3, p1, Lp/p;->h:Lp/f;

    iget-object p3, p3, Lp/f;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    instance-of v1, v0, Lp/f;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lp/f;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lp/e;->a(Lp/f;IILp/f;Ljava/util/ArrayList;Lp/m;)V

    goto :goto_0

    :cond_3
    iget-object p3, p1, Lp/p;->i:Lp/f;

    iget-object p3, p3, Lp/f;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    instance-of v1, v0, Lp/f;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lp/f;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lp/e;->a(Lp/f;IILp/f;Ljava/util/ArrayList;Lp/m;)V

    goto :goto_1

    :cond_5
    const/4 p3, 0x1

    if-ne p2, p3, :cond_7

    instance-of v0, p1, Lp/n;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lp/n;

    iget-object v0, v0, Lp/n;->k:Lp/f;

    iget-object v0, v0, Lp/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    instance-of v1, v0, Lp/f;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lp/f;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lp/e;->a(Lp/f;IILp/f;Ljava/util/ArrayList;Lp/m;)V

    goto :goto_2

    :cond_7
    iget-object v0, p1, Lp/p;->h:Lp/f;

    iget-object v0, v0, Lp/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lp/f;

    if-ne v1, p4, :cond_8

    iput-boolean p3, p6, Lp/m;->b:Z

    :cond_8
    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lp/e;->a(Lp/f;IILp/f;Ljava/util/ArrayList;Lp/m;)V

    goto :goto_3

    :cond_9
    iget-object v0, p1, Lp/p;->i:Lp/f;

    iget-object v0, v0, Lp/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lp/f;

    if-ne v1, p4, :cond_a

    iput-boolean p3, p6, Lp/m;->b:Z

    :cond_a
    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lp/e;->a(Lp/f;IILp/f;Ljava/util/ArrayList;Lp/m;)V

    goto :goto_4

    :cond_b
    if-ne p2, p3, :cond_c

    instance-of p3, p1, Lp/n;

    if-eqz p3, :cond_c

    check-cast p1, Lp/n;

    iget-object p1, p1, Lp/n;->k:Lp/f;

    iget-object p1, p1, Lp/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lp/f;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lp/e;->a(Lp/f;IILp/f;Ljava/util/ArrayList;Lp/m;)V

    goto :goto_5

    :cond_c
    :goto_6
    return-void
.end method

.method private b(Lo/f;)Z
    .locals 16

    move-object/from16 v0, p1

    iget-object v1, v0, Lo/n;->V0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/e;

    iget-object v4, v2, Lo/e;->b0:[Lo/e$b;

    aget-object v5, v4, v3

    const/4 v10, 0x1

    aget-object v4, v4, v10

    invoke-virtual {v2}, Lo/e;->X()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    iput-boolean v10, v2, Lo/e;->a:Z

    goto :goto_0

    :cond_1
    iget v6, v2, Lo/e;->B:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v11

    const/4 v7, 0x2

    if-gez v6, :cond_2

    sget-object v6, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    if-ne v5, v6, :cond_2

    iput v7, v2, Lo/e;->w:I

    :cond_2
    iget v6, v2, Lo/e;->E:F

    cmpg-float v6, v6, v11

    if-gez v6, :cond_3

    sget-object v6, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    if-ne v4, v6, :cond_3

    iput v7, v2, Lo/e;->x:I

    :cond_3
    invoke-virtual {v2}, Lo/e;->x()F

    move-result v6

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    const/4 v8, 0x3

    if-lez v6, :cond_9

    sget-object v6, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    if-ne v5, v6, :cond_5

    sget-object v9, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-eq v4, v9, :cond_4

    sget-object v9, Lo/e$b;->FIXED:Lo/e$b;

    if-ne v4, v9, :cond_5

    :cond_4
    iput v8, v2, Lo/e;->w:I

    goto :goto_1

    :cond_5
    if-ne v4, v6, :cond_7

    sget-object v9, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-eq v5, v9, :cond_6

    sget-object v9, Lo/e$b;->FIXED:Lo/e$b;

    if-ne v5, v9, :cond_7

    :cond_6
    iput v8, v2, Lo/e;->x:I

    goto :goto_1

    :cond_7
    if-ne v5, v6, :cond_9

    if-ne v4, v6, :cond_9

    iget v6, v2, Lo/e;->w:I

    if-nez v6, :cond_8

    iput v8, v2, Lo/e;->w:I

    :cond_8
    iget v6, v2, Lo/e;->x:I

    if-nez v6, :cond_9

    iput v8, v2, Lo/e;->x:I

    :cond_9
    :goto_1
    sget-object v6, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    if-ne v5, v6, :cond_b

    iget v9, v2, Lo/e;->w:I

    if-ne v9, v10, :cond_b

    iget-object v9, v2, Lo/e;->Q:Lo/d;

    iget-object v9, v9, Lo/d;->f:Lo/d;

    if-eqz v9, :cond_a

    iget-object v9, v2, Lo/e;->S:Lo/d;

    iget-object v9, v9, Lo/d;->f:Lo/d;

    if-nez v9, :cond_b

    :cond_a
    sget-object v5, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    :cond_b
    move-object v9, v5

    if-ne v4, v6, :cond_d

    iget v5, v2, Lo/e;->x:I

    if-ne v5, v10, :cond_d

    iget-object v5, v2, Lo/e;->R:Lo/d;

    iget-object v5, v5, Lo/d;->f:Lo/d;

    if-eqz v5, :cond_c

    iget-object v5, v2, Lo/e;->T:Lo/d;

    iget-object v5, v5, Lo/d;->f:Lo/d;

    if-nez v5, :cond_d

    :cond_c
    sget-object v4, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    :cond_d
    move-object v12, v4

    iget-object v4, v2, Lo/e;->e:Lp/l;

    iput-object v9, v4, Lp/p;->d:Lo/e$b;

    iget v5, v2, Lo/e;->w:I

    iput v5, v4, Lp/p;->a:I

    iget-object v4, v2, Lo/e;->f:Lp/n;

    iput-object v12, v4, Lp/p;->d:Lo/e$b;

    iget v13, v2, Lo/e;->x:I

    iput v13, v4, Lp/p;->a:I

    sget-object v4, Lo/e$b;->MATCH_PARENT:Lo/e$b;

    if-eq v9, v4, :cond_e

    sget-object v14, Lo/e$b;->FIXED:Lo/e$b;

    if-eq v9, v14, :cond_e

    sget-object v14, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-ne v9, v14, :cond_f

    :cond_e
    if-eq v12, v4, :cond_23

    sget-object v14, Lo/e$b;->FIXED:Lo/e$b;

    if-eq v12, v14, :cond_23

    sget-object v14, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-ne v12, v14, :cond_f

    goto/16 :goto_3

    :cond_f
    const/high16 v14, 0x3f000000    # 0.5f

    if-ne v9, v6, :cond_17

    sget-object v15, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-eq v12, v15, :cond_10

    sget-object v11, Lo/e$b;->FIXED:Lo/e$b;

    if-ne v12, v11, :cond_17

    :cond_10
    if-ne v5, v8, :cond_12

    if-ne v12, v15, :cond_11

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v15

    move-object v8, v15

    invoke-direct/range {v4 .. v9}, Lp/e;->l(Lo/e;Lo/e$b;ILo/e$b;I)V

    :cond_11
    invoke-virtual {v2}, Lo/e;->z()I

    move-result v9

    int-to-float v3, v9

    iget v4, v2, Lo/e;->f0:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v14

    float-to-int v7, v3

    sget-object v8, Lo/e$b;->FIXED:Lo/e$b;

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v8

    invoke-direct/range {v4 .. v9}, Lp/e;->l(Lo/e;Lo/e$b;ILo/e$b;I)V

    iget-object v3, v2, Lo/e;->e:Lp/l;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->Y()I

    move-result v4

    invoke-virtual {v3, v4}, Lp/g;->d(I)V

    iget-object v3, v2, Lo/e;->f:Lp/n;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->z()I

    move-result v4

    invoke-virtual {v3, v4}, Lp/g;->d(I)V

    iput-boolean v10, v2, Lo/e;->a:Z

    goto/16 :goto_0

    :cond_12
    if-ne v5, v10, :cond_13

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v15

    move-object v8, v12

    invoke-direct/range {v4 .. v9}, Lp/e;->l(Lo/e;Lo/e$b;ILo/e$b;I)V

    iget-object v3, v2, Lo/e;->e:Lp/l;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->Y()I

    move-result v2

    iput v2, v3, Lp/g;->m:I

    goto/16 :goto_0

    :cond_13
    if-ne v5, v7, :cond_15

    iget-object v11, v0, Lo/e;->b0:[Lo/e$b;

    aget-object v11, v11, v3

    sget-object v15, Lo/e$b;->FIXED:Lo/e$b;

    if-eq v11, v15, :cond_14

    if-ne v11, v4, :cond_17

    :cond_14
    iget v3, v2, Lo/e;->B:F

    invoke-virtual/range {p1 .. p1}, Lo/e;->Y()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v14

    float-to-int v7, v3

    invoke-virtual {v2}, Lo/e;->z()I

    move-result v9

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v15

    move-object v8, v12

    invoke-direct/range {v4 .. v9}, Lp/e;->l(Lo/e;Lo/e$b;ILo/e$b;I)V

    iget-object v3, v2, Lo/e;->e:Lp/l;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->Y()I

    move-result v4

    invoke-virtual {v3, v4}, Lp/g;->d(I)V

    iget-object v3, v2, Lo/e;->f:Lp/n;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->z()I

    move-result v4

    invoke-virtual {v3, v4}, Lp/g;->d(I)V

    iput-boolean v10, v2, Lo/e;->a:Z

    goto/16 :goto_0

    :cond_15
    iget-object v11, v2, Lo/e;->Y:[Lo/d;

    aget-object v7, v11, v3

    iget-object v7, v7, Lo/d;->f:Lo/d;

    if-eqz v7, :cond_16

    aget-object v7, v11, v10

    iget-object v7, v7, Lo/d;->f:Lo/d;

    if-nez v7, :cond_17

    :cond_16
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v15

    move-object v8, v12

    invoke-direct/range {v4 .. v9}, Lp/e;->l(Lo/e;Lo/e$b;ILo/e$b;I)V

    iget-object v3, v2, Lo/e;->e:Lp/l;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->Y()I

    move-result v4

    invoke-virtual {v3, v4}, Lp/g;->d(I)V

    iget-object v3, v2, Lo/e;->f:Lp/n;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->z()I

    move-result v4

    invoke-virtual {v3, v4}, Lp/g;->d(I)V

    iput-boolean v10, v2, Lo/e;->a:Z

    goto/16 :goto_0

    :cond_17
    if-ne v12, v6, :cond_20

    sget-object v11, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-eq v9, v11, :cond_18

    sget-object v7, Lo/e$b;->FIXED:Lo/e$b;

    if-ne v9, v7, :cond_20

    :cond_18
    if-ne v13, v8, :cond_1b

    if-ne v9, v11, :cond_19

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v11

    move-object v8, v11

    invoke-direct/range {v4 .. v9}, Lp/e;->l(Lo/e;Lo/e$b;ILo/e$b;I)V

    :cond_19
    invoke-virtual {v2}, Lo/e;->Y()I

    move-result v7

    iget v3, v2, Lo/e;->f0:F

    invoke-virtual {v2}, Lo/e;->y()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1a

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    :cond_1a
    int-to-float v4, v7

    mul-float/2addr v4, v3

    add-float/2addr v4, v14

    float-to-int v9, v4

    sget-object v8, Lo/e$b;->FIXED:Lo/e$b;

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v8

    invoke-direct/range {v4 .. v9}, Lp/e;->l(Lo/e;Lo/e$b;ILo/e$b;I)V

    iget-object v3, v2, Lo/e;->e:Lp/l;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->Y()I

    move-result v4

    invoke-virtual {v3, v4}, Lp/g;->d(I)V

    iget-object v3, v2, Lo/e;->f:Lp/n;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->z()I

    move-result v4

    invoke-virtual {v3, v4}, Lp/g;->d(I)V

    iput-boolean v10, v2, Lo/e;->a:Z

    goto/16 :goto_0

    :cond_1b
    if-ne v13, v10, :cond_1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v9

    move-object v8, v11

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lp/e;->l(Lo/e;Lo/e$b;ILo/e$b;I)V

    iget-object v3, v2, Lo/e;->f:Lp/n;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->z()I

    move-result v2

    iput v2, v3, Lp/g;->m:I

    goto/16 :goto_0

    :cond_1c
    const/4 v7, 0x2

    if-ne v13, v7, :cond_1e

    iget-object v7, v0, Lo/e;->b0:[Lo/e$b;

    aget-object v7, v7, v10

    sget-object v8, Lo/e$b;->FIXED:Lo/e$b;

    if-eq v7, v8, :cond_1d

    if-ne v7, v4, :cond_20

    :cond_1d
    iget v3, v2, Lo/e;->E:F

    invoke-virtual {v2}, Lo/e;->Y()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lo/e;->z()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v14

    float-to-int v3, v3

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v9

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lp/e;->l(Lo/e;Lo/e$b;ILo/e$b;I)V

    iget-object v3, v2, Lo/e;->e:Lp/l;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->Y()I

    move-result v4

    invoke-virtual {v3, v4}, Lp/g;->d(I)V

    iget-object v3, v2, Lo/e;->f:Lp/n;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->z()I

    move-result v4

    invoke-virtual {v3, v4}, Lp/g;->d(I)V

    iput-boolean v10, v2, Lo/e;->a:Z

    goto/16 :goto_0

    :cond_1e
    iget-object v4, v2, Lo/e;->Y:[Lo/d;

    const/4 v7, 0x2

    aget-object v15, v4, v7

    iget-object v7, v15, Lo/d;->f:Lo/d;

    if-eqz v7, :cond_1f

    aget-object v4, v4, v8

    iget-object v4, v4, Lo/d;->f:Lo/d;

    if-nez v4, :cond_20

    :cond_1f
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v11

    move-object v8, v12

    invoke-direct/range {v4 .. v9}, Lp/e;->l(Lo/e;Lo/e$b;ILo/e$b;I)V

    iget-object v3, v2, Lo/e;->e:Lp/l;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->Y()I

    move-result v4

    invoke-virtual {v3, v4}, Lp/g;->d(I)V

    iget-object v3, v2, Lo/e;->f:Lp/n;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->z()I

    move-result v4

    invoke-virtual {v3, v4}, Lp/g;->d(I)V

    iput-boolean v10, v2, Lo/e;->a:Z

    goto/16 :goto_0

    :cond_20
    if-ne v9, v6, :cond_0

    if-ne v12, v6, :cond_0

    if-eq v5, v10, :cond_22

    if-ne v13, v10, :cond_21

    goto :goto_2

    :cond_21
    const/4 v4, 0x2

    if-ne v13, v4, :cond_0

    if-ne v5, v4, :cond_0

    iget-object v4, v0, Lo/e;->b0:[Lo/e$b;

    aget-object v3, v4, v3

    sget-object v8, Lo/e$b;->FIXED:Lo/e$b;

    if-ne v3, v8, :cond_0

    aget-object v3, v4, v10

    if-ne v3, v8, :cond_0

    iget v3, v2, Lo/e;->B:F

    iget v4, v2, Lo/e;->E:F

    invoke-virtual/range {p1 .. p1}, Lo/e;->Y()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    add-float/2addr v3, v14

    float-to-int v7, v3

    invoke-virtual/range {p1 .. p1}, Lo/e;->z()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v4, v3

    add-float/2addr v4, v14

    float-to-int v9, v4

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v8

    invoke-direct/range {v4 .. v9}, Lp/e;->l(Lo/e;Lo/e$b;ILo/e$b;I)V

    iget-object v3, v2, Lo/e;->e:Lp/l;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->Y()I

    move-result v4

    invoke-virtual {v3, v4}, Lp/g;->d(I)V

    iget-object v3, v2, Lo/e;->f:Lp/n;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->z()I

    move-result v4

    invoke-virtual {v3, v4}, Lp/g;->d(I)V

    iput-boolean v10, v2, Lo/e;->a:Z

    goto/16 :goto_0

    :cond_22
    :goto_2
    sget-object v8, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v8

    invoke-direct/range {v4 .. v9}, Lp/e;->l(Lo/e;Lo/e$b;ILo/e$b;I)V

    iget-object v3, v2, Lo/e;->e:Lp/l;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->Y()I

    move-result v4

    iput v4, v3, Lp/g;->m:I

    iget-object v3, v2, Lo/e;->f:Lp/n;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->z()I

    move-result v2

    iput v2, v3, Lp/g;->m:I

    goto/16 :goto_0

    :cond_23
    :goto_3
    invoke-virtual {v2}, Lo/e;->Y()I

    move-result v3

    if-ne v9, v4, :cond_24

    invoke-virtual/range {p1 .. p1}, Lo/e;->Y()I

    move-result v3

    iget-object v5, v2, Lo/e;->Q:Lo/d;

    iget v5, v5, Lo/d;->g:I

    sub-int/2addr v3, v5

    iget-object v5, v2, Lo/e;->S:Lo/d;

    iget v5, v5, Lo/d;->g:I

    sub-int/2addr v3, v5

    sget-object v5, Lo/e$b;->FIXED:Lo/e$b;

    move v7, v3

    move-object v6, v5

    goto :goto_4

    :cond_24
    move v7, v3

    move-object v6, v9

    :goto_4
    invoke-virtual {v2}, Lo/e;->z()I

    move-result v3

    if-ne v12, v4, :cond_25

    invoke-virtual/range {p1 .. p1}, Lo/e;->z()I

    move-result v3

    iget-object v4, v2, Lo/e;->R:Lo/d;

    iget v4, v4, Lo/d;->g:I

    sub-int/2addr v3, v4

    iget-object v4, v2, Lo/e;->T:Lo/d;

    iget v4, v4, Lo/d;->g:I

    sub-int/2addr v3, v4

    sget-object v4, Lo/e$b;->FIXED:Lo/e$b;

    move v9, v3

    move-object v8, v4

    goto :goto_5

    :cond_25
    move v9, v3

    move-object v8, v12

    :goto_5
    move-object/from16 v4, p0

    move-object v5, v2

    invoke-direct/range {v4 .. v9}, Lp/e;->l(Lo/e;Lo/e$b;ILo/e$b;I)V

    iget-object v3, v2, Lo/e;->e:Lp/l;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->Y()I

    move-result v4

    invoke-virtual {v3, v4}, Lp/g;->d(I)V

    iget-object v3, v2, Lo/e;->f:Lp/n;

    iget-object v3, v3, Lp/p;->e:Lp/g;

    invoke-virtual {v2}, Lo/e;->z()I

    move-result v4

    invoke-virtual {v3, v4}, Lp/g;->d(I)V

    iput-boolean v10, v2, Lo/e;->a:Z

    goto/16 :goto_0

    :cond_26
    return v3
.end method

.method private e(Lo/f;I)I
    .locals 6

    iget-object v0, p0, Lp/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lp/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp/m;

    invoke-virtual {v4, p1, p2}, Lp/m;->b(Lo/f;I)J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v1

    return p0
.end method

.method private i(Lp/p;ILjava/util/ArrayList;)V
    .locals 10

    iget-object v0, p1, Lp/p;->h:Lp/f;

    iget-object v0, v0, Lp/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/d;

    instance-of v2, v1, Lp/f;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, Lp/f;

    iget-object v7, p1, Lp/p;->i:Lp/f;

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Lp/e;->a(Lp/f;IILp/f;Ljava/util/ArrayList;Lp/m;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lp/p;

    if-eqz v2, :cond_0

    check-cast v1, Lp/p;

    iget-object v3, v1, Lp/p;->h:Lp/f;

    iget-object v6, p1, Lp/p;->i:Lp/f;

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lp/e;->a(Lp/f;IILp/f;Ljava/util/ArrayList;Lp/m;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lp/p;->i:Lp/f;

    iget-object v0, v0, Lp/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/d;

    instance-of v2, v1, Lp/f;

    if-eqz v2, :cond_4

    move-object v4, v1

    check-cast v4, Lp/f;

    iget-object v7, p1, Lp/p;->h:Lp/f;

    const/4 v9, 0x0

    const/4 v6, 0x1

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Lp/e;->a(Lp/f;IILp/f;Ljava/util/ArrayList;Lp/m;)V

    goto :goto_1

    :cond_4
    instance-of v2, v1, Lp/p;

    if-eqz v2, :cond_3

    check-cast v1, Lp/p;

    iget-object v3, v1, Lp/p;->i:Lp/f;

    iget-object v6, p1, Lp/p;->h:Lp/f;

    const/4 v8, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lp/e;->a(Lp/f;IILp/f;Ljava/util/ArrayList;Lp/m;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    check-cast p1, Lp/n;

    iget-object p1, p1, Lp/n;->k:Lp/f;

    iget-object p1, p1, Lp/f;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    instance-of v1, v0, Lp/f;

    if-eqz v1, :cond_6

    move-object v3, v0

    check-cast v3, Lp/f;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x2

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lp/e;->a(Lp/f;IILp/f;Ljava/util/ArrayList;Lp/m;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private l(Lo/e;Lo/e$b;ILo/e$b;I)V
    .locals 1

    iget-object v0, p0, Lp/e;->h:Lp/b$a;

    iput-object p2, v0, Lp/b$a;->a:Lo/e$b;

    iput-object p4, v0, Lp/b$a;->b:Lo/e$b;

    iput p3, v0, Lp/b$a;->c:I

    iput p5, v0, Lp/b$a;->d:I

    iget-object p2, p0, Lp/e;->g:Lp/b$b;

    invoke-interface {p2, p1, v0}, Lp/b$b;->b(Lo/e;Lp/b$a;)V

    iget-object p2, p0, Lp/e;->h:Lp/b$a;

    iget p2, p2, Lp/b$a;->e:I

    invoke-virtual {p1, p2}, Lo/e;->p1(I)V

    iget-object p2, p0, Lp/e;->h:Lp/b$a;

    iget p2, p2, Lp/b$a;->f:I

    invoke-virtual {p1, p2}, Lo/e;->Q0(I)V

    iget-object p2, p0, Lp/e;->h:Lp/b$a;

    iget-boolean p2, p2, Lp/b$a;->h:Z

    invoke-virtual {p1, p2}, Lo/e;->P0(Z)V

    iget-object p0, p0, Lp/e;->h:Lp/b$a;

    iget p0, p0, Lp/b$a;->g:I

    invoke-virtual {p1, p0}, Lo/e;->F0(I)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    iget-object v0, p0, Lp/e;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lp/e;->d(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lp/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput v0, Lp/m;->h:I

    iget-object v1, p0, Lp/e;->a:Lo/f;

    iget-object v1, v1, Lo/e;->e:Lp/l;

    iget-object v2, p0, Lp/e;->i:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, v2}, Lp/e;->i(Lp/p;ILjava/util/ArrayList;)V

    iget-object v1, p0, Lp/e;->a:Lo/f;

    iget-object v1, v1, Lo/e;->f:Lp/n;

    const/4 v2, 0x1

    iget-object v3, p0, Lp/e;->i:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v3}, Lp/e;->i(Lp/p;ILjava/util/ArrayList;)V

    iput-boolean v0, p0, Lp/e;->b:Z

    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 5

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lp/e;->d:Lo/f;

    iget-object v0, v0, Lo/e;->e:Lp/l;

    invoke-virtual {v0}, Lp/l;->f()V

    iget-object v0, p0, Lp/e;->d:Lo/f;

    iget-object v0, v0, Lo/e;->f:Lp/n;

    invoke-virtual {v0}, Lp/n;->f()V

    iget-object v0, p0, Lp/e;->d:Lo/f;

    iget-object v0, v0, Lo/e;->e:Lp/l;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lp/e;->d:Lo/f;

    iget-object v0, v0, Lo/e;->f:Lp/n;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lp/e;->d:Lo/f;

    iget-object v0, v0, Lo/n;->V0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/e;

    instance-of v3, v2, Lo/h;

    if-eqz v3, :cond_1

    new-instance v3, Lp/j;

    invoke-direct {v3, v2}, Lp/j;-><init>(Lo/e;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lo/e;->k0()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lo/e;->c:Lp/c;

    if-nez v3, :cond_2

    new-instance v3, Lp/c;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lp/c;-><init>(Lo/e;I)V

    iput-object v3, v2, Lo/e;->c:Lp/c;

    :cond_2
    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :cond_3
    iget-object v3, v2, Lo/e;->c:Lp/c;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lo/e;->e:Lp/l;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v2}, Lo/e;->m0()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v2, Lo/e;->d:Lp/c;

    if-nez v3, :cond_5

    new-instance v3, Lp/c;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lp/c;-><init>(Lo/e;I)V

    iput-object v3, v2, Lo/e;->d:Lp/c;

    :cond_5
    if-nez v1, :cond_6

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :cond_6
    iget-object v3, v2, Lo/e;->d:Lp/c;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v3, v2, Lo/e;->f:Lp/n;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    instance-of v3, v2, Lo/j;

    if-eqz v3, :cond_0

    new-instance v3, Lp/k;

    invoke-direct {v3, v2}, Lp/k;-><init>(Lo/e;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/p;

    invoke-virtual {v1}, Lp/p;->f()V

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/p;

    iget-object v1, v0, Lp/p;->b:Lo/e;

    iget-object v2, p0, Lp/e;->d:Lo/f;

    if-ne v1, v2, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Lp/p;->d()V

    goto :goto_4

    :cond_c
    return-void
.end method

.method public f(Z)Z
    .locals 9

    iget-boolean v0, p0, Lp/e;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lp/e;->c:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lp/e;->a:Lo/f;

    iget-object v0, v0, Lo/n;->V0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/e;

    invoke-virtual {v2}, Lo/e;->p()V

    iput-boolean v1, v2, Lo/e;->a:Z

    iget-object v3, v2, Lo/e;->e:Lp/l;

    invoke-virtual {v3}, Lp/l;->r()V

    iget-object v2, v2, Lo/e;->f:Lp/n;

    invoke-virtual {v2}, Lp/n;->q()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lp/e;->a:Lo/f;

    invoke-virtual {v0}, Lo/e;->p()V

    iget-object v0, p0, Lp/e;->a:Lo/f;

    iput-boolean v1, v0, Lo/e;->a:Z

    iget-object v0, v0, Lo/e;->e:Lp/l;

    invoke-virtual {v0}, Lp/l;->r()V

    iget-object v0, p0, Lp/e;->a:Lo/f;

    iget-object v0, v0, Lo/e;->f:Lp/n;

    invoke-virtual {v0}, Lp/n;->q()V

    iput-boolean v1, p0, Lp/e;->c:Z

    :cond_2
    iget-object v0, p0, Lp/e;->d:Lo/f;

    invoke-direct {p0, v0}, Lp/e;->b(Lo/f;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lp/e;->a:Lo/f;

    invoke-virtual {v0, v1}, Lo/e;->r1(I)V

    iget-object v0, p0, Lp/e;->a:Lo/f;

    invoke-virtual {v0, v1}, Lo/e;->s1(I)V

    iget-object v0, p0, Lp/e;->a:Lo/f;

    invoke-virtual {v0, v1}, Lo/e;->w(I)Lo/e$b;

    move-result-object v0

    iget-object v2, p0, Lp/e;->a:Lo/f;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lo/e;->w(I)Lo/e$b;

    move-result-object v2

    iget-boolean v4, p0, Lp/e;->b:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lp/e;->c()V

    :cond_4
    iget-object v4, p0, Lp/e;->a:Lo/f;

    invoke-virtual {v4}, Lo/e;->Z()I

    move-result v4

    iget-object v5, p0, Lp/e;->a:Lo/f;

    invoke-virtual {v5}, Lo/e;->a0()I

    move-result v5

    iget-object v6, p0, Lp/e;->a:Lo/f;

    iget-object v6, v6, Lo/e;->e:Lp/l;

    iget-object v6, v6, Lp/p;->h:Lp/f;

    invoke-virtual {v6, v4}, Lp/f;->d(I)V

    iget-object v6, p0, Lp/e;->a:Lo/f;

    iget-object v6, v6, Lo/e;->f:Lp/n;

    iget-object v6, v6, Lp/p;->h:Lp/f;

    invoke-virtual {v6, v5}, Lp/f;->d(I)V

    invoke-virtual {p0}, Lp/e;->m()V

    sget-object v6, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-eq v0, v6, :cond_5

    if-ne v2, v6, :cond_9

    :cond_5
    if-eqz p1, :cond_7

    iget-object v6, p0, Lp/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lp/p;

    invoke-virtual {v7}, Lp/p;->m()Z

    move-result v7

    if-nez v7, :cond_6

    move p1, v1

    :cond_7
    if-eqz p1, :cond_8

    sget-object v6, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-ne v0, v6, :cond_8

    iget-object v6, p0, Lp/e;->a:Lo/f;

    sget-object v7, Lo/e$b;->FIXED:Lo/e$b;

    invoke-virtual {v6, v7}, Lo/e;->U0(Lo/e$b;)V

    iget-object v6, p0, Lp/e;->a:Lo/f;

    invoke-direct {p0, v6, v1}, Lp/e;->e(Lo/f;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lo/e;->p1(I)V

    iget-object v6, p0, Lp/e;->a:Lo/f;

    iget-object v7, v6, Lo/e;->e:Lp/l;

    iget-object v7, v7, Lp/p;->e:Lp/g;

    invoke-virtual {v6}, Lo/e;->Y()I

    move-result v6

    invoke-virtual {v7, v6}, Lp/g;->d(I)V

    :cond_8
    if-eqz p1, :cond_9

    sget-object p1, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-ne v2, p1, :cond_9

    iget-object p1, p0, Lp/e;->a:Lo/f;

    sget-object v6, Lo/e$b;->FIXED:Lo/e$b;

    invoke-virtual {p1, v6}, Lo/e;->l1(Lo/e$b;)V

    iget-object p1, p0, Lp/e;->a:Lo/f;

    invoke-direct {p0, p1, v3}, Lp/e;->e(Lo/f;I)I

    move-result v6

    invoke-virtual {p1, v6}, Lo/e;->Q0(I)V

    iget-object p1, p0, Lp/e;->a:Lo/f;

    iget-object v6, p1, Lo/e;->f:Lp/n;

    iget-object v6, v6, Lp/p;->e:Lp/g;

    invoke-virtual {p1}, Lo/e;->z()I

    move-result p1

    invoke-virtual {v6, p1}, Lp/g;->d(I)V

    :cond_9
    iget-object p1, p0, Lp/e;->a:Lo/f;

    iget-object v6, p1, Lo/e;->b0:[Lo/e$b;

    aget-object v6, v6, v1

    sget-object v7, Lo/e$b;->FIXED:Lo/e$b;

    if-eq v6, v7, :cond_b

    sget-object v8, Lo/e$b;->MATCH_PARENT:Lo/e$b;

    if-ne v6, v8, :cond_a

    goto :goto_1

    :cond_a
    move p1, v1

    goto :goto_2

    :cond_b
    :goto_1
    invoke-virtual {p1}, Lo/e;->Y()I

    move-result p1

    add-int/2addr p1, v4

    iget-object v6, p0, Lp/e;->a:Lo/f;

    iget-object v6, v6, Lo/e;->e:Lp/l;

    iget-object v6, v6, Lp/p;->i:Lp/f;

    invoke-virtual {v6, p1}, Lp/f;->d(I)V

    iget-object v6, p0, Lp/e;->a:Lo/f;

    iget-object v6, v6, Lo/e;->e:Lp/l;

    iget-object v6, v6, Lp/p;->e:Lp/g;

    sub-int/2addr p1, v4

    invoke-virtual {v6, p1}, Lp/g;->d(I)V

    invoke-virtual {p0}, Lp/e;->m()V

    iget-object p1, p0, Lp/e;->a:Lo/f;

    iget-object v4, p1, Lo/e;->b0:[Lo/e$b;

    aget-object v4, v4, v3

    if-eq v4, v7, :cond_c

    sget-object v6, Lo/e$b;->MATCH_PARENT:Lo/e$b;

    if-ne v4, v6, :cond_d

    :cond_c
    invoke-virtual {p1}, Lo/e;->z()I

    move-result p1

    add-int/2addr p1, v5

    iget-object v4, p0, Lp/e;->a:Lo/f;

    iget-object v4, v4, Lo/e;->f:Lp/n;

    iget-object v4, v4, Lp/p;->i:Lp/f;

    invoke-virtual {v4, p1}, Lp/f;->d(I)V

    iget-object v4, p0, Lp/e;->a:Lo/f;

    iget-object v4, v4, Lo/e;->f:Lp/n;

    iget-object v4, v4, Lp/p;->e:Lp/g;

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Lp/g;->d(I)V

    :cond_d
    invoke-virtual {p0}, Lp/e;->m()V

    move p1, v3

    :goto_2
    iget-object v4, p0, Lp/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp/p;

    iget-object v6, v5, Lp/p;->b:Lo/e;

    iget-object v7, p0, Lp/e;->a:Lo/f;

    if-ne v6, v7, :cond_e

    iget-boolean v6, v5, Lp/p;->g:Z

    if-nez v6, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {v5}, Lp/p;->e()V

    goto :goto_3

    :cond_f
    iget-object v4, p0, Lp/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp/p;

    if-nez p1, :cond_11

    iget-object v6, v5, Lp/p;->b:Lo/e;

    iget-object v7, p0, Lp/e;->a:Lo/f;

    if-ne v6, v7, :cond_11

    goto :goto_4

    :cond_11
    iget-object v6, v5, Lp/p;->h:Lp/f;

    iget-boolean v6, v6, Lp/f;->j:Z

    if-nez v6, :cond_12

    goto :goto_5

    :cond_12
    iget-object v6, v5, Lp/p;->i:Lp/f;

    iget-boolean v6, v6, Lp/f;->j:Z

    if-nez v6, :cond_13

    instance-of v6, v5, Lp/j;

    if-nez v6, :cond_13

    goto :goto_5

    :cond_13
    iget-object v6, v5, Lp/p;->e:Lp/g;

    iget-boolean v6, v6, Lp/f;->j:Z

    if-nez v6, :cond_10

    instance-of v6, v5, Lp/c;

    if-nez v6, :cond_10

    instance-of v5, v5, Lp/j;

    if-nez v5, :cond_10

    goto :goto_5

    :cond_14
    move v1, v3

    :goto_5
    iget-object p1, p0, Lp/e;->a:Lo/f;

    invoke-virtual {p1, v0}, Lo/e;->U0(Lo/e$b;)V

    iget-object p0, p0, Lp/e;->a:Lo/f;

    invoke-virtual {p0, v2}, Lo/e;->l1(Lo/e$b;)V

    return v1
.end method

.method public g(Z)Z
    .locals 4

    iget-boolean p1, p0, Lp/e;->b:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lp/e;->a:Lo/f;

    iget-object p1, p1, Lo/n;->V0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/e;

    invoke-virtual {v1}, Lo/e;->p()V

    iput-boolean v0, v1, Lo/e;->a:Z

    iget-object v2, v1, Lo/e;->e:Lp/l;

    iget-object v3, v2, Lp/p;->e:Lp/g;

    iput-boolean v0, v3, Lp/f;->j:Z

    iput-boolean v0, v2, Lp/p;->g:Z

    invoke-virtual {v2}, Lp/l;->r()V

    iget-object v1, v1, Lo/e;->f:Lp/n;

    iget-object v2, v1, Lp/p;->e:Lp/g;

    iput-boolean v0, v2, Lp/f;->j:Z

    iput-boolean v0, v1, Lp/p;->g:Z

    invoke-virtual {v1}, Lp/n;->q()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lp/e;->a:Lo/f;

    invoke-virtual {p1}, Lo/e;->p()V

    iget-object p1, p0, Lp/e;->a:Lo/f;

    iput-boolean v0, p1, Lo/e;->a:Z

    iget-object p1, p1, Lo/e;->e:Lp/l;

    iget-object v1, p1, Lp/p;->e:Lp/g;

    iput-boolean v0, v1, Lp/f;->j:Z

    iput-boolean v0, p1, Lp/p;->g:Z

    invoke-virtual {p1}, Lp/l;->r()V

    iget-object p1, p0, Lp/e;->a:Lo/f;

    iget-object p1, p1, Lo/e;->f:Lp/n;

    iget-object v1, p1, Lp/p;->e:Lp/g;

    iput-boolean v0, v1, Lp/f;->j:Z

    iput-boolean v0, p1, Lp/p;->g:Z

    invoke-virtual {p1}, Lp/n;->q()V

    invoke-virtual {p0}, Lp/e;->c()V

    :cond_1
    iget-object p1, p0, Lp/e;->d:Lo/f;

    invoke-direct {p0, p1}, Lp/e;->b(Lo/f;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p0, Lp/e;->a:Lo/f;

    invoke-virtual {p1, v0}, Lo/e;->r1(I)V

    iget-object p1, p0, Lp/e;->a:Lo/f;

    invoke-virtual {p1, v0}, Lo/e;->s1(I)V

    iget-object p1, p0, Lp/e;->a:Lo/f;

    iget-object p1, p1, Lo/e;->e:Lp/l;

    iget-object p1, p1, Lp/p;->h:Lp/f;

    invoke-virtual {p1, v0}, Lp/f;->d(I)V

    iget-object p0, p0, Lp/e;->a:Lo/f;

    iget-object p0, p0, Lo/e;->f:Lp/n;

    iget-object p0, p0, Lp/p;->h:Lp/f;

    invoke-virtual {p0, v0}, Lp/f;->d(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public h(ZI)Z
    .locals 9

    iget-object v0, p0, Lp/e;->a:Lo/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/e;->w(I)Lo/e$b;

    move-result-object v0

    iget-object v2, p0, Lp/e;->a:Lo/f;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lo/e;->w(I)Lo/e$b;

    move-result-object v2

    iget-object v4, p0, Lp/e;->a:Lo/f;

    invoke-virtual {v4}, Lo/e;->Z()I

    move-result v4

    iget-object v5, p0, Lp/e;->a:Lo/f;

    invoke-virtual {v5}, Lo/e;->a0()I

    move-result v5

    if-eqz p1, :cond_4

    sget-object v6, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-eq v0, v6, :cond_0

    if-ne v2, v6, :cond_4

    :cond_0
    iget-object v6, p0, Lp/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lp/p;

    iget v8, v7, Lp/p;->f:I

    if-ne v8, p2, :cond_1

    invoke-virtual {v7}, Lp/p;->m()Z

    move-result v7

    if-nez v7, :cond_1

    move p1, v1

    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    sget-object p1, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-ne v0, p1, :cond_4

    iget-object p1, p0, Lp/e;->a:Lo/f;

    sget-object v6, Lo/e$b;->FIXED:Lo/e$b;

    invoke-virtual {p1, v6}, Lo/e;->U0(Lo/e$b;)V

    iget-object p1, p0, Lp/e;->a:Lo/f;

    invoke-direct {p0, p1, v1}, Lp/e;->e(Lo/f;I)I

    move-result v6

    invoke-virtual {p1, v6}, Lo/e;->p1(I)V

    iget-object p1, p0, Lp/e;->a:Lo/f;

    iget-object v6, p1, Lo/e;->e:Lp/l;

    iget-object v6, v6, Lp/p;->e:Lp/g;

    invoke-virtual {p1}, Lo/e;->Y()I

    move-result p1

    invoke-virtual {v6, p1}, Lp/g;->d(I)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    sget-object p1, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-ne v2, p1, :cond_4

    iget-object p1, p0, Lp/e;->a:Lo/f;

    sget-object v6, Lo/e$b;->FIXED:Lo/e$b;

    invoke-virtual {p1, v6}, Lo/e;->l1(Lo/e$b;)V

    iget-object p1, p0, Lp/e;->a:Lo/f;

    invoke-direct {p0, p1, v3}, Lp/e;->e(Lo/f;I)I

    move-result v6

    invoke-virtual {p1, v6}, Lo/e;->Q0(I)V

    iget-object p1, p0, Lp/e;->a:Lo/f;

    iget-object v6, p1, Lo/e;->f:Lp/n;

    iget-object v6, v6, Lp/p;->e:Lp/g;

    invoke-virtual {p1}, Lo/e;->z()I

    move-result p1

    invoke-virtual {v6, p1}, Lp/g;->d(I)V

    :cond_4
    :goto_0
    if-nez p2, :cond_6

    iget-object p1, p0, Lp/e;->a:Lo/f;

    iget-object v5, p1, Lo/e;->b0:[Lo/e$b;

    aget-object v5, v5, v1

    sget-object v6, Lo/e$b;->FIXED:Lo/e$b;

    if-eq v5, v6, :cond_5

    sget-object v6, Lo/e$b;->MATCH_PARENT:Lo/e$b;

    if-ne v5, v6, :cond_7

    :cond_5
    invoke-virtual {p1}, Lo/e;->Y()I

    move-result p1

    add-int/2addr p1, v4

    iget-object v5, p0, Lp/e;->a:Lo/f;

    iget-object v5, v5, Lo/e;->e:Lp/l;

    iget-object v5, v5, Lp/p;->i:Lp/f;

    invoke-virtual {v5, p1}, Lp/f;->d(I)V

    iget-object v5, p0, Lp/e;->a:Lo/f;

    iget-object v5, v5, Lo/e;->e:Lp/l;

    iget-object v5, v5, Lp/p;->e:Lp/g;

    sub-int/2addr p1, v4

    invoke-virtual {v5, p1}, Lp/g;->d(I)V

    :goto_1
    move p1, v3

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lp/e;->a:Lo/f;

    iget-object v4, p1, Lo/e;->b0:[Lo/e$b;

    aget-object v4, v4, v3

    sget-object v6, Lo/e$b;->FIXED:Lo/e$b;

    if-eq v4, v6, :cond_8

    sget-object v6, Lo/e$b;->MATCH_PARENT:Lo/e$b;

    if-ne v4, v6, :cond_7

    goto :goto_2

    :cond_7
    move p1, v1

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {p1}, Lo/e;->z()I

    move-result p1

    add-int/2addr p1, v5

    iget-object v4, p0, Lp/e;->a:Lo/f;

    iget-object v4, v4, Lo/e;->f:Lp/n;

    iget-object v4, v4, Lp/p;->i:Lp/f;

    invoke-virtual {v4, p1}, Lp/f;->d(I)V

    iget-object v4, p0, Lp/e;->a:Lo/f;

    iget-object v4, v4, Lo/e;->f:Lp/n;

    iget-object v4, v4, Lp/p;->e:Lp/g;

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Lp/g;->d(I)V

    goto :goto_1

    :goto_3
    invoke-virtual {p0}, Lp/e;->m()V

    iget-object v4, p0, Lp/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp/p;

    iget v6, v5, Lp/p;->f:I

    if-eq v6, p2, :cond_9

    goto :goto_4

    :cond_9
    iget-object v6, v5, Lp/p;->b:Lo/e;

    iget-object v7, p0, Lp/e;->a:Lo/f;

    if-ne v6, v7, :cond_a

    iget-boolean v6, v5, Lp/p;->g:Z

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Lp/p;->e()V

    goto :goto_4

    :cond_b
    iget-object v4, p0, Lp/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp/p;

    iget v6, v5, Lp/p;->f:I

    if-eq v6, p2, :cond_d

    goto :goto_5

    :cond_d
    if-nez p1, :cond_e

    iget-object v6, v5, Lp/p;->b:Lo/e;

    iget-object v7, p0, Lp/e;->a:Lo/f;

    if-ne v6, v7, :cond_e

    goto :goto_5

    :cond_e
    iget-object v6, v5, Lp/p;->h:Lp/f;

    iget-boolean v6, v6, Lp/f;->j:Z

    if-nez v6, :cond_f

    goto :goto_6

    :cond_f
    iget-object v6, v5, Lp/p;->i:Lp/f;

    iget-boolean v6, v6, Lp/f;->j:Z

    if-nez v6, :cond_10

    goto :goto_6

    :cond_10
    instance-of v6, v5, Lp/c;

    if-nez v6, :cond_c

    iget-object v5, v5, Lp/p;->e:Lp/g;

    iget-boolean v5, v5, Lp/f;->j:Z

    if-nez v5, :cond_c

    goto :goto_6

    :cond_11
    move v1, v3

    :goto_6
    iget-object p1, p0, Lp/e;->a:Lo/f;

    invoke-virtual {p1, v0}, Lo/e;->U0(Lo/e$b;)V

    iget-object p0, p0, Lp/e;->a:Lo/f;

    invoke-virtual {p0, v2}, Lo/e;->l1(Lo/e$b;)V

    return v1
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp/e;->b:Z

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp/e;->c:Z

    return-void
.end method

.method public m()V
    .locals 12

    iget-object v0, p0, Lp/e;->a:Lo/f;

    iget-object v0, v0, Lo/n;->V0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/e;

    iget-boolean v2, v1, Lo/e;->a:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lo/e;->b0:[Lo/e$b;

    const/4 v3, 0x0

    aget-object v8, v2, v3

    const/4 v9, 0x1

    aget-object v10, v2, v9

    iget v2, v1, Lo/e;->w:I

    iget v4, v1, Lo/e;->x:I

    sget-object v6, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-eq v8, v6, :cond_3

    sget-object v5, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    if-ne v8, v5, :cond_2

    if-ne v2, v9, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v9

    :goto_2
    if-eq v10, v6, :cond_4

    sget-object v5, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    if-ne v10, v5, :cond_5

    if-ne v4, v9, :cond_5

    :cond_4
    move v3, v9

    :cond_5
    iget-object v4, v1, Lo/e;->e:Lp/l;

    iget-object v4, v4, Lp/p;->e:Lp/g;

    iget-boolean v5, v4, Lp/f;->j:Z

    iget-object v7, v1, Lo/e;->f:Lp/n;

    iget-object v7, v7, Lp/p;->e:Lp/g;

    iget-boolean v11, v7, Lp/f;->j:Z

    if-eqz v5, :cond_6

    if-eqz v11, :cond_6

    sget-object v6, Lo/e$b;->FIXED:Lo/e$b;

    iget v5, v4, Lp/f;->g:I

    iget v7, v7, Lp/f;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v6

    invoke-direct/range {v2 .. v7}, Lp/e;->l(Lo/e;Lo/e$b;ILo/e$b;I)V

    iput-boolean v9, v1, Lo/e;->a:Z

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    sget-object v5, Lo/e$b;->FIXED:Lo/e$b;

    iget v8, v4, Lp/f;->g:I

    iget v7, v7, Lp/f;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v5

    move v5, v8

    invoke-direct/range {v2 .. v7}, Lp/e;->l(Lo/e;Lo/e$b;ILo/e$b;I)V

    sget-object v2, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    if-ne v10, v2, :cond_7

    iget-object v2, v1, Lo/e;->f:Lp/n;

    iget-object v2, v2, Lp/p;->e:Lp/g;

    invoke-virtual {v1}, Lo/e;->z()I

    move-result v3

    iput v3, v2, Lp/g;->m:I

    goto :goto_3

    :cond_7
    iget-object v2, v1, Lo/e;->f:Lp/n;

    iget-object v2, v2, Lp/p;->e:Lp/g;

    invoke-virtual {v1}, Lo/e;->z()I

    move-result v3

    invoke-virtual {v2, v3}, Lp/g;->d(I)V

    iput-boolean v9, v1, Lo/e;->a:Z

    goto :goto_3

    :cond_8
    if-eqz v11, :cond_a

    if-eqz v2, :cond_a

    iget v5, v4, Lp/f;->g:I

    sget-object v10, Lo/e$b;->FIXED:Lo/e$b;

    iget v7, v7, Lp/f;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v6

    move-object v6, v10

    invoke-direct/range {v2 .. v7}, Lp/e;->l(Lo/e;Lo/e$b;ILo/e$b;I)V

    sget-object v2, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    if-ne v8, v2, :cond_9

    iget-object v2, v1, Lo/e;->e:Lp/l;

    iget-object v2, v2, Lp/p;->e:Lp/g;

    invoke-virtual {v1}, Lo/e;->Y()I

    move-result v3

    iput v3, v2, Lp/g;->m:I

    goto :goto_3

    :cond_9
    iget-object v2, v1, Lo/e;->e:Lp/l;

    iget-object v2, v2, Lp/p;->e:Lp/g;

    invoke-virtual {v1}, Lo/e;->Y()I

    move-result v3

    invoke-virtual {v2, v3}, Lp/g;->d(I)V

    iput-boolean v9, v1, Lo/e;->a:Z

    :cond_a
    :goto_3
    iget-boolean v2, v1, Lo/e;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lo/e;->f:Lp/n;

    iget-object v2, v2, Lp/n;->l:Lp/g;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lo/e;->r()I

    move-result v1

    invoke-virtual {v2, v1}, Lp/g;->d(I)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public n(Lp/b$b;)V
    .locals 0

    iput-object p1, p0, Lp/e;->g:Lp/b$b;

    return-void
.end method
