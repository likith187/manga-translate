.class public Lp/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp/b$a;,
        Lp/b$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private b:Lp/b$a;

.field private c:Lo/f;


# direct methods
.method public constructor <init>(Lo/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp/b;->a:Ljava/util/ArrayList;

    new-instance v0, Lp/b$a;

    invoke-direct {v0}, Lp/b$a;-><init>()V

    iput-object v0, p0, Lp/b;->b:Lp/b$a;

    iput-object p1, p0, Lp/b;->c:Lo/f;

    return-void
.end method

.method private a(Lp/b$b;Lo/e;I)Z
    .locals 5

    iget-object v0, p0, Lp/b;->b:Lp/b$a;

    invoke-virtual {p2}, Lo/e;->C()Lo/e$b;

    move-result-object v1

    iput-object v1, v0, Lp/b$a;->a:Lo/e$b;

    iget-object v0, p0, Lp/b;->b:Lp/b$a;

    invoke-virtual {p2}, Lo/e;->V()Lo/e$b;

    move-result-object v1

    iput-object v1, v0, Lp/b$a;->b:Lo/e$b;

    iget-object v0, p0, Lp/b;->b:Lp/b$a;

    invoke-virtual {p2}, Lo/e;->Y()I

    move-result v1

    iput v1, v0, Lp/b$a;->c:I

    iget-object v0, p0, Lp/b;->b:Lp/b$a;

    invoke-virtual {p2}, Lo/e;->z()I

    move-result v1

    iput v1, v0, Lp/b$a;->d:I

    iget-object v0, p0, Lp/b;->b:Lp/b$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lp/b$a;->i:Z

    iput p3, v0, Lp/b$a;->j:I

    iget-object p3, v0, Lp/b$a;->a:Lo/e$b;

    sget-object v2, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    const/4 v3, 0x1

    if-ne p3, v2, :cond_0

    move p3, v3

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    iget-object v4, v0, Lp/b$a;->b:Lo/e$b;

    if-ne v4, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const/4 v4, 0x0

    if-eqz p3, :cond_2

    iget p3, p2, Lo/e;->f0:F

    cmpl-float p3, p3, v4

    if-lez p3, :cond_2

    move p3, v3

    goto :goto_2

    :cond_2
    move p3, v1

    :goto_2
    if-eqz v2, :cond_3

    iget v2, p2, Lo/e;->f0:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    const/4 v4, 0x4

    if-eqz p3, :cond_4

    iget-object p3, p2, Lo/e;->y:[I

    aget p3, p3, v1

    if-ne p3, v4, :cond_4

    sget-object p3, Lo/e$b;->FIXED:Lo/e$b;

    iput-object p3, v0, Lp/b$a;->a:Lo/e$b;

    :cond_4
    if-eqz v2, :cond_5

    iget-object p3, p2, Lo/e;->y:[I

    aget p3, p3, v3

    if-ne p3, v4, :cond_5

    sget-object p3, Lo/e$b;->FIXED:Lo/e$b;

    iput-object p3, v0, Lp/b$a;->b:Lo/e$b;

    :cond_5
    invoke-interface {p1, p2, v0}, Lp/b$b;->b(Lo/e;Lp/b$a;)V

    iget-object p1, p0, Lp/b;->b:Lp/b$a;

    iget p1, p1, Lp/b$a;->e:I

    invoke-virtual {p2, p1}, Lo/e;->p1(I)V

    iget-object p1, p0, Lp/b;->b:Lp/b$a;

    iget p1, p1, Lp/b$a;->f:I

    invoke-virtual {p2, p1}, Lo/e;->Q0(I)V

    iget-object p1, p0, Lp/b;->b:Lp/b$a;

    iget-boolean p1, p1, Lp/b$a;->h:Z

    invoke-virtual {p2, p1}, Lo/e;->P0(Z)V

    iget-object p1, p0, Lp/b;->b:Lp/b$a;

    iget p1, p1, Lp/b$a;->g:I

    invoke-virtual {p2, p1}, Lo/e;->F0(I)V

    iget-object p0, p0, Lp/b;->b:Lp/b$a;

    sget p1, Lp/b$a;->k:I

    iput p1, p0, Lp/b$a;->j:I

    iget-boolean p0, p0, Lp/b$a;->i:Z

    return p0
.end method

.method private b(Lo/f;)V
    .locals 12

    iget-object v0, p1, Lo/n;->V0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Lo/f;->Z1(I)Z

    move-result v1

    invoke-virtual {p1}, Lo/f;->O1()Lp/b$b;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_a

    iget-object v5, p1, Lo/n;->V0:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/e;

    instance-of v6, v5, Lo/h;

    if-eqz v6, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v6, v5, Lo/a;

    if-eqz v6, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v5}, Lo/e;->n0()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_3

    :cond_2
    if-eqz v1, :cond_3

    iget-object v6, v5, Lo/e;->e:Lp/l;

    if-eqz v6, :cond_3

    iget-object v7, v5, Lo/e;->f:Lp/n;

    if-eqz v7, :cond_3

    iget-object v6, v6, Lp/p;->e:Lp/g;

    iget-boolean v6, v6, Lp/f;->j:Z

    if-eqz v6, :cond_3

    iget-object v6, v7, Lp/p;->e:Lp/g;

    iget-boolean v6, v6, Lp/f;->j:Z

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5, v3}, Lo/e;->w(I)Lo/e$b;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lo/e;->w(I)Lo/e$b;

    move-result-object v8

    sget-object v9, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    if-ne v6, v9, :cond_4

    iget v10, v5, Lo/e;->w:I

    if-eq v10, v7, :cond_4

    if-ne v8, v9, :cond_4

    iget v10, v5, Lo/e;->x:I

    if-eq v10, v7, :cond_4

    move v10, v7

    goto :goto_1

    :cond_4
    move v10, v3

    :goto_1
    if-nez v10, :cond_8

    invoke-virtual {p1, v7}, Lo/f;->Z1(I)Z

    move-result v11

    if-eqz v11, :cond_8

    instance-of v11, v5, Lo/m;

    if-nez v11, :cond_8

    if-ne v6, v9, :cond_5

    iget v11, v5, Lo/e;->w:I

    if-nez v11, :cond_5

    if-eq v8, v9, :cond_5

    invoke-virtual {v5}, Lo/e;->k0()Z

    move-result v11

    if-nez v11, :cond_5

    move v10, v7

    :cond_5
    if-ne v8, v9, :cond_6

    iget v11, v5, Lo/e;->x:I

    if-nez v11, :cond_6

    if-eq v6, v9, :cond_6

    invoke-virtual {v5}, Lo/e;->k0()Z

    move-result v11

    if-nez v11, :cond_6

    move v10, v7

    :cond_6
    if-eq v6, v9, :cond_7

    if-ne v8, v9, :cond_8

    :cond_7
    iget v6, v5, Lo/e;->f0:F

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-lez v6, :cond_8

    goto :goto_2

    :cond_8
    move v7, v10

    :goto_2
    if-eqz v7, :cond_9

    goto :goto_3

    :cond_9
    sget v6, Lp/b$a;->k:I

    invoke-direct {p0, v2, v5, v6}, Lp/b;->a(Lp/b$b;Lo/e;I)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-interface {v2}, Lp/b$b;->a()V

    return-void
.end method

.method private c(Lo/f;Ljava/lang/String;III)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lo/e;->K()I

    move-result p2

    invoke-virtual {p1}, Lo/e;->J()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lo/e;->f1(I)V

    invoke-virtual {p1, v1}, Lo/e;->e1(I)V

    invoke-virtual {p1, p4}, Lo/e;->p1(I)V

    invoke-virtual {p1, p5}, Lo/e;->Q0(I)V

    invoke-virtual {p1, p2}, Lo/e;->f1(I)V

    invoke-virtual {p1, v0}, Lo/e;->e1(I)V

    iget-object p1, p0, Lp/b;->c:Lo/f;

    invoke-virtual {p1, p3}, Lo/f;->d2(I)V

    iget-object p0, p0, Lp/b;->c:Lo/f;

    invoke-virtual {p0}, Lo/f;->x1()V

    return-void
.end method


# virtual methods
.method public d(Lo/f;IIIIIIIII)J
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    invoke-virtual/range {p1 .. p1}, Lo/f;->O1()Lp/b$b;

    move-result-object v5

    iget-object v6, v1, Lo/n;->V0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lo/e;->Y()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lo/e;->z()I

    move-result v8

    const/16 v9, 0x80

    invoke-static {v2, v9}, Lo/k;->b(II)Z

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_1

    const/16 v12, 0x40

    invoke-static {v2, v12}, Lo/k;->b(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v10

    :goto_1
    if-eqz v2, :cond_a

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v6, :cond_a

    iget-object v13, v1, Lo/n;->V0:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lo/e;

    invoke-virtual {v13}, Lo/e;->C()Lo/e$b;

    move-result-object v14

    sget-object v15, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    if-ne v14, v15, :cond_2

    move v14, v10

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v13}, Lo/e;->V()Lo/e$b;

    move-result-object v11

    if-ne v11, v15, :cond_3

    move v11, v10

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    :goto_4
    if-eqz v14, :cond_4

    if-eqz v11, :cond_4

    invoke-virtual {v13}, Lo/e;->x()F

    move-result v11

    const/4 v14, 0x0

    cmpl-float v11, v11, v14

    if-lez v11, :cond_4

    move v11, v10

    goto :goto_5

    :cond_4
    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v13}, Lo/e;->k0()Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v11, :cond_6

    :cond_5
    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_6
    invoke-virtual {v13}, Lo/e;->m0()Z

    move-result v14

    if-eqz v14, :cond_7

    if-eqz v11, :cond_7

    goto :goto_6

    :cond_7
    instance-of v11, v13, Lo/m;

    if-eqz v11, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v13}, Lo/e;->k0()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v13}, Lo/e;->m0()Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_6

    :cond_9
    add-int/2addr v12, v10

    goto :goto_2

    :cond_a
    :goto_7
    if-eqz v2, :cond_b

    sget-boolean v11, Ll/d;->s:Z

    :cond_b
    const/high16 v11, 0x40000000    # 2.0f

    if-ne v3, v11, :cond_c

    if-eq v4, v11, :cond_d

    :cond_c
    if-eqz v9, :cond_e

    :cond_d
    move v12, v10

    goto :goto_8

    :cond_e
    const/4 v12, 0x0

    :goto_8
    and-int/2addr v2, v12

    const/4 v12, 0x2

    if-eqz v2, :cond_16

    invoke-virtual/range {p1 .. p1}, Lo/e;->I()I

    move-result v13

    move/from16 v14, p6

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lo/e;->H()I

    move-result v14

    move/from16 v15, p8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-ne v3, v11, :cond_f

    invoke-virtual/range {p1 .. p1}, Lo/e;->Y()I

    move-result v15

    if-eq v15, v13, :cond_f

    invoke-virtual {v1, v13}, Lo/e;->p1(I)V

    invoke-virtual/range {p1 .. p1}, Lo/f;->S1()V

    :cond_f
    if-ne v4, v11, :cond_10

    invoke-virtual/range {p1 .. p1}, Lo/e;->z()I

    move-result v13

    if-eq v13, v14, :cond_10

    invoke-virtual {v1, v14}, Lo/e;->Q0(I)V

    invoke-virtual/range {p1 .. p1}, Lo/f;->S1()V

    :cond_10
    if-ne v3, v11, :cond_11

    if-ne v4, v11, :cond_11

    invoke-virtual {v1, v9}, Lo/f;->K1(Z)Z

    move-result v9

    move v15, v12

    const/4 v14, 0x0

    goto :goto_a

    :cond_11
    invoke-virtual {v1, v9}, Lo/f;->L1(Z)Z

    move-result v13

    const/4 v14, 0x0

    if-ne v3, v11, :cond_12

    invoke-virtual {v1, v9, v14}, Lo/f;->M1(ZI)Z

    move-result v15

    and-int/2addr v13, v15

    move v15, v10

    goto :goto_9

    :cond_12
    move v15, v14

    :goto_9
    if-ne v4, v11, :cond_13

    invoke-virtual {v1, v9, v10}, Lo/f;->M1(ZI)Z

    move-result v9

    and-int/2addr v9, v13

    add-int/2addr v15, v10

    goto :goto_a

    :cond_13
    move v9, v13

    :goto_a
    if-eqz v9, :cond_17

    if-ne v3, v11, :cond_14

    move v3, v10

    goto :goto_b

    :cond_14
    move v3, v14

    :goto_b
    if-ne v4, v11, :cond_15

    move v4, v10

    goto :goto_c

    :cond_15
    move v4, v14

    :goto_c
    invoke-virtual {v1, v3, v4}, Lo/f;->u1(ZZ)V

    goto :goto_d

    :cond_16
    const/4 v14, 0x0

    move v9, v14

    move v15, v9

    :cond_17
    :goto_d
    if-eqz v9, :cond_18

    if-eq v15, v12, :cond_32

    :cond_18
    invoke-virtual/range {p1 .. p1}, Lo/f;->P1()I

    move-result v3

    if-lez v6, :cond_19

    invoke-direct/range {p0 .. p1}, Lp/b;->b(Lo/f;)V

    :cond_19
    invoke-virtual/range {p0 .. p1}, Lp/b;->e(Lo/f;)V

    iget-object v4, v0, Lp/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v6, :cond_1a

    const-string v6, "First pass"

    const/4 v9, 0x0

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v6

    move/from16 p5, v9

    move/from16 p6, v7

    move/from16 p7, v8

    invoke-direct/range {p2 .. p7}, Lp/b;->c(Lo/f;Ljava/lang/String;III)V

    :cond_1a
    if-lez v4, :cond_31

    invoke-virtual/range {p1 .. p1}, Lo/e;->C()Lo/e$b;

    move-result-object v6

    sget-object v9, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-ne v6, v9, :cond_1b

    move v6, v10

    goto :goto_e

    :cond_1b
    move v6, v14

    :goto_e
    invoke-virtual/range {p1 .. p1}, Lo/e;->V()Lo/e$b;

    move-result-object v11

    if-ne v11, v9, :cond_1c

    move v9, v10

    goto :goto_f

    :cond_1c
    move v9, v14

    :goto_f
    invoke-virtual/range {p1 .. p1}, Lo/e;->Y()I

    move-result v11

    iget-object v13, v0, Lp/b;->c:Lo/f;

    invoke-virtual {v13}, Lo/e;->K()I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lo/e;->z()I

    move-result v13

    iget-object v15, v0, Lp/b;->c:Lo/f;

    invoke-virtual {v15}, Lo/e;->J()I

    move-result v15

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v15, v14

    move/from16 v16, v15

    :goto_10
    if-ge v15, v4, :cond_22

    iget-object v14, v0, Lp/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/e;

    instance-of v12, v14, Lo/m;

    if-nez v12, :cond_1d

    move/from16 p8, v3

    move v1, v10

    goto :goto_12

    :cond_1d
    invoke-virtual {v14}, Lo/e;->Y()I

    move-result v12

    invoke-virtual {v14}, Lo/e;->z()I

    move-result v10

    sget v1, Lp/b$a;->l:I

    invoke-direct {v0, v5, v14, v1}, Lp/b;->a(Lp/b$b;Lo/e;I)Z

    move-result v1

    or-int v1, v16, v1

    move/from16 p2, v1

    invoke-virtual {v14}, Lo/e;->Y()I

    move-result v1

    move/from16 p8, v3

    invoke-virtual {v14}, Lo/e;->z()I

    move-result v3

    if-eq v1, v12, :cond_1f

    invoke-virtual {v14, v1}, Lo/e;->p1(I)V

    if-eqz v6, :cond_1e

    invoke-virtual {v14}, Lo/e;->O()I

    move-result v1

    if-le v1, v11, :cond_1e

    invoke-virtual {v14}, Lo/e;->O()I

    move-result v1

    sget-object v12, Lo/d$a;->RIGHT:Lo/d$a;

    invoke-virtual {v14, v12}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object v12

    invoke-virtual {v12}, Lo/d;->f()I

    move-result v12

    add-int/2addr v1, v12

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_1e
    const/4 v1, 0x1

    goto :goto_11

    :cond_1f
    move/from16 v1, p2

    :goto_11
    if-eq v3, v10, :cond_21

    invoke-virtual {v14, v3}, Lo/e;->Q0(I)V

    if-eqz v9, :cond_20

    invoke-virtual {v14}, Lo/e;->t()I

    move-result v1

    if-le v1, v13, :cond_20

    invoke-virtual {v14}, Lo/e;->t()I

    move-result v1

    sget-object v3, Lo/d$a;->BOTTOM:Lo/d$a;

    invoke-virtual {v14, v3}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object v3

    invoke-virtual {v3}, Lo/d;->f()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_20
    const/4 v1, 0x1

    :cond_21
    check-cast v14, Lo/m;

    invoke-virtual {v14}, Lo/m;->K1()Z

    move-result v3

    or-int v16, v1, v3

    const/4 v1, 0x1

    :goto_12
    add-int/2addr v15, v1

    move/from16 v3, p8

    move v10, v1

    const/4 v12, 0x2

    const/4 v14, 0x0

    move-object/from16 v1, p1

    goto/16 :goto_10

    :cond_22
    move/from16 p8, v3

    move v1, v12

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_30

    const/4 v10, 0x0

    :goto_14
    if-ge v10, v4, :cond_2f

    iget-object v12, v0, Lp/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/e;

    instance-of v14, v12, Lo/i;

    if-eqz v14, :cond_23

    instance-of v14, v12, Lo/m;

    if-eqz v14, :cond_27

    :cond_23
    instance-of v14, v12, Lo/h;

    if-eqz v14, :cond_24

    goto :goto_15

    :cond_24
    invoke-virtual {v12}, Lo/e;->X()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_25

    goto :goto_15

    :cond_25
    if-eqz v2, :cond_26

    iget-object v14, v12, Lo/e;->e:Lp/l;

    iget-object v14, v14, Lp/p;->e:Lp/g;

    iget-boolean v14, v14, Lp/f;->j:Z

    if-eqz v14, :cond_26

    iget-object v14, v12, Lo/e;->f:Lp/n;

    iget-object v14, v14, Lp/p;->e:Lp/g;

    iget-boolean v14, v14, Lp/f;->j:Z

    if-eqz v14, :cond_26

    goto :goto_15

    :cond_26
    instance-of v14, v12, Lo/m;

    if-eqz v14, :cond_28

    :cond_27
    :goto_15
    move/from16 v18, v2

    :goto_16
    const/4 v0, 0x1

    goto/16 :goto_18

    :cond_28
    invoke-virtual {v12}, Lo/e;->Y()I

    move-result v14

    invoke-virtual {v12}, Lo/e;->z()I

    move-result v15

    invoke-virtual {v12}, Lo/e;->r()I

    move-result v1

    sget v17, Lp/b$a;->l:I

    move/from16 v18, v2

    const/4 v2, 0x1

    if-ne v3, v2, :cond_29

    sget v17, Lp/b$a;->m:I

    :cond_29
    move/from16 v2, v17

    invoke-direct {v0, v5, v12, v2}, Lp/b;->a(Lp/b$b;Lo/e;I)Z

    move-result v2

    or-int v2, v16, v2

    invoke-virtual {v12}, Lo/e;->Y()I

    move-result v0

    move/from16 p2, v2

    invoke-virtual {v12}, Lo/e;->z()I

    move-result v2

    if-eq v0, v14, :cond_2b

    invoke-virtual {v12, v0}, Lo/e;->p1(I)V

    if-eqz v6, :cond_2a

    invoke-virtual {v12}, Lo/e;->O()I

    move-result v0

    if-le v0, v11, :cond_2a

    invoke-virtual {v12}, Lo/e;->O()I

    move-result v0

    sget-object v14, Lo/d$a;->RIGHT:Lo/d$a;

    invoke-virtual {v12, v14}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object v14

    invoke-virtual {v14}, Lo/d;->f()I

    move-result v14

    add-int/2addr v0, v14

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_2a
    const/4 v0, 0x1

    goto :goto_17

    :cond_2b
    move/from16 v0, p2

    :goto_17
    if-eq v2, v15, :cond_2d

    invoke-virtual {v12, v2}, Lo/e;->Q0(I)V

    if-eqz v9, :cond_2c

    invoke-virtual {v12}, Lo/e;->t()I

    move-result v0

    if-le v0, v13, :cond_2c

    invoke-virtual {v12}, Lo/e;->t()I

    move-result v0

    sget-object v2, Lo/d$a;->BOTTOM:Lo/d$a;

    invoke-virtual {v12, v2}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object v2

    invoke-virtual {v2}, Lo/d;->f()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_2c
    const/4 v0, 0x1

    :cond_2d
    invoke-virtual {v12}, Lo/e;->b0()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v12}, Lo/e;->r()I

    move-result v2

    if-eq v1, v2, :cond_2e

    const/4 v0, 0x1

    const/16 v16, 0x1

    goto :goto_18

    :cond_2e
    move/from16 v16, v0

    goto/16 :goto_16

    :goto_18
    add-int/2addr v10, v0

    const/4 v1, 0x2

    move-object/from16 v0, p0

    move/from16 v2, v18

    goto/16 :goto_14

    :cond_2f
    move/from16 v18, v2

    const/4 v0, 0x1

    if-eqz v16, :cond_30

    add-int/2addr v3, v0

    const-string v1, "intermediate pass"

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v1

    move/from16 p5, v3

    move/from16 p6, v7

    move/from16 p7, v8

    invoke-direct/range {p2 .. p7}, Lp/b;->c(Lo/f;Ljava/lang/String;III)V

    const/4 v1, 0x2

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v18

    goto/16 :goto_13

    :cond_30
    move-object/from16 v0, p1

    move/from16 v1, p8

    goto :goto_19

    :cond_31
    move-object/from16 v0, p1

    move v1, v3

    :goto_19
    invoke-virtual {v0, v1}, Lo/f;->c2(I)V

    :cond_32
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public e(Lo/f;)V
    .locals 5

    iget-object v0, p0, Lp/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lo/n;->V0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p1, Lo/n;->V0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/e;

    invoke-virtual {v2}, Lo/e;->C()Lo/e$b;

    move-result-object v3

    sget-object v4, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lo/e;->V()Lo/e$b;

    move-result-object v3

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lp/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lo/f;->S1()V

    return-void
.end method
