.class public Lo/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/e$b;
    }
.end annotation


# static fields
.field public static U0:F = 0.5f


# instance fields
.field public A:I

.field A0:I

.field public B:F

.field B0:I

.field public C:I

.field C0:Z

.field public D:I

.field D0:Z

.field public E:F

.field E0:Z

.field public F:Z

.field F0:Z

.field public G:Z

.field G0:Z

.field H:I

.field H0:Z

.field I:F

.field I0:Z

.field private J:[I

.field J0:I

.field public K:F

.field K0:I

.field private L:Z

.field L0:Z

.field private M:Z

.field M0:Z

.field private N:Z

.field public N0:[F

.field private O:I

.field protected O0:[Lo/e;

.field private P:I

.field protected P0:[Lo/e;

.field public Q:Lo/d;

.field Q0:Lo/e;

.field public R:Lo/d;

.field R0:Lo/e;

.field public S:Lo/d;

.field public S0:I

.field public T:Lo/d;

.field public T0:I

.field public U:Lo/d;

.field V:Lo/d;

.field W:Lo/d;

.field public X:Lo/d;

.field public Y:[Lo/d;

.field protected Z:Ljava/util/ArrayList;

.field public a:Z

.field private a0:[Z

.field public b:[Lp/p;

.field public b0:[Lo/e$b;

.field public c:Lp/c;

.field public c0:Lo/e;

.field public d:Lp/c;

.field d0:I

.field public e:Lp/l;

.field e0:I

.field public f:Lp/n;

.field public f0:F

.field public g:[Z

.field protected g0:I

.field h:Z

.field protected h0:I

.field private i:Z

.field protected i0:I

.field private j:Z

.field j0:I

.field private k:Z

.field k0:I

.field private l:I

.field protected l0:I

.field private m:I

.field protected m0:I

.field public n:Ln/a;

.field n0:I

.field public o:Ljava/lang/String;

.field protected o0:I

.field private p:Z

.field protected p0:I

.field private q:Z

.field q0:F

.field private r:Z

.field r0:F

.field private s:Z

.field private s0:Ljava/lang/Object;

.field public t:I

.field private t0:I

.field public u:I

.field private u0:I

.field private v:I

.field private v0:Z

.field public w:I

.field private w0:Ljava/lang/String;

.field public x:I

.field private x0:Ljava/lang/String;

.field public y:[I

.field y0:I

.field public z:I

.field z0:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/e;->a:Z

    const/4 v1, 0x2

    new-array v2, v1, [Lp/p;

    iput-object v2, p0, Lo/e;->b:[Lp/p;

    const/4 v2, 0x0

    iput-object v2, p0, Lo/e;->e:Lp/l;

    iput-object v2, p0, Lo/e;->f:Lp/n;

    const/4 v3, 0x1

    new-array v4, v1, [Z

    fill-array-data v4, :array_0

    iput-object v4, p0, Lo/e;->g:[Z

    iput-boolean v0, p0, Lo/e;->h:Z

    iput-boolean v3, p0, Lo/e;->i:Z

    iput-boolean v0, p0, Lo/e;->j:Z

    iput-boolean v3, p0, Lo/e;->k:Z

    const/4 v3, -0x1

    iput v3, p0, Lo/e;->l:I

    iput v3, p0, Lo/e;->m:I

    new-instance v4, Ln/a;

    invoke-direct {v4, p0}, Ln/a;-><init>(Lo/e;)V

    iput-object v4, p0, Lo/e;->n:Ln/a;

    iput-boolean v0, p0, Lo/e;->p:Z

    iput-boolean v0, p0, Lo/e;->q:Z

    iput-boolean v0, p0, Lo/e;->r:Z

    iput-boolean v0, p0, Lo/e;->s:Z

    iput v3, p0, Lo/e;->t:I

    iput v3, p0, Lo/e;->u:I

    iput v0, p0, Lo/e;->v:I

    iput v0, p0, Lo/e;->w:I

    iput v0, p0, Lo/e;->x:I

    new-array v4, v1, [I

    iput-object v4, p0, Lo/e;->y:[I

    iput v0, p0, Lo/e;->z:I

    iput v0, p0, Lo/e;->A:I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lo/e;->B:F

    iput v0, p0, Lo/e;->C:I

    iput v0, p0, Lo/e;->D:I

    iput v4, p0, Lo/e;->E:F

    iput v3, p0, Lo/e;->H:I

    iput v4, p0, Lo/e;->I:F

    const v4, 0x7fffffff

    filled-new-array {v4, v4}, [I

    move-result-object v4

    iput-object v4, p0, Lo/e;->J:[I

    const/high16 v4, 0x7fc00000    # Float.NaN

    iput v4, p0, Lo/e;->K:F

    iput-boolean v0, p0, Lo/e;->L:Z

    iput-boolean v0, p0, Lo/e;->N:Z

    iput v0, p0, Lo/e;->O:I

    iput v0, p0, Lo/e;->P:I

    new-instance v4, Lo/d;

    sget-object v5, Lo/d$a;->LEFT:Lo/d$a;

    invoke-direct {v4, p0, v5}, Lo/d;-><init>(Lo/e;Lo/d$a;)V

    iput-object v4, p0, Lo/e;->Q:Lo/d;

    new-instance v4, Lo/d;

    sget-object v5, Lo/d$a;->TOP:Lo/d$a;

    invoke-direct {v4, p0, v5}, Lo/d;-><init>(Lo/e;Lo/d$a;)V

    iput-object v4, p0, Lo/e;->R:Lo/d;

    new-instance v4, Lo/d;

    sget-object v5, Lo/d$a;->RIGHT:Lo/d$a;

    invoke-direct {v4, p0, v5}, Lo/d;-><init>(Lo/e;Lo/d$a;)V

    iput-object v4, p0, Lo/e;->S:Lo/d;

    new-instance v4, Lo/d;

    sget-object v5, Lo/d$a;->BOTTOM:Lo/d$a;

    invoke-direct {v4, p0, v5}, Lo/d;-><init>(Lo/e;Lo/d$a;)V

    iput-object v4, p0, Lo/e;->T:Lo/d;

    new-instance v4, Lo/d;

    sget-object v5, Lo/d$a;->BASELINE:Lo/d$a;

    invoke-direct {v4, p0, v5}, Lo/d;-><init>(Lo/e;Lo/d$a;)V

    iput-object v4, p0, Lo/e;->U:Lo/d;

    new-instance v4, Lo/d;

    sget-object v5, Lo/d$a;->CENTER_X:Lo/d$a;

    invoke-direct {v4, p0, v5}, Lo/d;-><init>(Lo/e;Lo/d$a;)V

    iput-object v4, p0, Lo/e;->V:Lo/d;

    new-instance v4, Lo/d;

    sget-object v5, Lo/d$a;->CENTER_Y:Lo/d$a;

    invoke-direct {v4, p0, v5}, Lo/d;-><init>(Lo/e;Lo/d$a;)V

    iput-object v4, p0, Lo/e;->W:Lo/d;

    new-instance v11, Lo/d;

    sget-object v4, Lo/d$a;->CENTER:Lo/d$a;

    invoke-direct {v11, p0, v4}, Lo/d;-><init>(Lo/e;Lo/d$a;)V

    iput-object v11, p0, Lo/e;->X:Lo/d;

    iget-object v6, p0, Lo/e;->Q:Lo/d;

    iget-object v7, p0, Lo/e;->S:Lo/d;

    iget-object v8, p0, Lo/e;->R:Lo/d;

    iget-object v9, p0, Lo/e;->T:Lo/d;

    iget-object v10, p0, Lo/e;->U:Lo/d;

    filled-new-array/range {v6 .. v11}, [Lo/d;

    move-result-object v4

    iput-object v4, p0, Lo/e;->Y:[Lo/d;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lo/e;->Z:Ljava/util/ArrayList;

    new-array v4, v1, [Z

    iput-object v4, p0, Lo/e;->a0:[Z

    sget-object v4, Lo/e$b;->FIXED:Lo/e$b;

    filled-new-array {v4, v4}, [Lo/e$b;

    move-result-object v4

    iput-object v4, p0, Lo/e;->b0:[Lo/e$b;

    iput-object v2, p0, Lo/e;->c0:Lo/e;

    iput v0, p0, Lo/e;->d0:I

    iput v0, p0, Lo/e;->e0:I

    const/4 v4, 0x0

    iput v4, p0, Lo/e;->f0:F

    iput v3, p0, Lo/e;->g0:I

    iput v0, p0, Lo/e;->h0:I

    iput v0, p0, Lo/e;->i0:I

    iput v0, p0, Lo/e;->j0:I

    iput v0, p0, Lo/e;->k0:I

    iput v0, p0, Lo/e;->l0:I

    iput v0, p0, Lo/e;->m0:I

    iput v0, p0, Lo/e;->n0:I

    sget v4, Lo/e;->U0:F

    iput v4, p0, Lo/e;->q0:F

    iput v4, p0, Lo/e;->r0:F

    iput v0, p0, Lo/e;->t0:I

    iput v0, p0, Lo/e;->u0:I

    iput-boolean v0, p0, Lo/e;->v0:Z

    iput-object v2, p0, Lo/e;->w0:Ljava/lang/String;

    iput-object v2, p0, Lo/e;->x0:Ljava/lang/String;

    iput-boolean v0, p0, Lo/e;->I0:Z

    iput v0, p0, Lo/e;->J0:I

    iput v0, p0, Lo/e;->K0:I

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lo/e;->N0:[F

    filled-new-array {v2, v2}, [Lo/e;

    move-result-object v0

    iput-object v0, p0, Lo/e;->O0:[Lo/e;

    filled-new-array {v2, v2}, [Lo/e;

    move-result-object v0

    iput-object v0, p0, Lo/e;->P0:[Lo/e;

    iput-object v2, p0, Lo/e;->Q0:Lo/e;

    iput-object v2, p0, Lo/e;->R0:Lo/e;

    iput v3, p0, Lo/e;->S0:I

    iput v3, p0, Lo/e;->T0:I

    invoke-direct {p0}, Lo/e;->d()V

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private A0(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V
    .locals 0

    cmpl-float p0, p3, p4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " :   "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ",\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private B0(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 0

    if-ne p3, p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " :   "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private C0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " :   "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private D0(Ljava/lang/StringBuilder;Ljava/lang/String;FI)V
    .locals 0

    const/4 p0, 0x0

    cmpl-float p0, p3, p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " :  ["

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "],\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private R(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFLo/e$b;F)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " :  {\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p6, Lo/e$b;->FIXED:Lo/e$b;

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    const-string p10, "      behavior"

    invoke-direct {p0, p1, p10, p2, p6}, Lo/e;->C0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "      size"

    const/4 p6, 0x0

    invoke-direct {p0, p1, p2, p3, p6}, Lo/e;->B0(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p2, "      min"

    invoke-direct {p0, p1, p2, p4, p6}, Lo/e;->B0(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p2, "      max"

    const p3, 0x7fffffff

    invoke-direct {p0, p1, p2, p5, p3}, Lo/e;->B0(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p2, "      matchMin"

    invoke-direct {p0, p1, p2, p7, p6}, Lo/e;->B0(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p2, "      matchDef"

    invoke-direct {p0, p1, p2, p8, p6}, Lo/e;->B0(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p2, "      matchPercent"

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p9, p3}, Lo/e;->A0(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    const-string p0, "    },\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private S(Ljava/lang/StringBuilder;Ljava/lang/String;Lo/d;)V
    .locals 1

    iget-object p0, p3, Lo/d;->f:Lo/d;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "    "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : [ \'"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p3, Lo/d;->f:Lo/d;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p3, Lo/d;->h:I

    const/high16 p2, -0x80000000

    if-ne p0, p2, :cond_1

    iget p0, p3, Lo/d;->g:I

    if-eqz p0, :cond_2

    :cond_1
    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Lo/d;->g:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p3, Lo/d;->h:I

    if-eq v0, p2, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lo/d;->h:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p0, " ] ,\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lo/e;->Z:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/e;->Q:Lo/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/e;->Z:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/e;->R:Lo/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/e;->Z:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/e;->S:Lo/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/e;->Z:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/e;->T:Lo/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/e;->Z:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/e;->V:Lo/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/e;->Z:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/e;->W:Lo/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/e;->Z:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/e;->X:Lo/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/e;->Z:Ljava/util/ArrayList;

    iget-object p0, p0, Lo/e;->U:Lo/d;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private h0(I)Z
    .locals 2

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lo/e;->Y:[Lo/d;

    aget-object v0, p0, p1

    iget-object v1, v0, Lo/d;->f:Lo/d;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lo/d;->f:Lo/d;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    aget-object p0, p0, p1

    iget-object p1, p0, Lo/d;->f:Lo/d;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lo/d;->f:Lo/d;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private i(Ll/d;ZZZZLl/i;Ll/i;Lo/e$b;ZLo/d;Lo/d;IIIIFZZZZZIIIIFZ)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    invoke-virtual {v10, v13}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v9

    invoke-virtual {v10, v14}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v8

    invoke-virtual/range {p10 .. p10}, Lo/d;->j()Lo/d;

    move-result-object v5

    invoke-virtual {v10, v5}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v7

    invoke-virtual/range {p11 .. p11}, Lo/d;->j()Lo/d;

    move-result-object v5

    invoke-virtual {v10, v5}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v6

    invoke-static {}, Ll/d;->x()Ll/e;

    invoke-virtual/range {p10 .. p10}, Lo/d;->o()Z

    move-result v16

    invoke-virtual/range {p11 .. p11}, Lo/d;->o()Z

    move-result v17

    iget-object v5, v0, Lo/e;->X:Lo/d;

    invoke-virtual {v5}, Lo/d;->o()Z

    move-result v18

    if-eqz v17, :cond_0

    add-int/lit8 v5, v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v5, v16

    :goto_0
    if-eqz v18, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    if-eqz p17, :cond_2

    move-object/from16 v20, v6

    const/4 v12, 0x3

    goto :goto_1

    :cond_2
    move/from16 v12, p22

    move-object/from16 v20, v6

    :goto_1
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v2, 0x1

    if-eqz v6, :cond_3

    if-eq v6, v2, :cond_3

    const/4 v2, 0x2

    if-eq v6, v2, :cond_4

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    const/4 v2, 0x4

    if-eq v12, v2, :cond_3

    const/4 v6, 0x1

    :goto_2
    iget v2, v0, Lo/e;->l:I

    const/4 v14, -0x1

    if-eq v2, v14, :cond_5

    if-eqz p2, :cond_5

    iput v14, v0, Lo/e;->l:I

    move/from16 p13, v2

    const/4 v6, 0x0

    :cond_5
    iget v2, v0, Lo/e;->m:I

    if-eq v2, v14, :cond_6

    if-nez p2, :cond_6

    iput v14, v0, Lo/e;->m:I

    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    move/from16 v2, p13

    :goto_3
    iget v14, v0, Lo/e;->u0:I

    move/from16 p13, v2

    const/16 v2, 0x8

    if-ne v14, v2, :cond_7

    const/4 v6, 0x0

    const/4 v14, 0x0

    goto :goto_4

    :cond_7
    move v14, v6

    move/from16 v6, p13

    :goto_4
    if-eqz p27, :cond_a

    if-nez v16, :cond_9

    if-nez v17, :cond_9

    if-nez v18, :cond_9

    move/from16 v2, p12

    invoke-virtual {v10, v9, v2}, Ll/d;->f(Ll/i;I)V

    :cond_8
    const/16 v11, 0x8

    goto :goto_5

    :cond_9
    if-eqz v16, :cond_8

    if-nez v17, :cond_8

    invoke-virtual/range {p10 .. p10}, Lo/d;->f()I

    move-result v2

    const/16 v11, 0x8

    invoke-virtual {v10, v9, v7, v2, v11}, Ll/d;->e(Ll/i;Ll/i;II)Ll/b;

    goto :goto_5

    :cond_a
    move v11, v2

    :goto_5
    if-nez v14, :cond_e

    if-eqz p9, :cond_c

    const/4 v2, 0x3

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v9, v11, v2}, Ll/d;->e(Ll/i;Ll/i;II)Ll/b;

    const/16 v2, 0x8

    if-lez v15, :cond_b

    invoke-virtual {v10, v8, v9, v15, v2}, Ll/d;->h(Ll/i;Ll/i;II)V

    :cond_b
    const v6, 0x7fffffff

    if-ge v1, v6, :cond_d

    invoke-virtual {v10, v8, v9, v1, v2}, Ll/d;->j(Ll/i;Ll/i;II)V

    goto :goto_6

    :cond_c
    move v2, v11

    invoke-virtual {v10, v8, v9, v6, v2}, Ll/d;->e(Ll/i;Ll/i;II)Ll/b;

    :cond_d
    :goto_6
    move/from16 v24, v3

    :goto_7
    move v1, v5

    move-object v15, v7

    move-object v11, v8

    move/from16 v25, v14

    move-object/from16 v14, v20

    :goto_8
    move/from16 v20, p5

    goto/16 :goto_11

    :cond_e
    const/4 v1, 0x2

    if-eq v5, v1, :cond_11

    if-nez p17, :cond_11

    const/4 v1, 0x1

    if-eq v12, v1, :cond_f

    if-nez v12, :cond_11

    :cond_f
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v4, :cond_10

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_10
    const/16 v2, 0x8

    invoke-virtual {v10, v8, v9, v1, v2}, Ll/d;->e(Ll/i;Ll/i;II)Ll/b;

    move/from16 v24, v3

    move v1, v5

    move-object v15, v7

    move-object v11, v8

    move-object/from16 v14, v20

    const/16 v25, 0x0

    goto :goto_8

    :cond_11
    const/4 v1, -0x2

    if-ne v3, v1, :cond_12

    move v2, v6

    goto :goto_9

    :cond_12
    move v2, v3

    :goto_9
    if-ne v4, v1, :cond_13

    move v1, v6

    goto :goto_a

    :cond_13
    move v1, v4

    :goto_a
    if-lez v6, :cond_14

    const/4 v3, 0x1

    if-eq v12, v3, :cond_14

    const/4 v6, 0x0

    :cond_14
    const/16 v3, 0x8

    if-lez v2, :cond_15

    invoke-virtual {v10, v8, v9, v2, v3}, Ll/d;->h(Ll/i;Ll/i;II)V

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_15
    const/4 v4, 0x1

    if-lez v1, :cond_17

    if-eqz p3, :cond_16

    if-ne v12, v4, :cond_16

    goto :goto_b

    :cond_16
    invoke-virtual {v10, v8, v9, v1, v3}, Ll/d;->j(Ll/i;Ll/i;II)V

    :goto_b
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_17
    if-ne v12, v4, :cond_1a

    if-eqz p3, :cond_18

    invoke-virtual {v10, v8, v9, v6, v3}, Ll/d;->e(Ll/i;Ll/i;II)Ll/b;

    goto :goto_c

    :cond_18
    if-eqz p19, :cond_19

    const/4 v4, 0x5

    invoke-virtual {v10, v8, v9, v6, v4}, Ll/d;->e(Ll/i;Ll/i;II)Ll/b;

    invoke-virtual {v10, v8, v9, v6, v3}, Ll/d;->j(Ll/i;Ll/i;II)V

    goto :goto_c

    :cond_19
    const/4 v4, 0x5

    invoke-virtual {v10, v8, v9, v6, v4}, Ll/d;->e(Ll/i;Ll/i;II)Ll/b;

    invoke-virtual {v10, v8, v9, v6, v3}, Ll/d;->j(Ll/i;Ll/i;II)V

    :goto_c
    move v4, v1

    move/from16 v24, v2

    goto :goto_7

    :cond_1a
    const/4 v3, 0x2

    if-ne v12, v3, :cond_1e

    invoke-virtual/range {p10 .. p10}, Lo/d;->k()Lo/d$a;

    move-result-object v3

    sget-object v4, Lo/d$a;->TOP:Lo/d$a;

    if-eq v3, v4, :cond_1c

    invoke-virtual/range {p10 .. p10}, Lo/d;->k()Lo/d$a;

    move-result-object v3

    sget-object v6, Lo/d$a;->BOTTOM:Lo/d$a;

    if-ne v3, v6, :cond_1b

    goto :goto_e

    :cond_1b
    iget-object v3, v0, Lo/e;->c0:Lo/e;

    sget-object v4, Lo/d$a;->LEFT:Lo/d$a;

    invoke-virtual {v3, v4}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object v3

    invoke-virtual {v10, v3}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v3

    iget-object v4, v0, Lo/e;->c0:Lo/e;

    sget-object v6, Lo/d$a;->RIGHT:Lo/d$a;

    invoke-virtual {v4, v6}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object v4

    invoke-virtual {v10, v4}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v4

    :goto_d
    move-object v11, v3

    move-object v6, v4

    goto :goto_f

    :cond_1c
    :goto_e
    iget-object v3, v0, Lo/e;->c0:Lo/e;

    invoke-virtual {v3, v4}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object v3

    invoke-virtual {v10, v3}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v3

    iget-object v4, v0, Lo/e;->c0:Lo/e;

    sget-object v6, Lo/d$a;->BOTTOM:Lo/d$a;

    invoke-virtual {v4, v6}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object v4

    invoke-virtual {v10, v4}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v4

    goto :goto_d

    :goto_f
    invoke-virtual/range {p1 .. p1}, Ll/d;->r()Ll/b;

    move-result-object v3

    move-object v4, v8

    move/from16 p9, v1

    move v1, v5

    move-object v5, v9

    move/from16 v24, v14

    move-object/from16 v14, v20

    move-object v15, v7

    move-object v7, v11

    move-object v11, v8

    move/from16 v8, p26

    invoke-virtual/range {v3 .. v8}, Ll/b;->k(Ll/i;Ll/i;Ll/i;Ll/i;F)Ll/b;

    move-result-object v3

    invoke-virtual {v10, v3}, Ll/d;->d(Ll/b;)V

    if-eqz p3, :cond_1d

    const/16 v24, 0x0

    :cond_1d
    move/from16 v20, p5

    move/from16 v4, p9

    move/from16 v25, v24

    :goto_10
    move/from16 v24, v2

    goto :goto_11

    :cond_1e
    move/from16 p9, v1

    move v1, v5

    move-object v15, v7

    move-object v11, v8

    move/from16 v24, v14

    move-object/from16 v14, v20

    move/from16 v4, p9

    move/from16 v25, v24

    const/16 v20, 0x1

    goto :goto_10

    :goto_11
    if-eqz p27, :cond_1f

    if-eqz p19, :cond_20

    :cond_1f
    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v7, v9

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/16 v13, 0x8

    const/16 v31, 0x1

    goto/16 :goto_33

    :cond_20
    if-nez v16, :cond_22

    if-nez v17, :cond_22

    if-nez v18, :cond_22

    :cond_21
    :goto_12
    const/4 v3, 0x5

    const/4 v4, 0x0

    goto/16 :goto_30

    :cond_22
    if-eqz v16, :cond_24

    if-nez v17, :cond_24

    iget-object v1, v13, Lo/d;->f:Lo/d;

    iget-object v1, v1, Lo/d;->d:Lo/e;

    if-eqz p3, :cond_23

    instance-of v1, v1, Lo/a;

    if-eqz v1, :cond_23

    const/16 v2, 0x8

    goto :goto_13

    :cond_23
    const/4 v2, 0x5

    :goto_13
    move/from16 v17, p3

    const/4 v4, 0x0

    goto/16 :goto_31

    :cond_24
    if-nez v16, :cond_27

    if-eqz v17, :cond_27

    invoke-virtual/range {p11 .. p11}, Lo/d;->f()I

    move-result v1

    neg-int v1, v1

    const/16 v2, 0x8

    invoke-virtual {v10, v11, v14, v1, v2}, Ll/d;->e(Ll/i;Ll/i;II)Ll/b;

    if-eqz p3, :cond_21

    iget-boolean v1, v0, Lo/e;->j:Z

    if-eqz v1, :cond_26

    iget-boolean v1, v9, Ll/i;->j:Z

    if-eqz v1, :cond_26

    iget-object v1, v0, Lo/e;->c0:Lo/e;

    if-eqz v1, :cond_26

    check-cast v1, Lo/f;

    if-eqz p2, :cond_25

    invoke-virtual {v1, v13}, Lo/f;->E1(Lo/d;)V

    goto :goto_12

    :cond_25
    invoke-virtual {v1, v13}, Lo/f;->J1(Lo/d;)V

    goto :goto_12

    :cond_26
    move-object/from16 v8, p6

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v10, v9, v8, v1, v2}, Ll/d;->h(Ll/i;Ll/i;II)V

    move v4, v1

    move v3, v2

    goto/16 :goto_30

    :cond_27
    move-object/from16 v8, p6

    const/4 v1, 0x0

    if-eqz v16, :cond_5a

    if-eqz v17, :cond_5a

    iget-object v2, v13, Lo/d;->f:Lo/d;

    iget-object v7, v2, Lo/d;->d:Lo/e;

    move-object/from16 v5, p11

    move v6, v1

    iget-object v1, v5, Lo/d;->f:Lo/d;

    iget-object v3, v1, Lo/d;->d:Lo/e;

    invoke-virtual/range {p0 .. p0}, Lo/e;->M()Lo/e;

    move-result-object v2

    const/16 v16, 0x6

    if-eqz v25, :cond_3c

    if-nez v12, :cond_2c

    if-nez v4, :cond_29

    if-nez v24, :cond_29

    iget-boolean v1, v15, Ll/i;->j:Z

    if-eqz v1, :cond_28

    iget-boolean v1, v14, Ll/i;->j:Z

    if-eqz v1, :cond_28

    invoke-virtual/range {p10 .. p10}, Lo/d;->f()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {v10, v9, v15, v0, v1}, Ll/d;->e(Ll/i;Ll/i;II)Ll/b;

    invoke-virtual/range {p11 .. p11}, Lo/d;->f()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v10, v11, v14, v0, v1}, Ll/d;->e(Ll/i;Ll/i;II)Ll/b;

    return-void

    :cond_28
    const/16 v1, 0x8

    move v4, v1

    move/from16 v17, v4

    move/from16 v18, v6

    move/from16 v23, v18

    const/16 v22, 0x1

    goto :goto_14

    :cond_29
    const/16 v1, 0x8

    move/from16 v22, v6

    const/4 v4, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x1

    const/16 v23, 0x1

    :goto_14
    instance-of v1, v7, Lo/a;

    if-nez v1, :cond_2b

    instance-of v1, v3, Lo/a;

    if-eqz v1, :cond_2a

    goto :goto_15

    :cond_2a
    move/from16 v19, v4

    move/from16 v26, v22

    move/from16 v21, v23

    const/4 v1, 0x5

    const/4 v6, 0x1

    const/4 v13, 0x3

    move-object/from16 v4, p7

    move/from16 v23, v18

    move/from16 v18, v17

    move/from16 v17, v16

    goto/16 :goto_21

    :cond_2b
    :goto_15
    move/from16 v19, v4

    move/from16 v17, v16

    move/from16 v26, v22

    move/from16 v21, v23

    const/4 v1, 0x5

    const/4 v6, 0x1

    const/4 v13, 0x3

    move-object/from16 v4, p7

    move/from16 v23, v18

    :goto_16
    const/16 v18, 0x4

    goto/16 :goto_21

    :cond_2c
    const/4 v1, 0x2

    if-ne v12, v1, :cond_2f

    instance-of v1, v7, Lo/a;

    if-nez v1, :cond_2e

    instance-of v1, v3, Lo/a;

    if-eqz v1, :cond_2d

    goto :goto_19

    :cond_2d
    move-object/from16 v4, p7

    move/from16 v26, v6

    move/from16 v17, v16

    const/4 v1, 0x5

    const/4 v6, 0x1

    const/4 v13, 0x3

    const/16 v18, 0x5

    :goto_17
    const/16 v19, 0x5

    :goto_18
    const/16 v21, 0x1

    const/16 v23, 0x1

    goto/16 :goto_21

    :cond_2e
    :goto_19
    move-object/from16 v4, p7

    move/from16 v26, v6

    move/from16 v17, v16

    const/4 v1, 0x5

    const/4 v6, 0x1

    const/4 v13, 0x3

    const/16 v18, 0x4

    goto :goto_17

    :cond_2f
    const/4 v1, 0x1

    if-ne v12, v1, :cond_30

    move-object/from16 v4, p7

    move/from16 v26, v6

    move/from16 v17, v16

    const/4 v1, 0x5

    const/4 v6, 0x1

    const/4 v13, 0x3

    const/16 v18, 0x4

    const/16 v19, 0x8

    goto :goto_18

    :cond_30
    const/4 v1, 0x3

    if-ne v12, v1, :cond_3b

    iget v1, v0, Lo/e;->H:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_33

    if-eqz p20, :cond_32

    move-object/from16 v4, p7

    const/4 v1, 0x5

    const/4 v6, 0x1

    const/4 v13, 0x3

    if-eqz p3, :cond_31

    const/16 v17, 0x5

    :goto_1a
    const/16 v18, 0x5

    const/16 v19, 0x8

    const/16 v21, 0x1

    const/16 v23, 0x1

    const/16 v26, 0x1

    goto/16 :goto_21

    :cond_31
    const/16 v17, 0x4

    goto :goto_1a

    :cond_32
    move-object/from16 v4, p7

    const/4 v1, 0x5

    const/4 v6, 0x1

    const/4 v13, 0x3

    const/16 v17, 0x8

    goto :goto_1a

    :cond_33
    if-eqz p17, :cond_36

    move/from16 v1, p23

    const/4 v6, 0x2

    if-eq v1, v6, :cond_35

    const/4 v6, 0x1

    if-ne v1, v6, :cond_34

    goto :goto_1b

    :cond_34
    const/16 v1, 0x8

    const/4 v4, 0x5

    goto :goto_1c

    :cond_35
    const/4 v6, 0x1

    :goto_1b
    const/4 v1, 0x5

    const/4 v4, 0x4

    :goto_1c
    move/from16 v19, v1

    move/from16 v18, v4

    move/from16 v21, v6

    move/from16 v23, v21

    move/from16 v26, v23

    move/from16 v17, v16

    const/4 v1, 0x5

    const/4 v13, 0x3

    move-object/from16 v4, p7

    goto/16 :goto_21

    :cond_36
    const/4 v6, 0x1

    if-lez v4, :cond_37

    move-object/from16 v4, p7

    move/from16 v21, v6

    move/from16 v23, v21

    move/from16 v26, v23

    move/from16 v17, v16

    const/4 v1, 0x5

    const/4 v13, 0x3

    const/16 v18, 0x5

    :goto_1d
    const/16 v19, 0x5

    goto/16 :goto_21

    :cond_37
    if-nez v4, :cond_3a

    if-nez v24, :cond_3a

    if-nez p20, :cond_38

    move-object/from16 v4, p7

    move/from16 v21, v6

    move/from16 v23, v21

    move/from16 v26, v23

    move/from16 v17, v16

    const/4 v1, 0x5

    const/4 v13, 0x3

    const/16 v18, 0x8

    goto :goto_1d

    :cond_38
    if-eq v7, v2, :cond_39

    if-eq v3, v2, :cond_39

    const/4 v1, 0x4

    goto :goto_1e

    :cond_39
    const/4 v1, 0x5

    :goto_1e
    move-object/from16 v4, p7

    move/from16 v19, v1

    move/from16 v21, v6

    move/from16 v23, v21

    move/from16 v26, v23

    move/from16 v17, v16

    const/4 v1, 0x5

    const/4 v13, 0x3

    goto/16 :goto_16

    :cond_3a
    move-object/from16 v4, p7

    move/from16 v21, v6

    move/from16 v23, v21

    move/from16 v26, v23

    move/from16 v17, v16

    const/4 v1, 0x5

    const/4 v13, 0x3

    const/16 v18, 0x4

    goto :goto_1d

    :cond_3b
    const/4 v6, 0x1

    move-object/from16 v4, p7

    move v13, v1

    move/from16 v17, v16

    const/4 v1, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x5

    const/16 v21, 0x0

    const/16 v23, 0x0

    :goto_1f
    const/16 v26, 0x0

    goto :goto_21

    :cond_3c
    const/4 v6, 0x1

    iget-boolean v1, v15, Ll/i;->j:Z

    if-eqz v1, :cond_3f

    iget-boolean v1, v14, Ll/i;->j:Z

    if-eqz v1, :cond_3f

    invoke-virtual/range {p10 .. p10}, Lo/d;->f()I

    move-result v0

    invoke-virtual/range {p11 .. p11}, Lo/d;->f()I

    move-result v1

    const/16 v2, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v9

    move-object/from16 p19, v15

    move/from16 p20, v0

    move/from16 p21, p16

    move-object/from16 p22, v14

    move-object/from16 p23, v11

    move/from16 p24, v1

    move/from16 p25, v2

    invoke-virtual/range {p17 .. p25}, Ll/d;->c(Ll/i;Ll/i;IFLl/i;Ll/i;II)V

    if-eqz p3, :cond_3e

    if-eqz v20, :cond_3e

    iget-object v0, v5, Lo/d;->f:Lo/d;

    if-eqz v0, :cond_3d

    invoke-virtual/range {p11 .. p11}, Lo/d;->f()I

    move-result v0

    move-object/from16 v4, p7

    goto :goto_20

    :cond_3d
    move-object/from16 v4, p7

    const/4 v0, 0x0

    :goto_20
    if-eq v14, v4, :cond_3e

    const/4 v1, 0x5

    invoke-virtual {v10, v4, v11, v0, v1}, Ll/d;->h(Ll/i;Ll/i;II)V

    :cond_3e
    return-void

    :cond_3f
    move-object/from16 v4, p7

    const/4 v1, 0x5

    const/4 v13, 0x3

    move/from16 v19, v1

    move/from16 v21, v6

    move/from16 v23, v21

    move/from16 v17, v16

    const/16 v18, 0x4

    goto :goto_1f

    :goto_21
    if-eqz v21, :cond_40

    if-ne v15, v14, :cond_40

    if-eq v7, v2, :cond_40

    const/16 v21, 0x0

    const/16 v27, 0x0

    goto :goto_22

    :cond_40
    move/from16 v27, v6

    :goto_22
    if-eqz v23, :cond_42

    if-nez v25, :cond_41

    if-nez p18, :cond_41

    if-nez p20, :cond_41

    if-ne v15, v8, :cond_41

    if-ne v14, v4, :cond_41

    const/16 v17, 0x0

    const/16 v19, 0x8

    const/16 v23, 0x8

    const/16 v27, 0x0

    goto :goto_23

    :cond_41
    move/from16 v23, v19

    move/from16 v19, v17

    move/from16 v17, p3

    :goto_23
    invoke-virtual/range {p10 .. p10}, Lo/d;->f()I

    move-result v28

    invoke-virtual/range {p11 .. p11}, Lo/d;->f()I

    move-result v29

    move/from16 v31, v1

    const/16 v30, 0x8

    move-object/from16 v1, p1

    move-object/from16 v32, v2

    move/from16 v13, v30

    const/16 v30, 0x4

    move/from16 v36, v31

    move/from16 v31, v6

    move/from16 v6, v36

    move-object v2, v9

    move-object/from16 v33, v3

    move-object v3, v15

    move/from16 v4, v28

    move/from16 v5, p16

    move-object v6, v14

    move-object/from16 v34, v7

    move-object v7, v11

    move/from16 v8, v29

    move-object/from16 v35, v9

    move/from16 v9, v19

    invoke-virtual/range {v1 .. v9}, Ll/d;->c(Ll/i;Ll/i;IFLl/i;Ll/i;II)V

    move/from16 v19, v23

    :goto_24
    move/from16 v2, v27

    goto :goto_25

    :cond_42
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move/from16 v31, v6

    move-object/from16 v34, v7

    move-object/from16 v35, v9

    const/16 v13, 0x8

    const/16 v30, 0x4

    move/from16 v17, p3

    goto :goto_24

    :goto_25
    iget v1, v0, Lo/e;->u0:I

    if-ne v1, v13, :cond_43

    invoke-virtual/range {p11 .. p11}, Lo/d;->m()Z

    move-result v1

    if-nez v1, :cond_43

    return-void

    :cond_43
    if-eqz v21, :cond_47

    if-eqz v17, :cond_45

    if-eq v15, v14, :cond_45

    if-nez v25, :cond_45

    move-object/from16 v1, v34

    instance-of v3, v1, Lo/a;

    if-nez v3, :cond_44

    move-object/from16 v3, v33

    instance-of v4, v3, Lo/a;

    if-eqz v4, :cond_46

    goto :goto_26

    :cond_44
    move-object/from16 v3, v33

    :goto_26
    move/from16 v4, v16

    goto :goto_27

    :cond_45
    move-object/from16 v3, v33

    move-object/from16 v1, v34

    :cond_46
    move/from16 v4, v19

    :goto_27
    invoke-virtual/range {p10 .. p10}, Lo/d;->f()I

    move-result v5

    move-object/from16 v7, v35

    invoke-virtual {v10, v7, v15, v5, v4}, Ll/d;->h(Ll/i;Ll/i;II)V

    invoke-virtual/range {p11 .. p11}, Lo/d;->f()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v10, v11, v14, v5, v4}, Ll/d;->j(Ll/i;Ll/i;II)V

    move/from16 v19, v4

    goto :goto_28

    :cond_47
    move-object/from16 v3, v33

    move-object/from16 v1, v34

    move-object/from16 v7, v35

    :goto_28
    if-eqz v17, :cond_48

    if-eqz p21, :cond_48

    instance-of v4, v1, Lo/a;

    if-nez v4, :cond_48

    instance-of v4, v3, Lo/a;

    if-nez v4, :cond_48

    move-object/from16 v4, v32

    if-eq v3, v4, :cond_49

    move/from16 v5, v16

    move v6, v5

    move/from16 v2, v31

    goto :goto_29

    :cond_48
    move-object/from16 v4, v32

    :cond_49
    move/from16 v5, v18

    move/from16 v6, v19

    :goto_29
    if-eqz v2, :cond_55

    if-eqz v26, :cond_52

    if-eqz p20, :cond_4a

    if-eqz p4, :cond_52

    :cond_4a
    if-eq v1, v4, :cond_4c

    if-ne v3, v4, :cond_4b

    goto :goto_2a

    :cond_4b
    move v2, v5

    goto :goto_2b

    :cond_4c
    :goto_2a
    move/from16 v2, v16

    :goto_2b
    instance-of v8, v1, Lo/h;

    if-nez v8, :cond_4d

    instance-of v8, v3, Lo/h;

    if-eqz v8, :cond_4e

    :cond_4d
    const/4 v2, 0x5

    :cond_4e
    instance-of v8, v1, Lo/a;

    if-nez v8, :cond_4f

    instance-of v8, v3, Lo/a;

    if-eqz v8, :cond_50

    :cond_4f
    const/4 v2, 0x5

    :cond_50
    if-eqz p20, :cond_51

    const/4 v2, 0x5

    :cond_51
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2c

    :cond_52
    move v2, v5

    :goto_2c
    if-eqz v17, :cond_54

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz p17, :cond_54

    if-nez p20, :cond_54

    if-eq v1, v4, :cond_53

    if-ne v3, v4, :cond_54

    :cond_53
    move/from16 v2, v30

    :cond_54
    invoke-virtual/range {p10 .. p10}, Lo/d;->f()I

    move-result v1

    invoke-virtual {v10, v7, v15, v1, v2}, Ll/d;->e(Ll/i;Ll/i;II)Ll/b;

    invoke-virtual/range {p11 .. p11}, Lo/d;->f()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v11, v14, v1, v2}, Ll/d;->e(Ll/i;Ll/i;II)Ll/b;

    :cond_55
    if-eqz v17, :cond_57

    move-object/from16 v2, p6

    if-ne v2, v15, :cond_56

    invoke-virtual/range {p10 .. p10}, Lo/d;->f()I

    move-result v1

    goto :goto_2d

    :cond_56
    const/4 v1, 0x0

    :goto_2d
    if-eq v15, v2, :cond_57

    const/4 v3, 0x5

    invoke-virtual {v10, v7, v2, v1, v3}, Ll/d;->h(Ll/i;Ll/i;II)V

    goto :goto_2e

    :cond_57
    const/4 v3, 0x5

    :goto_2e
    if-eqz v17, :cond_59

    if-eqz v25, :cond_59

    if-nez p14, :cond_59

    if-nez v24, :cond_59

    if-eqz v25, :cond_58

    const/4 v1, 0x3

    if-ne v12, v1, :cond_58

    const/4 v4, 0x0

    invoke-virtual {v10, v11, v7, v4, v13}, Ll/d;->h(Ll/i;Ll/i;II)V

    goto :goto_2f

    :cond_58
    const/4 v4, 0x0

    invoke-virtual {v10, v11, v7, v4, v3}, Ll/d;->h(Ll/i;Ll/i;II)V

    goto :goto_2f

    :cond_59
    const/4 v4, 0x0

    :goto_2f
    move v2, v3

    goto :goto_31

    :cond_5a
    move v4, v1

    const/4 v3, 0x5

    :goto_30
    move/from16 v17, p3

    goto :goto_2f

    :goto_31
    if-eqz v17, :cond_5e

    if-eqz v20, :cond_5e

    move-object/from16 v1, p11

    iget-object v3, v1, Lo/d;->f:Lo/d;

    if-eqz v3, :cond_5b

    invoke-virtual/range {p11 .. p11}, Lo/d;->f()I

    move-result v3

    move v4, v3

    :cond_5b
    move-object/from16 v3, p7

    if-eq v14, v3, :cond_5e

    iget-boolean v5, v0, Lo/e;->j:Z

    if-eqz v5, :cond_5d

    iget-boolean v5, v11, Ll/i;->j:Z

    if-eqz v5, :cond_5d

    iget-object v0, v0, Lo/e;->c0:Lo/e;

    if-eqz v0, :cond_5d

    check-cast v0, Lo/f;

    if-eqz p2, :cond_5c

    invoke-virtual {v0, v1}, Lo/f;->D1(Lo/d;)V

    goto :goto_32

    :cond_5c
    invoke-virtual {v0, v1}, Lo/f;->I1(Lo/d;)V

    :goto_32
    return-void

    :cond_5d
    invoke-virtual {v10, v3, v11, v4, v2}, Ll/d;->h(Ll/i;Ll/i;II)V

    :cond_5e
    return-void

    :goto_33
    if-ge v1, v6, :cond_63

    if-eqz p3, :cond_63

    if-eqz v20, :cond_63

    invoke-virtual {v10, v7, v2, v4, v13}, Ll/d;->h(Ll/i;Ll/i;II)V

    if-nez p2, :cond_60

    iget-object v1, v0, Lo/e;->U:Lo/d;

    iget-object v1, v1, Lo/d;->f:Lo/d;

    if-nez v1, :cond_5f

    goto :goto_34

    :cond_5f
    move v2, v4

    goto :goto_35

    :cond_60
    :goto_34
    move/from16 v2, v31

    :goto_35
    if-nez p2, :cond_62

    iget-object v0, v0, Lo/e;->U:Lo/d;

    iget-object v0, v0, Lo/d;->f:Lo/d;

    if-eqz v0, :cond_62

    iget-object v0, v0, Lo/d;->d:Lo/e;

    iget v1, v0, Lo/e;->f0:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_61

    iget-object v0, v0, Lo/e;->b0:[Lo/e$b;

    aget-object v1, v0, v4

    sget-object v2, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    if-ne v1, v2, :cond_61

    aget-object v0, v0, v31

    if-ne v0, v2, :cond_61

    move/from16 v2, v31

    goto :goto_36

    :cond_61
    move v2, v4

    :cond_62
    :goto_36
    if-eqz v2, :cond_63

    invoke-virtual {v10, v3, v11, v4, v13}, Ll/d;->h(Ll/i;Ll/i;II)V

    :cond_63
    return-void
.end method


# virtual methods
.method public A()F
    .locals 0

    iget p0, p0, Lo/e;->q0:F

    return p0
.end method

.method public B()I
    .locals 0

    iget p0, p0, Lo/e;->J0:I

    return p0
.end method

.method public C()Lo/e$b;
    .locals 1

    iget-object p0, p0, Lo/e;->b0:[Lo/e$b;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public D()I
    .locals 1

    iget-object v0, p0, Lo/e;->Q:Lo/d;

    if-eqz v0, :cond_0

    iget v0, v0, Lo/d;->g:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lo/e;->S:Lo/d;

    if-eqz p0, :cond_1

    iget p0, p0, Lo/d;->g:I

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public E()I
    .locals 0

    iget p0, p0, Lo/e;->O:I

    return p0
.end method

.method public E0(Z)V
    .locals 0

    iput-boolean p1, p0, Lo/e;->v0:Z

    return-void
.end method

.method public F()I
    .locals 0

    iget p0, p0, Lo/e;->P:I

    return p0
.end method

.method public F0(I)V
    .locals 0

    iput p1, p0, Lo/e;->n0:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/e;->L:Z

    return-void
.end method

.method public G(I)I
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lo/e;->Y()I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lo/e;->z()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public G0(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lo/e;->s0:Ljava/lang/Object;

    return-void
.end method

.method public H()I
    .locals 1

    iget-object p0, p0, Lo/e;->J:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public H0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/e;->w0:Ljava/lang/String;

    return-void
.end method

.method public I()I
    .locals 1

    iget-object p0, p0, Lo/e;->J:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public I0(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-lez v2, :cond_3

    add-int/lit8 v6, v1, -0x1

    if-ge v2, v6, :cond_3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "H"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    add-int/2addr v2, v4

    move v5, v3

    move v3, v2

    :cond_3
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_5

    sub-int/2addr v1, v4

    if-ge v2, v1, :cond_5

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_6

    cmpl-float v2, p1, v0

    if-lez v2, :cond_6

    if-ne v5, v4, :cond_4

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_1

    :cond_4
    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_6
    move p1, v0

    :goto_1
    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    iput p1, p0, Lo/e;->f0:F

    iput v5, p0, Lo/e;->g0:I

    :cond_7
    return-void

    :cond_8
    :goto_2
    iput v0, p0, Lo/e;->f0:F

    return-void
.end method

.method public J()I
    .locals 0

    iget p0, p0, Lo/e;->p0:I

    return p0
.end method

.method public J0(I)V
    .locals 3

    iget-boolean v0, p0, Lo/e;->L:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lo/e;->n0:I

    sub-int v0, p1, v0

    iget v1, p0, Lo/e;->e0:I

    add-int/2addr v1, v0

    iput v0, p0, Lo/e;->i0:I

    iget-object v2, p0, Lo/e;->R:Lo/d;

    invoke-virtual {v2, v0}, Lo/d;->t(I)V

    iget-object v0, p0, Lo/e;->T:Lo/d;

    invoke-virtual {v0, v1}, Lo/d;->t(I)V

    iget-object v0, p0, Lo/e;->U:Lo/d;

    invoke-virtual {v0, p1}, Lo/d;->t(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/e;->q:Z

    return-void
.end method

.method public K()I
    .locals 0

    iget p0, p0, Lo/e;->o0:I

    return p0
.end method

.method public K0(II)V
    .locals 1

    iget-boolean v0, p0, Lo/e;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/e;->Q:Lo/d;

    invoke-virtual {v0, p1}, Lo/d;->t(I)V

    iget-object v0, p0, Lo/e;->S:Lo/d;

    invoke-virtual {v0, p2}, Lo/d;->t(I)V

    iput p1, p0, Lo/e;->h0:I

    sub-int/2addr p2, p1

    iput p2, p0, Lo/e;->d0:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/e;->p:Z

    return-void
.end method

.method public L(I)Lo/e;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lo/e;->S:Lo/d;

    iget-object p1, p0, Lo/d;->f:Lo/d;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lo/d;->f:Lo/d;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, Lo/d;->d:Lo/e;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lo/e;->T:Lo/d;

    iget-object p1, p0, Lo/d;->f:Lo/d;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lo/d;->f:Lo/d;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, Lo/d;->d:Lo/e;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public L0(I)V
    .locals 1

    iget-object v0, p0, Lo/e;->Q:Lo/d;

    invoke-virtual {v0, p1}, Lo/d;->t(I)V

    iput p1, p0, Lo/e;->h0:I

    return-void
.end method

.method public M()Lo/e;
    .locals 0

    iget-object p0, p0, Lo/e;->c0:Lo/e;

    return-object p0
.end method

.method public M0(I)V
    .locals 1

    iget-object v0, p0, Lo/e;->R:Lo/d;

    invoke-virtual {v0, p1}, Lo/d;->t(I)V

    iput p1, p0, Lo/e;->i0:I

    return-void
.end method

.method public N(I)Lo/e;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lo/e;->Q:Lo/d;

    iget-object p1, p0, Lo/d;->f:Lo/d;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lo/d;->f:Lo/d;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, Lo/d;->d:Lo/e;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lo/e;->R:Lo/d;

    iget-object p1, p0, Lo/d;->f:Lo/d;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lo/d;->f:Lo/d;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, Lo/d;->d:Lo/e;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public N0(II)V
    .locals 1

    iget-boolean v0, p0, Lo/e;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/e;->R:Lo/d;

    invoke-virtual {v0, p1}, Lo/d;->t(I)V

    iget-object v0, p0, Lo/e;->T:Lo/d;

    invoke-virtual {v0, p2}, Lo/d;->t(I)V

    iput p1, p0, Lo/e;->i0:I

    sub-int/2addr p2, p1

    iput p2, p0, Lo/e;->e0:I

    iget-boolean p2, p0, Lo/e;->L:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lo/e;->U:Lo/d;

    iget v0, p0, Lo/e;->n0:I

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lo/d;->t(I)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/e;->q:Z

    return-void
.end method

.method public O()I
    .locals 1

    invoke-virtual {p0}, Lo/e;->Z()I

    move-result v0

    iget p0, p0, Lo/e;->d0:I

    add-int/2addr v0, p0

    return v0
.end method

.method public O0(IIII)V
    .locals 2

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    iput p1, p0, Lo/e;->h0:I

    iput p2, p0, Lo/e;->i0:I

    iget p1, p0, Lo/e;->u0:I

    const/16 p2, 0x8

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lo/e;->d0:I

    iput v0, p0, Lo/e;->e0:I

    return-void

    :cond_0
    iget-object p1, p0, Lo/e;->b0:[Lo/e$b;

    aget-object p2, p1, v0

    sget-object v0, Lo/e$b;->FIXED:Lo/e$b;

    if-ne p2, v0, :cond_1

    iget v1, p0, Lo/e;->d0:I

    if-ge p3, v1, :cond_1

    move p3, v1

    :cond_1
    const/4 v1, 0x1

    aget-object p1, p1, v1

    if-ne p1, v0, :cond_2

    iget p1, p0, Lo/e;->e0:I

    if-ge p4, p1, :cond_2

    move p4, p1

    :cond_2
    iput p3, p0, Lo/e;->d0:I

    iput p4, p0, Lo/e;->e0:I

    iget p1, p0, Lo/e;->p0:I

    if-ge p4, p1, :cond_3

    iput p1, p0, Lo/e;->e0:I

    :cond_3
    iget p1, p0, Lo/e;->o0:I

    if-ge p3, p1, :cond_4

    iput p1, p0, Lo/e;->d0:I

    :cond_4
    iget p1, p0, Lo/e;->A:I

    if-lez p1, :cond_5

    sget-object v0, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    if-ne p2, v0, :cond_5

    iget p2, p0, Lo/e;->d0:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lo/e;->d0:I

    :cond_5
    iget p1, p0, Lo/e;->D:I

    if-lez p1, :cond_6

    iget-object p2, p0, Lo/e;->b0:[Lo/e$b;

    aget-object p2, p2, v1

    sget-object v0, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    if-ne p2, v0, :cond_6

    iget p2, p0, Lo/e;->e0:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lo/e;->e0:I

    :cond_6
    iget p1, p0, Lo/e;->d0:I

    if-eq p3, p1, :cond_7

    iput p1, p0, Lo/e;->l:I

    :cond_7
    iget p1, p0, Lo/e;->e0:I

    if-eq p4, p1, :cond_8

    iput p1, p0, Lo/e;->m:I

    :cond_8
    return-void
.end method

.method public P(I)Lp/p;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lo/e;->e:Lp/l;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lo/e;->f:Lp/n;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public P0(Z)V
    .locals 0

    iput-boolean p1, p0, Lo/e;->L:Z

    return-void
.end method

.method public Q(Ljava/lang/StringBuilder;)V
    .locals 15

    move-object v12, p0

    move-object/from16 v13, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lo/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    actualWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lo/e;->d0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    actualHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lo/e;->e0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    actualLeft:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lo/e;->h0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    actualTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lo/e;->i0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "left"

    iget-object v1, v12, Lo/e;->Q:Lo/d;

    invoke-direct {p0, v13, v0, v1}, Lo/e;->S(Ljava/lang/StringBuilder;Ljava/lang/String;Lo/d;)V

    const-string v0, "top"

    iget-object v1, v12, Lo/e;->R:Lo/d;

    invoke-direct {p0, v13, v0, v1}, Lo/e;->S(Ljava/lang/StringBuilder;Ljava/lang/String;Lo/d;)V

    const-string v0, "right"

    iget-object v1, v12, Lo/e;->S:Lo/d;

    invoke-direct {p0, v13, v0, v1}, Lo/e;->S(Ljava/lang/StringBuilder;Ljava/lang/String;Lo/d;)V

    const-string v0, "bottom"

    iget-object v1, v12, Lo/e;->T:Lo/d;

    invoke-direct {p0, v13, v0, v1}, Lo/e;->S(Ljava/lang/StringBuilder;Ljava/lang/String;Lo/d;)V

    const-string v0, "baseline"

    iget-object v1, v12, Lo/e;->U:Lo/d;

    invoke-direct {p0, v13, v0, v1}, Lo/e;->S(Ljava/lang/StringBuilder;Ljava/lang/String;Lo/d;)V

    const-string v0, "centerX"

    iget-object v1, v12, Lo/e;->V:Lo/d;

    invoke-direct {p0, v13, v0, v1}, Lo/e;->S(Ljava/lang/StringBuilder;Ljava/lang/String;Lo/d;)V

    const-string v0, "centerY"

    iget-object v1, v12, Lo/e;->W:Lo/d;

    invoke-direct {p0, v13, v0, v1}, Lo/e;->S(Ljava/lang/StringBuilder;Ljava/lang/String;Lo/d;)V

    iget v3, v12, Lo/e;->d0:I

    iget v4, v12, Lo/e;->o0:I

    iget-object v0, v12, Lo/e;->J:[I

    const/4 v14, 0x0

    aget v5, v0, v14

    iget v6, v12, Lo/e;->l:I

    iget v7, v12, Lo/e;->z:I

    iget v8, v12, Lo/e;->w:I

    iget v9, v12, Lo/e;->B:F

    iget-object v0, v12, Lo/e;->b0:[Lo/e$b;

    aget-object v10, v0, v14

    iget-object v0, v12, Lo/e;->N0:[F

    aget v11, v0, v14

    const-string v2, "    width"

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lo/e;->R(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFLo/e$b;F)V

    iget v3, v12, Lo/e;->e0:I

    iget v4, v12, Lo/e;->p0:I

    iget-object v0, v12, Lo/e;->J:[I

    const/4 v1, 0x1

    aget v5, v0, v1

    iget v6, v12, Lo/e;->m:I

    iget v7, v12, Lo/e;->C:I

    iget v8, v12, Lo/e;->x:I

    iget v9, v12, Lo/e;->E:F

    iget-object v0, v12, Lo/e;->b0:[Lo/e$b;

    aget-object v10, v0, v1

    iget-object v0, v12, Lo/e;->N0:[F

    aget v11, v0, v1

    const-string v2, "    height"

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lo/e;->R(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFLo/e$b;F)V

    iget v0, v12, Lo/e;->f0:F

    iget v1, v12, Lo/e;->g0:I

    const-string v2, "    dimensionRatio"

    invoke-direct {p0, v13, v2, v0, v1}, Lo/e;->D0(Ljava/lang/StringBuilder;Ljava/lang/String;FI)V

    iget v0, v12, Lo/e;->q0:F

    sget v1, Lo/e;->U0:F

    const-string v2, "    horizontalBias"

    invoke-direct {p0, v13, v2, v0, v1}, Lo/e;->A0(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    iget v0, v12, Lo/e;->r0:F

    sget v1, Lo/e;->U0:F

    const-string v2, "    verticalBias"

    invoke-direct {p0, v13, v2, v0, v1}, Lo/e;->A0(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    const-string v0, "    horizontalChainStyle"

    iget v1, v12, Lo/e;->J0:I

    invoke-direct {p0, v13, v0, v1, v14}, Lo/e;->B0(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string v0, "    verticalChainStyle"

    iget v1, v12, Lo/e;->K0:I

    invoke-direct {p0, v13, v0, v1, v14}, Lo/e;->B0(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string v0, "  }"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public Q0(I)V
    .locals 1

    iput p1, p0, Lo/e;->e0:I

    iget v0, p0, Lo/e;->p0:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lo/e;->e0:I

    :cond_0
    return-void
.end method

.method public R0(F)V
    .locals 0

    iput p1, p0, Lo/e;->q0:F

    return-void
.end method

.method public S0(I)V
    .locals 0

    iput p1, p0, Lo/e;->J0:I

    return-void
.end method

.method public T()F
    .locals 0

    iget p0, p0, Lo/e;->r0:F

    return p0
.end method

.method public T0(II)V
    .locals 0

    iput p1, p0, Lo/e;->h0:I

    sub-int/2addr p2, p1

    iput p2, p0, Lo/e;->d0:I

    iget p1, p0, Lo/e;->o0:I

    if-ge p2, p1, :cond_0

    iput p1, p0, Lo/e;->d0:I

    :cond_0
    return-void
.end method

.method public U()I
    .locals 0

    iget p0, p0, Lo/e;->K0:I

    return p0
.end method

.method public U0(Lo/e$b;)V
    .locals 1

    iget-object p0, p0, Lo/e;->b0:[Lo/e$b;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    return-void
.end method

.method public V()Lo/e$b;
    .locals 1

    iget-object p0, p0, Lo/e;->b0:[Lo/e$b;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public V0(IIIF)V
    .locals 0

    iput p1, p0, Lo/e;->w:I

    iput p2, p0, Lo/e;->z:I

    const p2, 0x7fffffff

    if-ne p3, p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput p3, p0, Lo/e;->A:I

    iput p4, p0, Lo/e;->B:F

    const/4 p2, 0x0

    cmpl-float p2, p4, p2

    if-lez p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p4, p2

    if-gez p2, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Lo/e;->w:I

    :cond_1
    return-void
.end method

.method public W()I
    .locals 2

    iget-object v0, p0, Lo/e;->Q:Lo/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/e;->R:Lo/d;

    iget v0, v0, Lo/d;->g:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/e;->S:Lo/d;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lo/e;->T:Lo/d;

    iget p0, p0, Lo/d;->g:I

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public W0(F)V
    .locals 1

    iget-object p0, p0, Lo/e;->N0:[F

    const/4 v0, 0x0

    aput p1, p0, v0

    return-void
.end method

.method public X()I
    .locals 0

    iget p0, p0, Lo/e;->u0:I

    return p0
.end method

.method protected X0(IZ)V
    .locals 0

    iget-object p0, p0, Lo/e;->a0:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method public Y()I
    .locals 2

    iget v0, p0, Lo/e;->u0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lo/e;->d0:I

    return p0
.end method

.method public Y0(Z)V
    .locals 0

    iput-boolean p1, p0, Lo/e;->M:Z

    return-void
.end method

.method public Z()I
    .locals 2

    iget-object v0, p0, Lo/e;->c0:Lo/e;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lo/f;

    if-eqz v1, :cond_0

    check-cast v0, Lo/f;

    iget v0, v0, Lo/f;->c1:I

    iget p0, p0, Lo/e;->h0:I

    add-int/2addr v0, p0

    return v0

    :cond_0
    iget p0, p0, Lo/e;->h0:I

    return p0
.end method

.method public Z0(Z)V
    .locals 0

    iput-boolean p1, p0, Lo/e;->N:Z

    return-void
.end method

.method public a0()I
    .locals 2

    iget-object v0, p0, Lo/e;->c0:Lo/e;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lo/f;

    if-eqz v1, :cond_0

    check-cast v0, Lo/f;

    iget v0, v0, Lo/f;->d1:I

    iget p0, p0, Lo/e;->i0:I

    add-int/2addr v0, p0

    return v0

    :cond_0
    iget p0, p0, Lo/e;->i0:I

    return p0
.end method

.method public a1(II)V
    .locals 0

    iput p1, p0, Lo/e;->O:I

    iput p2, p0, Lo/e;->P:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lo/e;->d1(Z)V

    return-void
.end method

.method public b0()Z
    .locals 0

    iget-boolean p0, p0, Lo/e;->L:Z

    return p0
.end method

.method public b1(I)V
    .locals 1

    iget-object p0, p0, Lo/e;->J:[I

    const/4 v0, 0x1

    aput p1, p0, v0

    return-void
.end method

.method public c0(I)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lo/e;->Q:Lo/d;

    iget-object p1, p1, Lo/d;->f:Lo/d;

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object p0, p0, Lo/e;->S:Lo/d;

    iget-object p0, p0, Lo/d;->f:Lo/d;

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    add-int/2addr p1, p0

    if-ge p1, v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    iget-object p1, p0, Lo/e;->R:Lo/d;

    iget-object p1, p1, Lo/d;->f:Lo/d;

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    iget-object v3, p0, Lo/e;->T:Lo/d;

    iget-object v3, v3, Lo/d;->f:Lo/d;

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    add-int/2addr p1, v3

    iget-object p0, p0, Lo/e;->U:Lo/d;

    iget-object p0, p0, Lo/d;->f:Lo/d;

    if-eqz p0, :cond_6

    move p0, v2

    goto :goto_4

    :cond_6
    move p0, v1

    :goto_4
    add-int/2addr p1, p0

    if-ge p1, v0, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method

.method public c1(I)V
    .locals 1

    iget-object p0, p0, Lo/e;->J:[I

    const/4 v0, 0x0

    aput p1, p0, v0

    return-void
.end method

.method public d0()Z
    .locals 4

    iget-object v0, p0, Lo/e;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lo/e;->Z:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/d;

    invoke-virtual {v3}, Lo/d;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public d1(Z)V
    .locals 0

    iput-boolean p1, p0, Lo/e;->i:Z

    return-void
.end method

.method public e(Lo/f;Ll/d;Ljava/util/HashSet;IZ)V
    .locals 7

    if-eqz p5, :cond_1

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p0}, Lo/k;->a(Lo/f;Ll/d;Lo/e;)V

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 p5, 0x40

    invoke-virtual {p1, p5}, Lo/f;->Z1(I)Z

    move-result p5

    invoke-virtual {p0, p2, p5}, Lo/e;->g(Ll/d;Z)V

    :cond_1
    if-nez p4, :cond_3

    iget-object p5, p0, Lo/e;->Q:Lo/d;

    invoke-virtual {p5}, Lo/d;->d()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/d;

    iget-object v1, v0, Lo/d;->d:Lo/e;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/e;->e(Lo/f;Ll/d;Ljava/util/HashSet;IZ)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lo/e;->S:Lo/d;

    invoke-virtual {p0}, Lo/d;->d()Ljava/util/HashSet;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lo/d;

    iget-object v0, p5, Lo/d;->d:Lo/e;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/e;->e(Lo/f;Ll/d;Ljava/util/HashSet;IZ)V

    goto :goto_1

    :cond_3
    iget-object p5, p0, Lo/e;->R:Lo/d;

    invoke-virtual {p5}, Lo/d;->d()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/d;

    iget-object v1, v0, Lo/d;->d:Lo/e;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/e;->e(Lo/f;Ll/d;Ljava/util/HashSet;IZ)V

    goto :goto_2

    :cond_4
    iget-object p5, p0, Lo/e;->T:Lo/d;

    invoke-virtual {p5}, Lo/d;->d()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/d;

    iget-object v1, v0, Lo/d;->d:Lo/e;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/e;->e(Lo/f;Ll/d;Ljava/util/HashSet;IZ)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lo/e;->U:Lo/d;

    invoke-virtual {p0}, Lo/d;->d()Ljava/util/HashSet;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lo/d;

    iget-object v0, p5, Lo/d;->d:Lo/e;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/e;->e(Lo/f;Ll/d;Ljava/util/HashSet;IZ)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public e0()Z
    .locals 2

    iget v0, p0, Lo/e;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget p0, p0, Lo/e;->m:I

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public e1(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lo/e;->p0:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lo/e;->p0:I

    :goto_0
    return-void
.end method

.method f()Z
    .locals 1

    instance-of v0, p0, Lo/m;

    if-nez v0, :cond_1

    instance-of p0, p0, Lo/h;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public f0(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lo/e;->Q:Lo/d;

    iget-object p1, p1, Lo/d;->f:Lo/d;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lo/d;->n()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/e;->S:Lo/d;

    iget-object p1, p1, Lo/d;->f:Lo/d;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lo/d;->n()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/e;->S:Lo/d;

    iget-object p1, p1, Lo/d;->f:Lo/d;

    invoke-virtual {p1}, Lo/d;->e()I

    move-result p1

    iget-object v2, p0, Lo/e;->S:Lo/d;

    invoke-virtual {v2}, Lo/d;->f()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lo/e;->Q:Lo/d;

    iget-object v2, v2, Lo/d;->f:Lo/d;

    invoke-virtual {v2}, Lo/d;->e()I

    move-result v2

    iget-object p0, p0, Lo/e;->Q:Lo/d;

    invoke-virtual {p0}, Lo/d;->f()I

    move-result p0

    add-int/2addr v2, p0

    sub-int/2addr p1, v2

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object p1, p0, Lo/e;->R:Lo/d;

    iget-object p1, p1, Lo/d;->f:Lo/d;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lo/d;->n()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/e;->T:Lo/d;

    iget-object p1, p1, Lo/d;->f:Lo/d;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lo/d;->n()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/e;->T:Lo/d;

    iget-object p1, p1, Lo/d;->f:Lo/d;

    invoke-virtual {p1}, Lo/d;->e()I

    move-result p1

    iget-object v2, p0, Lo/e;->T:Lo/d;

    invoke-virtual {v2}, Lo/d;->f()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lo/e;->R:Lo/d;

    iget-object v2, v2, Lo/d;->f:Lo/d;

    invoke-virtual {v2}, Lo/d;->e()I

    move-result v2

    iget-object p0, p0, Lo/e;->R:Lo/d;

    invoke-virtual {p0}, Lo/d;->f()I

    move-result p0

    add-int/2addr v2, p0

    sub-int/2addr p1, v2

    if-lt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0

    :cond_3
    return v1
.end method

.method public f1(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lo/e;->o0:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lo/e;->o0:I

    :goto_0
    return-void
.end method

.method public g(Ll/d;Z)V
    .locals 53

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Lo/e;->Q:Lo/d;

    invoke-virtual {v14, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v13

    iget-object v0, v15, Lo/e;->S:Lo/d;

    invoke-virtual {v14, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v12

    iget-object v0, v15, Lo/e;->R:Lo/d;

    invoke-virtual {v14, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v11

    iget-object v0, v15, Lo/e;->T:Lo/d;

    invoke-virtual {v14, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v10

    iget-object v0, v15, Lo/e;->U:Lo/d;

    invoke-virtual {v14, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v9

    iget-object v0, v15, Lo/e;->c0:Lo/e;

    const/4 v8, 0x2

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    iget-object v2, v0, Lo/e;->b0:[Lo/e$b;

    aget-object v2, v2, v6

    sget-object v3, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-ne v2, v3, :cond_0

    move v2, v7

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lo/e;->b0:[Lo/e$b;

    aget-object v0, v0, v7

    sget-object v3, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-ne v0, v3, :cond_1

    move v0, v7

    goto :goto_1

    :cond_1
    move v0, v6

    :goto_1
    iget v3, v15, Lo/e;->v:I

    if-eq v3, v7, :cond_4

    if-eq v3, v8, :cond_3

    if-eq v3, v1, :cond_2

    move v5, v0

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v6

    move v5, v4

    goto :goto_2

    :cond_3
    move v5, v0

    move v4, v6

    goto :goto_2

    :cond_4
    move v4, v2

    move v5, v6

    :goto_2
    iget v0, v15, Lo/e;->u0:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_5

    iget-boolean v0, v15, Lo/e;->v0:Z

    if-nez v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lo/e;->d0()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v15, Lo/e;->a0:[Z

    aget-boolean v2, v0, v6

    if-nez v2, :cond_5

    aget-boolean v0, v0, v7

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, v15, Lo/e;->p:Z

    const/4 v2, 0x5

    if-nez v0, :cond_6

    iget-boolean v8, v15, Lo/e;->q:Z

    if-eqz v8, :cond_c

    :cond_6
    if-eqz v0, :cond_8

    iget v0, v15, Lo/e;->h0:I

    invoke-virtual {v14, v13, v0}, Ll/d;->f(Ll/i;I)V

    iget v0, v15, Lo/e;->h0:I

    iget v8, v15, Lo/e;->d0:I

    add-int/2addr v0, v8

    invoke-virtual {v14, v12, v0}, Ll/d;->f(Ll/i;I)V

    if-eqz v4, :cond_8

    iget-object v0, v15, Lo/e;->c0:Lo/e;

    if-eqz v0, :cond_8

    iget-boolean v8, v15, Lo/e;->k:Z

    if-eqz v8, :cond_7

    check-cast v0, Lo/f;

    iget-object v8, v15, Lo/e;->Q:Lo/d;

    invoke-virtual {v0, v8}, Lo/f;->E1(Lo/d;)V

    iget-object v8, v15, Lo/e;->S:Lo/d;

    invoke-virtual {v0, v8}, Lo/f;->D1(Lo/d;)V

    goto :goto_3

    :cond_7
    iget-object v0, v0, Lo/e;->S:Lo/d;

    invoke-virtual {v14, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    invoke-virtual {v14, v0, v12, v6, v2}, Ll/d;->h(Ll/i;Ll/i;II)V

    :cond_8
    :goto_3
    iget-boolean v0, v15, Lo/e;->q:Z

    if-eqz v0, :cond_b

    iget v0, v15, Lo/e;->i0:I

    invoke-virtual {v14, v11, v0}, Ll/d;->f(Ll/i;I)V

    iget v0, v15, Lo/e;->i0:I

    iget v8, v15, Lo/e;->e0:I

    add-int/2addr v0, v8

    invoke-virtual {v14, v10, v0}, Ll/d;->f(Ll/i;I)V

    iget-object v0, v15, Lo/e;->U:Lo/d;

    invoke-virtual {v0}, Lo/d;->m()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, v15, Lo/e;->i0:I

    iget v8, v15, Lo/e;->n0:I

    add-int/2addr v0, v8

    invoke-virtual {v14, v9, v0}, Ll/d;->f(Ll/i;I)V

    :cond_9
    if-eqz v5, :cond_b

    iget-object v0, v15, Lo/e;->c0:Lo/e;

    if-eqz v0, :cond_b

    iget-boolean v8, v15, Lo/e;->k:Z

    if-eqz v8, :cond_a

    check-cast v0, Lo/f;

    iget-object v8, v15, Lo/e;->R:Lo/d;

    invoke-virtual {v0, v8}, Lo/f;->J1(Lo/d;)V

    iget-object v8, v15, Lo/e;->T:Lo/d;

    invoke-virtual {v0, v8}, Lo/f;->I1(Lo/d;)V

    goto :goto_4

    :cond_a
    iget-object v0, v0, Lo/e;->T:Lo/d;

    invoke-virtual {v14, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    invoke-virtual {v14, v0, v10, v6, v2}, Ll/d;->h(Ll/i;Ll/i;II)V

    :cond_b
    :goto_4
    iget-boolean v0, v15, Lo/e;->p:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v15, Lo/e;->q:Z

    if-eqz v0, :cond_c

    iput-boolean v6, v15, Lo/e;->p:Z

    iput-boolean v6, v15, Lo/e;->q:Z

    return-void

    :cond_c
    sget-boolean v0, Ll/d;->s:Z

    if-eqz p2, :cond_f

    iget-object v0, v15, Lo/e;->e:Lp/l;

    if-eqz v0, :cond_f

    iget-object v8, v15, Lo/e;->f:Lp/n;

    if-eqz v8, :cond_f

    iget-object v2, v0, Lp/p;->h:Lp/f;

    iget-boolean v1, v2, Lp/f;->j:Z

    if-eqz v1, :cond_f

    iget-object v0, v0, Lp/p;->i:Lp/f;

    iget-boolean v0, v0, Lp/f;->j:Z

    if-eqz v0, :cond_f

    iget-object v0, v8, Lp/p;->h:Lp/f;

    iget-boolean v0, v0, Lp/f;->j:Z

    if-eqz v0, :cond_f

    iget-object v0, v8, Lp/p;->i:Lp/f;

    iget-boolean v0, v0, Lp/f;->j:Z

    if-eqz v0, :cond_f

    iget v0, v2, Lp/f;->g:I

    invoke-virtual {v14, v13, v0}, Ll/d;->f(Ll/i;I)V

    iget-object v0, v15, Lo/e;->e:Lp/l;

    iget-object v0, v0, Lp/p;->i:Lp/f;

    iget v0, v0, Lp/f;->g:I

    invoke-virtual {v14, v12, v0}, Ll/d;->f(Ll/i;I)V

    iget-object v0, v15, Lo/e;->f:Lp/n;

    iget-object v0, v0, Lp/p;->h:Lp/f;

    iget v0, v0, Lp/f;->g:I

    invoke-virtual {v14, v11, v0}, Ll/d;->f(Ll/i;I)V

    iget-object v0, v15, Lo/e;->f:Lp/n;

    iget-object v0, v0, Lp/p;->i:Lp/f;

    iget v0, v0, Lp/f;->g:I

    invoke-virtual {v14, v10, v0}, Ll/d;->f(Ll/i;I)V

    iget-object v0, v15, Lo/e;->f:Lp/n;

    iget-object v0, v0, Lp/n;->k:Lp/f;

    iget v0, v0, Lp/f;->g:I

    invoke-virtual {v14, v9, v0}, Ll/d;->f(Ll/i;I)V

    iget-object v0, v15, Lo/e;->c0:Lo/e;

    if-eqz v0, :cond_e

    if-eqz v4, :cond_d

    iget-object v0, v15, Lo/e;->g:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lo/e;->k0()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v15, Lo/e;->c0:Lo/e;

    iget-object v0, v0, Lo/e;->S:Lo/d;

    invoke-virtual {v14, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    invoke-virtual {v14, v0, v12, v6, v3}, Ll/d;->h(Ll/i;Ll/i;II)V

    :cond_d
    if-eqz v5, :cond_e

    iget-object v0, v15, Lo/e;->g:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lo/e;->m0()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v15, Lo/e;->c0:Lo/e;

    iget-object v0, v0, Lo/e;->T:Lo/d;

    invoke-virtual {v14, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    invoke-virtual {v14, v0, v10, v6, v3}, Ll/d;->h(Ll/i;Ll/i;II)V

    :cond_e
    iput-boolean v6, v15, Lo/e;->p:Z

    iput-boolean v6, v15, Lo/e;->q:Z

    return-void

    :cond_f
    iget-object v0, v15, Lo/e;->c0:Lo/e;

    if-eqz v0, :cond_14

    invoke-direct {v15, v6}, Lo/e;->h0(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v15, Lo/e;->c0:Lo/e;

    check-cast v0, Lo/f;

    invoke-virtual {v0, v15, v6}, Lo/f;->A1(Lo/e;I)V

    move v0, v7

    goto :goto_5

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lo/e;->k0()Z

    move-result v0

    :goto_5
    invoke-direct {v15, v7}, Lo/e;->h0(I)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v15, Lo/e;->c0:Lo/e;

    check-cast v1, Lo/f;

    invoke-virtual {v1, v15, v7}, Lo/f;->A1(Lo/e;I)V

    move v1, v7

    goto :goto_6

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lo/e;->m0()Z

    move-result v1

    :goto_6
    if-nez v0, :cond_12

    if-eqz v4, :cond_12

    iget v2, v15, Lo/e;->u0:I

    if-eq v2, v3, :cond_12

    iget-object v2, v15, Lo/e;->Q:Lo/d;

    iget-object v2, v2, Lo/d;->f:Lo/d;

    if-nez v2, :cond_12

    iget-object v2, v15, Lo/e;->S:Lo/d;

    iget-object v2, v2, Lo/d;->f:Lo/d;

    if-nez v2, :cond_12

    iget-object v2, v15, Lo/e;->c0:Lo/e;

    iget-object v2, v2, Lo/e;->S:Lo/d;

    invoke-virtual {v14, v2}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v2

    invoke-virtual {v14, v2, v12, v6, v7}, Ll/d;->h(Ll/i;Ll/i;II)V

    :cond_12
    if-nez v1, :cond_13

    if-eqz v5, :cond_13

    iget v2, v15, Lo/e;->u0:I

    if-eq v2, v3, :cond_13

    iget-object v2, v15, Lo/e;->R:Lo/d;

    iget-object v2, v2, Lo/d;->f:Lo/d;

    if-nez v2, :cond_13

    iget-object v2, v15, Lo/e;->T:Lo/d;

    iget-object v2, v2, Lo/d;->f:Lo/d;

    if-nez v2, :cond_13

    iget-object v2, v15, Lo/e;->U:Lo/d;

    if-nez v2, :cond_13

    iget-object v2, v15, Lo/e;->c0:Lo/e;

    iget-object v2, v2, Lo/e;->T:Lo/d;

    invoke-virtual {v14, v2}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v2

    invoke-virtual {v14, v2, v10, v6, v7}, Ll/d;->h(Ll/i;Ll/i;II)V

    :cond_13
    move/from16 v29, v0

    move/from16 v28, v1

    goto :goto_7

    :cond_14
    move/from16 v28, v6

    move/from16 v29, v28

    :goto_7
    iget v0, v15, Lo/e;->d0:I

    iget v1, v15, Lo/e;->o0:I

    if-ge v0, v1, :cond_15

    goto :goto_8

    :cond_15
    move v1, v0

    :goto_8
    iget v2, v15, Lo/e;->e0:I

    iget v8, v15, Lo/e;->p0:I

    if-ge v2, v8, :cond_16

    goto :goto_9

    :cond_16
    move v8, v2

    :goto_9
    iget-object v3, v15, Lo/e;->b0:[Lo/e$b;

    aget-object v7, v3, v6

    sget-object v6, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    move/from16 v22, v1

    if-eq v7, v6, :cond_17

    const/4 v1, 0x1

    :goto_a
    const/16 v20, 0x1

    goto :goto_b

    :cond_17
    const/4 v1, 0x0

    goto :goto_a

    :goto_b
    aget-object v3, v3, v20

    move/from16 v23, v8

    move-object/from16 v27, v9

    if-eq v3, v6, :cond_18

    const/4 v8, 0x1

    goto :goto_c

    :cond_18
    const/4 v8, 0x0

    :goto_c
    iget v9, v15, Lo/e;->g0:I

    iput v9, v15, Lo/e;->H:I

    move-object/from16 v30, v10

    iget v10, v15, Lo/e;->f0:F

    iput v10, v15, Lo/e;->I:F

    move-object/from16 v31, v11

    iget v11, v15, Lo/e;->w:I

    move-object/from16 v32, v12

    iget v12, v15, Lo/e;->x:I

    const/16 v24, 0x0

    cmpl-float v24, v10, v24

    move-object/from16 v33, v13

    if-lez v24, :cond_22

    iget v13, v15, Lo/e;->u0:I

    const/16 v14, 0x8

    if-eq v13, v14, :cond_22

    if-ne v7, v6, :cond_19

    if-nez v11, :cond_19

    const/4 v11, 0x3

    :cond_19
    if-ne v3, v6, :cond_1a

    if-nez v12, :cond_1a

    const/4 v12, 0x3

    :cond_1a
    if-ne v7, v6, :cond_1b

    if-ne v3, v6, :cond_1b

    const/4 v13, 0x3

    if-ne v11, v13, :cond_1c

    if-ne v12, v13, :cond_1c

    invoke-virtual {v15, v4, v5, v1, v8}, Lo/e;->t1(ZZZZ)V

    goto :goto_10

    :cond_1b
    const/4 v13, 0x3

    :cond_1c
    const/4 v1, 0x4

    if-ne v7, v6, :cond_1e

    if-ne v11, v13, :cond_1e

    const/4 v8, 0x0

    iput v8, v15, Lo/e;->H:I

    int-to-float v0, v2

    mul-float/2addr v10, v0

    float-to-int v0, v10

    if-eq v3, v6, :cond_1d

    move/from16 v36, v1

    move/from16 v35, v12

    move/from16 v34, v23

    const/4 v14, 0x0

    move v1, v0

    goto :goto_11

    :cond_1d
    move v1, v0

    move/from16 v36, v11

    move/from16 v35, v12

    :goto_d
    move/from16 v34, v23

    :goto_e
    const/4 v14, 0x1

    goto :goto_11

    :cond_1e
    if-ne v3, v6, :cond_21

    if-ne v12, v13, :cond_21

    const/4 v2, 0x1

    iput v2, v15, Lo/e;->H:I

    const/4 v2, -0x1

    if-ne v9, v2, :cond_1f

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v10

    iput v2, v15, Lo/e;->I:F

    :cond_1f
    iget v2, v15, Lo/e;->I:F

    int-to-float v0, v0

    mul-float/2addr v2, v0

    float-to-int v8, v2

    if-eq v7, v6, :cond_20

    move/from16 v35, v1

    move/from16 v34, v8

    move/from16 v36, v11

    move/from16 v1, v22

    :goto_f
    const/4 v14, 0x0

    goto :goto_11

    :cond_20
    move/from16 v34, v8

    move/from16 v36, v11

    move/from16 v35, v12

    move/from16 v1, v22

    goto :goto_e

    :cond_21
    :goto_10
    move/from16 v36, v11

    move/from16 v35, v12

    move/from16 v1, v22

    goto :goto_d

    :cond_22
    move/from16 v36, v11

    move/from16 v35, v12

    move/from16 v1, v22

    move/from16 v34, v23

    goto :goto_f

    :goto_11
    iget-object v0, v15, Lo/e;->y:[I

    const/4 v2, 0x0

    aput v36, v0, v2

    const/4 v2, 0x1

    aput v35, v0, v2

    iput-boolean v14, v15, Lo/e;->h:Z

    if-eqz v14, :cond_24

    iget v0, v15, Lo/e;->H:I

    const/4 v2, -0x1

    if-eqz v0, :cond_23

    if-ne v0, v2, :cond_25

    :cond_23
    const/16 v18, 0x1

    goto :goto_12

    :cond_24
    const/4 v2, -0x1

    :cond_25
    const/16 v18, 0x0

    :goto_12
    if-eqz v14, :cond_27

    iget v0, v15, Lo/e;->H:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_26

    if-ne v0, v2, :cond_27

    :cond_26
    const/16 v37, 0x1

    goto :goto_13

    :cond_27
    const/16 v37, 0x0

    :goto_13
    iget-object v0, v15, Lo/e;->b0:[Lo/e$b;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v13, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-ne v0, v13, :cond_28

    instance-of v0, v15, Lo/f;

    if-eqz v0, :cond_28

    const/4 v9, 0x1

    goto :goto_14

    :cond_28
    const/4 v9, 0x0

    :goto_14
    if-eqz v9, :cond_29

    const/16 v22, 0x0

    goto :goto_15

    :cond_29
    move/from16 v22, v1

    :goto_15
    iget-object v0, v15, Lo/e;->X:Lo/d;

    invoke-virtual {v0}, Lo/d;->o()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v38, v0, 0x1

    iget-object v0, v15, Lo/e;->a0:[Z

    const/4 v2, 0x0

    aget-boolean v23, v0, v2

    aget-boolean v39, v0, v1

    iget v0, v15, Lo/e;->t:I

    const/16 v40, 0x0

    const/4 v8, 0x2

    if-eq v0, v8, :cond_2e

    iget-boolean v0, v15, Lo/e;->p:Z

    if-nez v0, :cond_2e

    if-eqz p2, :cond_2a

    iget-object v0, v15, Lo/e;->e:Lp/l;

    if-eqz v0, :cond_2a

    iget-object v1, v0, Lp/p;->h:Lp/f;

    iget-boolean v2, v1, Lp/f;->j:Z

    if-eqz v2, :cond_2a

    iget-object v0, v0, Lp/p;->i:Lp/f;

    iget-boolean v0, v0, Lp/f;->j:Z

    if-nez v0, :cond_2b

    :cond_2a
    move-object/from16 v12, p1

    move-object/from16 v10, v32

    move-object/from16 v11, v33

    const/16 v3, 0x8

    goto/16 :goto_16

    :cond_2b
    if-eqz p2, :cond_2d

    iget v0, v1, Lp/f;->g:I

    move-object/from16 v12, p1

    move-object/from16 v11, v33

    invoke-virtual {v12, v11, v0}, Ll/d;->f(Ll/i;I)V

    iget-object v0, v15, Lo/e;->e:Lp/l;

    iget-object v0, v0, Lp/p;->i:Lp/f;

    iget v0, v0, Lp/f;->g:I

    move-object/from16 v10, v32

    invoke-virtual {v12, v10, v0}, Ll/d;->f(Ll/i;I)V

    iget-object v0, v15, Lo/e;->c0:Lo/e;

    if-eqz v0, :cond_2c

    if-eqz v4, :cond_2c

    iget-object v0, v15, Lo/e;->g:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lo/e;->k0()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, v15, Lo/e;->c0:Lo/e;

    iget-object v0, v0, Lo/e;->S:Lo/d;

    invoke-virtual {v12, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v12, v0, v10, v1, v3}, Ll/d;->h(Ll/i;Ll/i;II)V

    :cond_2c
    move/from16 v46, v4

    move/from16 v47, v5

    move-object/from16 v48, v6

    move-object/from16 v52, v13

    move/from16 v32, v14

    move-object/from16 v49, v27

    move-object/from16 v50, v30

    move-object/from16 v51, v31

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    goto/16 :goto_1a

    :cond_2d
    move-object/from16 v12, p1

    :cond_2e
    move/from16 v46, v4

    move/from16 v47, v5

    move-object/from16 v48, v6

    move-object/from16 v52, v13

    move-object/from16 v49, v27

    move-object/from16 v50, v30

    move-object/from16 v51, v31

    move-object/from16 v30, v32

    move-object/from16 v31, v33

    move/from16 v32, v14

    goto/16 :goto_1a

    :goto_16
    iget-object v0, v15, Lo/e;->c0:Lo/e;

    if-eqz v0, :cond_2f

    iget-object v0, v0, Lo/e;->S:Lo/d;

    invoke-virtual {v12, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    move-object v7, v0

    goto :goto_17

    :cond_2f
    move-object/from16 v7, v40

    :goto_17
    iget-object v0, v15, Lo/e;->c0:Lo/e;

    if-eqz v0, :cond_30

    iget-object v0, v0, Lo/e;->Q:Lo/d;

    invoke-virtual {v12, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_18

    :cond_30
    move-object/from16 v16, v40

    :goto_18
    iget-object v0, v15, Lo/e;->g:[Z

    const/16 v19, 0x0

    aget-boolean v21, v0, v19

    iget-object v0, v15, Lo/e;->b0:[Lo/e$b;

    aget-object v32, v0, v19

    iget-object v1, v15, Lo/e;->Q:Lo/d;

    iget-object v2, v15, Lo/e;->S:Lo/d;

    move-object/from16 v33, v2

    iget v2, v15, Lo/e;->h0:I

    move/from16 v41, v2

    iget v2, v15, Lo/e;->o0:I

    iget-object v3, v15, Lo/e;->J:[I

    aget v43, v3, v19

    iget v3, v15, Lo/e;->q0:F

    const/16 v20, 0x1

    aget-object v0, v0, v20

    if-ne v0, v6, :cond_31

    move/from16 v44, v20

    goto :goto_19

    :cond_31
    move/from16 v44, v19

    :goto_19
    iget v0, v15, Lo/e;->z:I

    move/from16 v24, v0

    iget v0, v15, Lo/e;->A:I

    move/from16 v25, v0

    iget v0, v15, Lo/e;->B:F

    move/from16 v26, v0

    const/4 v0, 0x1

    move-object/from16 v17, v33

    move/from16 v33, v41

    move/from16 v41, v2

    move v2, v0

    move-object/from16 v0, p0

    move-object/from16 v45, v1

    move-object/from16 v1, p1

    move/from16 v42, v3

    move v3, v4

    move/from16 v46, v4

    move v4, v5

    move/from16 v47, v5

    move/from16 v5, v21

    move-object/from16 v48, v6

    move-object/from16 v6, v16

    move-object/from16 v8, v32

    move-object/from16 v49, v27

    move-object/from16 v16, v10

    move-object/from16 v50, v30

    move-object/from16 v10, v45

    move-object/from16 v19, v11

    move-object/from16 v51, v31

    move-object/from16 v11, v17

    move-object/from16 v30, v16

    move/from16 v12, v33

    move-object/from16 v52, v13

    move-object/from16 v31, v19

    move/from16 v13, v22

    move/from16 v32, v14

    move/from16 v14, v41

    move/from16 v15, v43

    move/from16 v16, v42

    move/from16 v17, v18

    move/from16 v18, v44

    move/from16 v19, v29

    move/from16 v20, v28

    move/from16 v21, v23

    move/from16 v22, v36

    move/from16 v23, v35

    move/from16 v27, v38

    invoke-direct/range {v0 .. v27}, Lo/e;->i(Ll/d;ZZZZLl/i;Ll/i;Lo/e$b;ZLo/d;Lo/d;IIIIFZZZZZIIIIFZ)V

    :goto_1a
    if-eqz p2, :cond_35

    move-object/from16 v15, p0

    iget-object v0, v15, Lo/e;->f:Lp/n;

    if-eqz v0, :cond_34

    iget-object v1, v0, Lp/p;->h:Lp/f;

    iget-boolean v2, v1, Lp/f;->j:Z

    if-eqz v2, :cond_34

    iget-object v0, v0, Lp/p;->i:Lp/f;

    iget-boolean v0, v0, Lp/f;->j:Z

    if-eqz v0, :cond_34

    iget v0, v1, Lp/f;->g:I

    move-object/from16 v14, p1

    move-object/from16 v13, v51

    invoke-virtual {v14, v13, v0}, Ll/d;->f(Ll/i;I)V

    iget-object v0, v15, Lo/e;->f:Lp/n;

    iget-object v0, v0, Lp/p;->i:Lp/f;

    iget v0, v0, Lp/f;->g:I

    move-object/from16 v12, v50

    invoke-virtual {v14, v12, v0}, Ll/d;->f(Ll/i;I)V

    iget-object v0, v15, Lo/e;->f:Lp/n;

    iget-object v0, v0, Lp/n;->k:Lp/f;

    iget v0, v0, Lp/f;->g:I

    move-object/from16 v1, v49

    invoke-virtual {v14, v1, v0}, Ll/d;->f(Ll/i;I)V

    iget-object v0, v15, Lo/e;->c0:Lo/e;

    if-eqz v0, :cond_33

    if-nez v28, :cond_33

    if-eqz v47, :cond_33

    iget-object v2, v15, Lo/e;->g:[Z

    const/4 v11, 0x1

    aget-boolean v2, v2, v11

    if-eqz v2, :cond_32

    iget-object v0, v0, Lo/e;->T:Lo/d;

    invoke-virtual {v14, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v10, 0x0

    invoke-virtual {v14, v0, v12, v10, v2}, Ll/d;->h(Ll/i;Ll/i;II)V

    goto :goto_1b

    :cond_32
    const/16 v2, 0x8

    const/4 v10, 0x0

    goto :goto_1b

    :cond_33
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_1b
    move v7, v10

    goto :goto_1d

    :cond_34
    move-object/from16 v14, p1

    move-object/from16 v1, v49

    move-object/from16 v12, v50

    move-object/from16 v13, v51

    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_1c

    :cond_35
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v1, v49

    move-object/from16 v12, v50

    move-object/from16 v13, v51

    :goto_1c
    move v7, v11

    :goto_1d
    iget v0, v15, Lo/e;->u:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_36

    move v6, v10

    goto :goto_1e

    :cond_36
    move v6, v7

    :goto_1e
    if-eqz v6, :cond_41

    iget-boolean v0, v15, Lo/e;->q:Z

    if-nez v0, :cond_41

    iget-object v0, v15, Lo/e;->b0:[Lo/e$b;

    aget-object v0, v0, v11

    move-object/from16 v3, v52

    if-ne v0, v3, :cond_37

    instance-of v0, v15, Lo/f;

    if-eqz v0, :cond_37

    move v9, v11

    goto :goto_1f

    :cond_37
    move v9, v10

    :goto_1f
    if-eqz v9, :cond_38

    move/from16 v34, v10

    :cond_38
    iget-object v0, v15, Lo/e;->c0:Lo/e;

    if-eqz v0, :cond_39

    iget-object v0, v0, Lo/e;->T:Lo/d;

    invoke-virtual {v14, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    move-object v7, v0

    goto :goto_20

    :cond_39
    move-object/from16 v7, v40

    :goto_20
    iget-object v0, v15, Lo/e;->c0:Lo/e;

    if-eqz v0, :cond_3a

    iget-object v0, v0, Lo/e;->R:Lo/d;

    invoke-virtual {v14, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    move-object v6, v0

    goto :goto_21

    :cond_3a
    move-object/from16 v6, v40

    :goto_21
    iget v0, v15, Lo/e;->n0:I

    if-gtz v0, :cond_3b

    iget v0, v15, Lo/e;->u0:I

    if-ne v0, v2, :cond_3f

    :cond_3b
    iget-object v0, v15, Lo/e;->U:Lo/d;

    iget-object v3, v0, Lo/d;->f:Lo/d;

    if-eqz v3, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lo/e;->r()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Ll/d;->e(Ll/i;Ll/i;II)Ll/b;

    iget-object v0, v15, Lo/e;->U:Lo/d;

    iget-object v0, v0, Lo/d;->f:Lo/d;

    invoke-virtual {v14, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    iget-object v3, v15, Lo/e;->U:Lo/d;

    invoke-virtual {v3}, Lo/d;->f()I

    move-result v3

    invoke-virtual {v14, v1, v0, v3, v2}, Ll/d;->e(Ll/i;Ll/i;II)Ll/b;

    if-eqz v47, :cond_3c

    iget-object v0, v15, Lo/e;->T:Lo/d;

    invoke-virtual {v14, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v14, v7, v0, v10, v1}, Ll/d;->h(Ll/i;Ll/i;II)V

    :cond_3c
    move/from16 v27, v10

    goto :goto_23

    :cond_3d
    iget v3, v15, Lo/e;->u0:I

    if-ne v3, v2, :cond_3e

    invoke-virtual {v0}, Lo/d;->f()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Ll/d;->e(Ll/i;Ll/i;II)Ll/b;

    goto :goto_22

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lo/e;->r()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Ll/d;->e(Ll/i;Ll/i;II)Ll/b;

    :cond_3f
    :goto_22
    move/from16 v27, v38

    :goto_23
    iget-object v0, v15, Lo/e;->g:[Z

    aget-boolean v5, v0, v11

    iget-object v0, v15, Lo/e;->b0:[Lo/e$b;

    aget-object v8, v0, v11

    iget-object v4, v15, Lo/e;->R:Lo/d;

    iget-object v3, v15, Lo/e;->T:Lo/d;

    iget v1, v15, Lo/e;->i0:I

    iget v2, v15, Lo/e;->p0:I

    iget-object v10, v15, Lo/e;->J:[I

    aget v16, v10, v11

    iget v10, v15, Lo/e;->r0:F

    const/16 v17, 0x0

    aget-object v0, v0, v17

    move-object/from16 v11, v48

    if-ne v0, v11, :cond_40

    const/16 v18, 0x1

    goto :goto_24

    :cond_40
    move/from16 v18, v17

    :goto_24
    iget v0, v15, Lo/e;->C:I

    move/from16 v24, v0

    iget v0, v15, Lo/e;->D:I

    move/from16 v25, v0

    iget v0, v15, Lo/e;->E:F

    move/from16 v26, v0

    const/4 v0, 0x0

    move/from16 v19, v2

    move v2, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object/from16 v1, p1

    move-object v11, v3

    move/from16 v3, v47

    move-object/from16 v21, v4

    move/from16 v4, v46

    move/from16 v17, v10

    move-object/from16 v10, v21

    move-object/from16 v33, v12

    move/from16 v12, v20

    move-object/from16 v38, v13

    move/from16 v13, v34

    move/from16 v14, v19

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v37

    move/from16 v19, v28

    move/from16 v20, v29

    move/from16 v21, v39

    move/from16 v22, v35

    move/from16 v23, v36

    invoke-direct/range {v0 .. v27}, Lo/e;->i(Ll/d;ZZZZLl/i;Ll/i;Lo/e$b;ZLo/d;Lo/d;IIIIFZZZZZIIIIFZ)V

    goto :goto_25

    :cond_41
    move-object/from16 v33, v12

    move-object/from16 v38, v13

    :goto_25
    move-object/from16 v7, p0

    if-eqz v32, :cond_43

    iget v0, v7, Lo/e;->H:I

    const/16 v6, 0x8

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    iget v5, v7, Lo/e;->I:F

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v38

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual/range {v0 .. v6}, Ll/d;->k(Ll/i;Ll/i;Ll/i;Ll/i;FI)V

    goto :goto_26

    :cond_42
    iget v5, v7, Lo/e;->I:F

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v33

    move-object/from16 v4, v38

    invoke-virtual/range {v0 .. v6}, Ll/d;->k(Ll/i;Ll/i;Ll/i;Ll/i;FI)V

    :cond_43
    :goto_26
    iget-object v0, v7, Lo/e;->X:Lo/d;

    invoke-virtual {v0}, Lo/d;->o()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, v7, Lo/e;->X:Lo/d;

    invoke-virtual {v0}, Lo/d;->j()Lo/d;

    move-result-object v0

    invoke-virtual {v0}, Lo/d;->h()Lo/e;

    move-result-object v0

    iget v1, v7, Lo/e;->K:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Lo/e;->X:Lo/d;

    invoke-virtual {v2}, Lo/d;->f()I

    move-result v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v7, v0, v1, v2}, Ll/d;->b(Lo/e;Lo/e;FI)V

    :cond_44
    const/4 v0, 0x0

    iput-boolean v0, v7, Lo/e;->p:Z

    iput-boolean v0, v7, Lo/e;->q:Z

    return-void
.end method

.method public g0(Lo/d$a;Lo/e;Lo/d$a;II)V
    .locals 0

    invoke-virtual {p0, p1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p0

    invoke-virtual {p2, p3}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p4, p5, p2}, Lo/d;->b(Lo/d;IIZ)Z

    return-void
.end method

.method public g1(II)V
    .locals 0

    iput p1, p0, Lo/e;->h0:I

    iput p2, p0, Lo/e;->i0:I

    return-void
.end method

.method public h()Z
    .locals 1

    iget p0, p0, Lo/e;->u0:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h1(Lo/e;)V
    .locals 0

    iput-object p1, p0, Lo/e;->c0:Lo/e;

    return-void
.end method

.method public i0()Z
    .locals 0

    iget-boolean p0, p0, Lo/e;->r:Z

    return p0
.end method

.method public i1(F)V
    .locals 0

    iput p1, p0, Lo/e;->r0:F

    return-void
.end method

.method public j(Lo/d$a;Lo/e;Lo/d$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lo/e;->k(Lo/d$a;Lo/e;Lo/d$a;I)V

    return-void
.end method

.method public j0(I)Z
    .locals 0

    iget-object p0, p0, Lo/e;->a0:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public j1(I)V
    .locals 0

    iput p1, p0, Lo/e;->K0:I

    return-void
.end method

.method public k(Lo/d$a;Lo/e;Lo/d$a;I)V
    .locals 8

    sget-object v0, Lo/d$a;->CENTER:Lo/d$a;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_c

    if-ne p3, v0, :cond_8

    sget-object p1, Lo/d$a;->LEFT:Lo/d$a;

    invoke-virtual {p0, p1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p3

    sget-object p4, Lo/d$a;->RIGHT:Lo/d$a;

    invoke-virtual {p0, p4}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object v2

    sget-object v3, Lo/d$a;->TOP:Lo/d$a;

    invoke-virtual {p0, v3}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object v4

    sget-object v5, Lo/d$a;->BOTTOM:Lo/d$a;

    invoke-virtual {p0, v5}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lo/d;->o()Z

    move-result p3

    if-nez p3, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lo/d;->o()Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p1, v1}, Lo/e;->k(Lo/d$a;Lo/e;Lo/d$a;I)V

    invoke-virtual {p0, p4, p2, p4, v1}, Lo/e;->k(Lo/d$a;Lo/e;Lo/d$a;I)V

    move p1, v7

    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lo/d;->o()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lo/d;->o()Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    move v7, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3, p2, v3, v1}, Lo/e;->k(Lo/d$a;Lo/e;Lo/d$a;I)V

    invoke-virtual {p0, v5, p2, v5, v1}, Lo/e;->k(Lo/d$a;Lo/e;Lo/d$a;I)V

    :goto_1
    if-eqz p1, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {p0, v0}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p0

    invoke-virtual {p2, v0}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lo/d;->a(Lo/d;I)Z

    goto/16 :goto_5

    :cond_6
    if-eqz p1, :cond_7

    sget-object p1, Lo/d$a;->CENTER_X:Lo/d$a;

    invoke-virtual {p0, p1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p0

    invoke-virtual {p2, p1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lo/d;->a(Lo/d;I)Z

    goto/16 :goto_5

    :cond_7
    if-eqz v7, :cond_1c

    sget-object p1, Lo/d$a;->CENTER_Y:Lo/d$a;

    invoke-virtual {p0, p1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p0

    invoke-virtual {p2, p1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lo/d;->a(Lo/d;I)Z

    goto/16 :goto_5

    :cond_8
    sget-object p1, Lo/d$a;->LEFT:Lo/d$a;

    if-eq p3, p1, :cond_b

    sget-object p4, Lo/d$a;->RIGHT:Lo/d$a;

    if-ne p3, p4, :cond_9

    goto :goto_2

    :cond_9
    sget-object p1, Lo/d$a;->TOP:Lo/d$a;

    if-eq p3, p1, :cond_a

    sget-object p4, Lo/d$a;->BOTTOM:Lo/d$a;

    if-ne p3, p4, :cond_1c

    :cond_a
    invoke-virtual {p0, p1, p2, p3, v1}, Lo/e;->k(Lo/d$a;Lo/e;Lo/d$a;I)V

    sget-object p1, Lo/d$a;->BOTTOM:Lo/d$a;

    invoke-virtual {p0, p1, p2, p3, v1}, Lo/e;->k(Lo/d$a;Lo/e;Lo/d$a;I)V

    invoke-virtual {p0, v0}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p0

    invoke-virtual {p2, p3}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lo/d;->a(Lo/d;I)Z

    goto/16 :goto_5

    :cond_b
    :goto_2
    invoke-virtual {p0, p1, p2, p3, v1}, Lo/e;->k(Lo/d$a;Lo/e;Lo/d$a;I)V

    sget-object p1, Lo/d$a;->RIGHT:Lo/d$a;

    invoke-virtual {p0, p1, p2, p3, v1}, Lo/e;->k(Lo/d$a;Lo/e;Lo/d$a;I)V

    invoke-virtual {p0, v0}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p0

    invoke-virtual {p2, p3}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lo/d;->a(Lo/d;I)Z

    goto/16 :goto_5

    :cond_c
    sget-object v2, Lo/d$a;->CENTER_X:Lo/d$a;

    if-ne p1, v2, :cond_e

    sget-object v3, Lo/d$a;->LEFT:Lo/d$a;

    if-eq p3, v3, :cond_d

    sget-object v4, Lo/d$a;->RIGHT:Lo/d$a;

    if-ne p3, v4, :cond_e

    :cond_d
    invoke-virtual {p0, v3}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p1

    invoke-virtual {p2, p3}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p2

    sget-object p3, Lo/d$a;->RIGHT:Lo/d$a;

    invoke-virtual {p0, p3}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p3

    invoke-virtual {p1, p2, v1}, Lo/d;->a(Lo/d;I)Z

    invoke-virtual {p3, p2, v1}, Lo/d;->a(Lo/d;I)Z

    invoke-virtual {p0, v2}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p0

    invoke-virtual {p0, p2, v1}, Lo/d;->a(Lo/d;I)Z

    goto/16 :goto_5

    :cond_e
    sget-object v3, Lo/d$a;->CENTER_Y:Lo/d$a;

    if-ne p1, v3, :cond_10

    sget-object v4, Lo/d$a;->TOP:Lo/d$a;

    if-eq p3, v4, :cond_f

    sget-object v5, Lo/d$a;->BOTTOM:Lo/d$a;

    if-ne p3, v5, :cond_10

    :cond_f
    invoke-virtual {p2, p3}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p1

    invoke-virtual {p0, v4}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lo/d;->a(Lo/d;I)Z

    sget-object p2, Lo/d$a;->BOTTOM:Lo/d$a;

    invoke-virtual {p0, p2}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lo/d;->a(Lo/d;I)Z

    invoke-virtual {p0, v3}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lo/d;->a(Lo/d;I)Z

    goto/16 :goto_5

    :cond_10
    if-ne p1, v2, :cond_11

    if-ne p3, v2, :cond_11

    sget-object p1, Lo/d$a;->LEFT:Lo/d$a;

    invoke-virtual {p0, p1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p4

    invoke-virtual {p2, p1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Lo/d;->a(Lo/d;I)Z

    sget-object p1, Lo/d$a;->RIGHT:Lo/d$a;

    invoke-virtual {p0, p1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p4

    invoke-virtual {p2, p1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Lo/d;->a(Lo/d;I)Z

    invoke-virtual {p0, v2}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p0

    invoke-virtual {p2, p3}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lo/d;->a(Lo/d;I)Z

    goto/16 :goto_5

    :cond_11
    if-ne p1, v3, :cond_12

    if-ne p3, v3, :cond_12

    sget-object p1, Lo/d$a;->TOP:Lo/d$a;

    invoke-virtual {p0, p1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p4

    invoke-virtual {p2, p1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Lo/d;->a(Lo/d;I)Z

    sget-object p1, Lo/d$a;->BOTTOM:Lo/d$a;

    invoke-virtual {p0, p1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p4

    invoke-virtual {p2, p1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Lo/d;->a(Lo/d;I)Z

    invoke-virtual {p0, v3}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p0

    invoke-virtual {p2, p3}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lo/d;->a(Lo/d;I)Z

    goto/16 :goto_5

    :cond_12
    invoke-virtual {p0, p1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object v1

    invoke-virtual {p2, p3}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p2

    invoke-virtual {v1, p2}, Lo/d;->p(Lo/d;)Z

    move-result p3

    if-eqz p3, :cond_1c

    sget-object p3, Lo/d$a;->BASELINE:Lo/d$a;

    if-ne p1, p3, :cond_14

    sget-object p1, Lo/d$a;->TOP:Lo/d$a;

    invoke-virtual {p0, p1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p1

    sget-object p3, Lo/d$a;->BOTTOM:Lo/d$a;

    invoke-virtual {p0, p3}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p0

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lo/d;->q()V

    :cond_13
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lo/d;->q()V

    goto :goto_4

    :cond_14
    sget-object v4, Lo/d$a;->TOP:Lo/d$a;

    if-eq p1, v4, :cond_18

    sget-object v4, Lo/d$a;->BOTTOM:Lo/d$a;

    if-ne p1, v4, :cond_15

    goto :goto_3

    :cond_15
    sget-object p3, Lo/d$a;->LEFT:Lo/d$a;

    if-eq p1, p3, :cond_16

    sget-object p3, Lo/d$a;->RIGHT:Lo/d$a;

    if-ne p1, p3, :cond_1b

    :cond_16
    invoke-virtual {p0, v0}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p3

    invoke-virtual {p3}, Lo/d;->j()Lo/d;

    move-result-object v0

    if-eq v0, p2, :cond_17

    invoke-virtual {p3}, Lo/d;->q()V

    :cond_17
    invoke-virtual {p0, p1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p1

    invoke-virtual {p1}, Lo/d;->g()Lo/d;

    move-result-object p1

    invoke-virtual {p0, v2}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p0

    invoke-virtual {p0}, Lo/d;->o()Z

    move-result p3

    if-eqz p3, :cond_1b

    invoke-virtual {p1}, Lo/d;->q()V

    invoke-virtual {p0}, Lo/d;->q()V

    goto :goto_4

    :cond_18
    :goto_3
    invoke-virtual {p0, p3}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p3

    if-eqz p3, :cond_19

    invoke-virtual {p3}, Lo/d;->q()V

    :cond_19
    invoke-virtual {p0, v0}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p3

    invoke-virtual {p3}, Lo/d;->j()Lo/d;

    move-result-object v0

    if-eq v0, p2, :cond_1a

    invoke-virtual {p3}, Lo/d;->q()V

    :cond_1a
    invoke-virtual {p0, p1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p1

    invoke-virtual {p1}, Lo/d;->g()Lo/d;

    move-result-object p1

    invoke-virtual {p0, v3}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object p0

    invoke-virtual {p0}, Lo/d;->o()Z

    move-result p3

    if-eqz p3, :cond_1b

    invoke-virtual {p1}, Lo/d;->q()V

    invoke-virtual {p0}, Lo/d;->q()V

    :cond_1b
    :goto_4
    invoke-virtual {v1, p2, p4}, Lo/d;->a(Lo/d;I)Z

    :cond_1c
    :goto_5
    return-void
.end method

.method public k0()Z
    .locals 2

    iget-object v0, p0, Lo/e;->Q:Lo/d;

    iget-object v1, v0, Lo/d;->f:Lo/d;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lo/d;->f:Lo/d;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Lo/e;->S:Lo/d;

    iget-object v0, p0, Lo/d;->f:Lo/d;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lo/d;->f:Lo/d;

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public k1(II)V
    .locals 0

    iput p1, p0, Lo/e;->i0:I

    sub-int/2addr p2, p1

    iput p2, p0, Lo/e;->e0:I

    iget p1, p0, Lo/e;->p0:I

    if-ge p2, p1, :cond_0

    iput p1, p0, Lo/e;->e0:I

    :cond_0
    return-void
.end method

.method public l(Lo/d;Lo/d;I)V
    .locals 1

    invoke-virtual {p1}, Lo/d;->h()Lo/e;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lo/d;->k()Lo/d$a;

    move-result-object p1

    invoke-virtual {p2}, Lo/d;->h()Lo/e;

    move-result-object v0

    invoke-virtual {p2}, Lo/d;->k()Lo/d$a;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2, p3}, Lo/e;->k(Lo/d$a;Lo/e;Lo/d$a;I)V

    :cond_0
    return-void
.end method

.method public l0()Z
    .locals 0

    iget-boolean p0, p0, Lo/e;->M:Z

    return p0
.end method

.method public l1(Lo/e$b;)V
    .locals 1

    iget-object p0, p0, Lo/e;->b0:[Lo/e$b;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    return-void
.end method

.method public m(Lo/e;FI)V
    .locals 6

    sget-object v3, Lo/d$a;->CENTER:Lo/d$a;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v3

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lo/e;->g0(Lo/d$a;Lo/e;Lo/d$a;II)V

    iput p2, p0, Lo/e;->K:F

    return-void
.end method

.method public m0()Z
    .locals 2

    iget-object v0, p0, Lo/e;->R:Lo/d;

    iget-object v1, v0, Lo/d;->f:Lo/d;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lo/d;->f:Lo/d;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Lo/e;->T:Lo/d;

    iget-object v0, p0, Lo/d;->f:Lo/d;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lo/d;->f:Lo/d;

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public m1(IIIF)V
    .locals 0

    iput p1, p0, Lo/e;->x:I

    iput p2, p0, Lo/e;->C:I

    const p2, 0x7fffffff

    if-ne p3, p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput p3, p0, Lo/e;->D:I

    iput p4, p0, Lo/e;->E:F

    const/4 p2, 0x0

    cmpl-float p2, p4, p2

    if-lez p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p4, p2

    if-gez p2, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Lo/e;->x:I

    :cond_1
    return-void
.end method

.method public n(Lo/e;Ljava/util/HashMap;)V
    .locals 6

    iget v0, p1, Lo/e;->t:I

    iput v0, p0, Lo/e;->t:I

    iget v0, p1, Lo/e;->u:I

    iput v0, p0, Lo/e;->u:I

    iget v0, p1, Lo/e;->w:I

    iput v0, p0, Lo/e;->w:I

    iget v0, p1, Lo/e;->x:I

    iput v0, p0, Lo/e;->x:I

    iget-object v0, p0, Lo/e;->y:[I

    iget-object v1, p1, Lo/e;->y:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    iget v0, p1, Lo/e;->z:I

    iput v0, p0, Lo/e;->z:I

    iget v0, p1, Lo/e;->A:I

    iput v0, p0, Lo/e;->A:I

    iget v0, p1, Lo/e;->C:I

    iput v0, p0, Lo/e;->C:I

    iget v0, p1, Lo/e;->D:I

    iput v0, p0, Lo/e;->D:I

    iget v0, p1, Lo/e;->E:F

    iput v0, p0, Lo/e;->E:F

    iget-boolean v0, p1, Lo/e;->F:Z

    iput-boolean v0, p0, Lo/e;->F:Z

    iget-boolean v0, p1, Lo/e;->G:Z

    iput-boolean v0, p0, Lo/e;->G:Z

    iget v0, p1, Lo/e;->H:I

    iput v0, p0, Lo/e;->H:I

    iget v0, p1, Lo/e;->I:F

    iput v0, p0, Lo/e;->I:F

    iget-object v0, p1, Lo/e;->J:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lo/e;->J:[I

    iget v0, p1, Lo/e;->K:F

    iput v0, p0, Lo/e;->K:F

    iget-boolean v0, p1, Lo/e;->L:Z

    iput-boolean v0, p0, Lo/e;->L:Z

    iget-boolean v0, p1, Lo/e;->M:Z

    iput-boolean v0, p0, Lo/e;->M:Z

    iget-object v0, p0, Lo/e;->Q:Lo/d;

    invoke-virtual {v0}, Lo/d;->q()V

    iget-object v0, p0, Lo/e;->R:Lo/d;

    invoke-virtual {v0}, Lo/d;->q()V

    iget-object v0, p0, Lo/e;->S:Lo/d;

    invoke-virtual {v0}, Lo/d;->q()V

    iget-object v0, p0, Lo/e;->T:Lo/d;

    invoke-virtual {v0}, Lo/d;->q()V

    iget-object v0, p0, Lo/e;->U:Lo/d;

    invoke-virtual {v0}, Lo/d;->q()V

    iget-object v0, p0, Lo/e;->V:Lo/d;

    invoke-virtual {v0}, Lo/d;->q()V

    iget-object v0, p0, Lo/e;->W:Lo/d;

    invoke-virtual {v0}, Lo/d;->q()V

    iget-object v0, p0, Lo/e;->X:Lo/d;

    invoke-virtual {v0}, Lo/d;->q()V

    iget-object v0, p0, Lo/e;->b0:[Lo/e$b;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/e$b;

    iput-object v0, p0, Lo/e;->b0:[Lo/e$b;

    iget-object v0, p0, Lo/e;->c0:Lo/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lo/e;->c0:Lo/e;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/e;

    :goto_0
    iput-object v0, p0, Lo/e;->c0:Lo/e;

    iget v0, p1, Lo/e;->d0:I

    iput v0, p0, Lo/e;->d0:I

    iget v0, p1, Lo/e;->e0:I

    iput v0, p0, Lo/e;->e0:I

    iget v0, p1, Lo/e;->f0:F

    iput v0, p0, Lo/e;->f0:F

    iget v0, p1, Lo/e;->g0:I

    iput v0, p0, Lo/e;->g0:I

    iget v0, p1, Lo/e;->h0:I

    iput v0, p0, Lo/e;->h0:I

    iget v0, p1, Lo/e;->i0:I

    iput v0, p0, Lo/e;->i0:I

    iget v0, p1, Lo/e;->j0:I

    iput v0, p0, Lo/e;->j0:I

    iget v0, p1, Lo/e;->k0:I

    iput v0, p0, Lo/e;->k0:I

    iget v0, p1, Lo/e;->l0:I

    iput v0, p0, Lo/e;->l0:I

    iget v0, p1, Lo/e;->m0:I

    iput v0, p0, Lo/e;->m0:I

    iget v0, p1, Lo/e;->n0:I

    iput v0, p0, Lo/e;->n0:I

    iget v0, p1, Lo/e;->o0:I

    iput v0, p0, Lo/e;->o0:I

    iget v0, p1, Lo/e;->p0:I

    iput v0, p0, Lo/e;->p0:I

    iget v0, p1, Lo/e;->q0:F

    iput v0, p0, Lo/e;->q0:F

    iget v0, p1, Lo/e;->r0:F

    iput v0, p0, Lo/e;->r0:F

    iget-object v0, p1, Lo/e;->s0:Ljava/lang/Object;

    iput-object v0, p0, Lo/e;->s0:Ljava/lang/Object;

    iget v0, p1, Lo/e;->t0:I

    iput v0, p0, Lo/e;->t0:I

    iget v0, p1, Lo/e;->u0:I

    iput v0, p0, Lo/e;->u0:I

    iget-boolean v0, p1, Lo/e;->v0:Z

    iput-boolean v0, p0, Lo/e;->v0:Z

    iget-object v0, p1, Lo/e;->w0:Ljava/lang/String;

    iput-object v0, p0, Lo/e;->w0:Ljava/lang/String;

    iget-object v0, p1, Lo/e;->x0:Ljava/lang/String;

    iput-object v0, p0, Lo/e;->x0:Ljava/lang/String;

    iget v0, p1, Lo/e;->y0:I

    iput v0, p0, Lo/e;->y0:I

    iget v0, p1, Lo/e;->z0:I

    iput v0, p0, Lo/e;->z0:I

    iget v0, p1, Lo/e;->A0:I

    iput v0, p0, Lo/e;->A0:I

    iget v0, p1, Lo/e;->B0:I

    iput v0, p0, Lo/e;->B0:I

    iget-boolean v0, p1, Lo/e;->C0:Z

    iput-boolean v0, p0, Lo/e;->C0:Z

    iget-boolean v0, p1, Lo/e;->D0:Z

    iput-boolean v0, p0, Lo/e;->D0:Z

    iget-boolean v0, p1, Lo/e;->E0:Z

    iput-boolean v0, p0, Lo/e;->E0:Z

    iget-boolean v0, p1, Lo/e;->F0:Z

    iput-boolean v0, p0, Lo/e;->F0:Z

    iget-boolean v0, p1, Lo/e;->G0:Z

    iput-boolean v0, p0, Lo/e;->G0:Z

    iget-boolean v0, p1, Lo/e;->H0:Z

    iput-boolean v0, p0, Lo/e;->H0:Z

    iget v0, p1, Lo/e;->J0:I

    iput v0, p0, Lo/e;->J0:I

    iget v0, p1, Lo/e;->K0:I

    iput v0, p0, Lo/e;->K0:I

    iget-boolean v0, p1, Lo/e;->L0:Z

    iput-boolean v0, p0, Lo/e;->L0:Z

    iget-boolean v0, p1, Lo/e;->M0:Z

    iput-boolean v0, p0, Lo/e;->M0:Z

    iget-object v0, p0, Lo/e;->N0:[F

    iget-object v4, p1, Lo/e;->N0:[F

    aget v5, v4, v2

    aput v5, v0, v2

    aget v4, v4, v3

    aput v4, v0, v3

    iget-object v0, p0, Lo/e;->O0:[Lo/e;

    iget-object v4, p1, Lo/e;->O0:[Lo/e;

    aget-object v5, v4, v2

    aput-object v5, v0, v2

    aget-object v4, v4, v3

    aput-object v4, v0, v3

    iget-object v0, p0, Lo/e;->P0:[Lo/e;

    iget-object v4, p1, Lo/e;->P0:[Lo/e;

    aget-object v5, v4, v2

    aput-object v5, v0, v2

    aget-object v2, v4, v3

    aput-object v2, v0, v3

    iget-object v0, p1, Lo/e;->Q0:Lo/e;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/e;

    :goto_1
    iput-object v0, p0, Lo/e;->Q0:Lo/e;

    iget-object p1, p1, Lo/e;->R0:Lo/e;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lo/e;

    :goto_2
    iput-object v1, p0, Lo/e;->R0:Lo/e;

    return-void
.end method

.method public n0()Z
    .locals 0

    iget-boolean p0, p0, Lo/e;->N:Z

    return p0
.end method

.method public n1(F)V
    .locals 1

    iget-object p0, p0, Lo/e;->N0:[F

    const/4 v0, 0x1

    aput p1, p0, v0

    return-void
.end method

.method public o(Ll/d;)V
    .locals 1

    iget-object v0, p0, Lo/e;->Q:Lo/d;

    invoke-virtual {p1, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    iget-object v0, p0, Lo/e;->R:Lo/d;

    invoke-virtual {p1, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    iget-object v0, p0, Lo/e;->S:Lo/d;

    invoke-virtual {p1, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    iget-object v0, p0, Lo/e;->T:Lo/d;

    invoke-virtual {p1, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    iget v0, p0, Lo/e;->n0:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lo/e;->U:Lo/d;

    invoke-virtual {p1, p0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    :cond_0
    return-void
.end method

.method public o0()Z
    .locals 1

    iget-boolean v0, p0, Lo/e;->i:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lo/e;->u0:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o1(I)V
    .locals 0

    iput p1, p0, Lo/e;->u0:I

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lo/e;->e:Lp/l;

    if-nez v0, :cond_0

    new-instance v0, Lp/l;

    invoke-direct {v0, p0}, Lp/l;-><init>(Lo/e;)V

    iput-object v0, p0, Lo/e;->e:Lp/l;

    :cond_0
    iget-object v0, p0, Lo/e;->f:Lp/n;

    if-nez v0, :cond_1

    new-instance v0, Lp/n;

    invoke-direct {v0, p0}, Lp/n;-><init>(Lo/e;)V

    iput-object v0, p0, Lo/e;->f:Lp/n;

    :cond_1
    return-void
.end method

.method public p0()Z
    .locals 1

    iget-boolean v0, p0, Lo/e;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/e;->Q:Lo/d;

    invoke-virtual {v0}, Lo/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo/e;->S:Lo/d;

    invoke-virtual {p0}, Lo/d;->n()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public p1(I)V
    .locals 1

    iput p1, p0, Lo/e;->d0:I

    iget v0, p0, Lo/e;->o0:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lo/e;->d0:I

    :cond_0
    return-void
.end method

.method public q(Lo/d$a;)Lo/d;
    .locals 2

    sget-object v0, Lo/e$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lo/e;->W:Lo/d;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lo/e;->V:Lo/d;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lo/e;->X:Lo/d;

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lo/e;->U:Lo/d;

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lo/e;->T:Lo/d;

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lo/e;->S:Lo/d;

    return-object p0

    :pswitch_7
    iget-object p0, p0, Lo/e;->R:Lo/d;

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lo/e;->Q:Lo/d;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public q0()Z
    .locals 1

    iget-boolean v0, p0, Lo/e;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/e;->R:Lo/d;

    invoke-virtual {v0}, Lo/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo/e;->T:Lo/d;

    invoke-virtual {p0}, Lo/d;->n()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public q1(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iput p1, p0, Lo/e;->v:I

    :cond_0
    return-void
.end method

.method public r()I
    .locals 0

    iget p0, p0, Lo/e;->n0:I

    return p0
.end method

.method public r0()Z
    .locals 0

    iget-boolean p0, p0, Lo/e;->s:Z

    return p0
.end method

.method public r1(I)V
    .locals 0

    iput p1, p0, Lo/e;->h0:I

    return-void
.end method

.method public s(I)F
    .locals 1

    if-nez p1, :cond_0

    iget p0, p0, Lo/e;->q0:F

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget p0, p0, Lo/e;->r0:F

    return p0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public s0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/e;->r:Z

    return-void
.end method

.method public s1(I)V
    .locals 0

    iput p1, p0, Lo/e;->i0:I

    return-void
.end method

.method public t()I
    .locals 1

    invoke-virtual {p0}, Lo/e;->a0()I

    move-result v0

    iget p0, p0, Lo/e;->e0:I

    add-int/2addr v0, p0

    return v0
.end method

.method public t0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/e;->s:Z

    return-void
.end method

.method public t1(ZZZZ)V
    .locals 3

    iget p1, p0, Lo/e;->H:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    iput v0, p0, Lo/e;->H:I

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    iput v1, p0, Lo/e;->H:I

    iget p1, p0, Lo/e;->g0:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Lo/e;->I:F

    div-float p1, p2, p1

    iput p1, p0, Lo/e;->I:F

    :cond_1
    :goto_0
    iget p1, p0, Lo/e;->H:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lo/e;->R:Lo/d;

    invoke-virtual {p1}, Lo/d;->o()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/e;->T:Lo/d;

    invoke-virtual {p1}, Lo/d;->o()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iput v1, p0, Lo/e;->H:I

    goto :goto_1

    :cond_3
    iget p1, p0, Lo/e;->H:I

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lo/e;->Q:Lo/d;

    invoke-virtual {p1}, Lo/d;->o()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lo/e;->S:Lo/d;

    invoke-virtual {p1}, Lo/d;->o()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    iput v0, p0, Lo/e;->H:I

    :cond_5
    :goto_1
    iget p1, p0, Lo/e;->H:I

    if-ne p1, v2, :cond_8

    iget-object p1, p0, Lo/e;->R:Lo/d;

    invoke-virtual {p1}, Lo/d;->o()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lo/e;->T:Lo/d;

    invoke-virtual {p1}, Lo/d;->o()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lo/e;->Q:Lo/d;

    invoke-virtual {p1}, Lo/d;->o()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lo/e;->S:Lo/d;

    invoke-virtual {p1}, Lo/d;->o()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_6
    iget-object p1, p0, Lo/e;->R:Lo/d;

    invoke-virtual {p1}, Lo/d;->o()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lo/e;->T:Lo/d;

    invoke-virtual {p1}, Lo/d;->o()Z

    move-result p1

    if-eqz p1, :cond_7

    iput v0, p0, Lo/e;->H:I

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lo/e;->Q:Lo/d;

    invoke-virtual {p1}, Lo/d;->o()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lo/e;->S:Lo/d;

    invoke-virtual {p1}, Lo/d;->o()Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lo/e;->I:F

    div-float p1, p2, p1

    iput p1, p0, Lo/e;->I:F

    iput v1, p0, Lo/e;->H:I

    :cond_8
    :goto_2
    iget p1, p0, Lo/e;->H:I

    if-ne p1, v2, :cond_a

    iget p1, p0, Lo/e;->z:I

    if-lez p1, :cond_9

    iget p3, p0, Lo/e;->C:I

    if-nez p3, :cond_9

    iput v0, p0, Lo/e;->H:I

    goto :goto_3

    :cond_9
    if-nez p1, :cond_a

    iget p1, p0, Lo/e;->C:I

    if-lez p1, :cond_a

    iget p1, p0, Lo/e;->I:F

    div-float/2addr p2, p1

    iput p2, p0, Lo/e;->I:F

    iput v1, p0, Lo/e;->H:I

    :cond_a
    :goto_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/e;->x0:Ljava/lang/String;

    const-string v2, ""

    const-string v3, " "

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/e;->x0:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/e;->w0:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/e;->w0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/e;->h0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/e;->i0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/e;->d0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lo/e;->e0:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo/e;->s0:Ljava/lang/Object;

    return-object p0
.end method

.method public u0()Z
    .locals 3

    iget-object p0, p0, Lo/e;->b0:[Lo/e$b;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    sget-object v2, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    if-ne p0, v2, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public u1(ZZ)V
    .locals 7

    iget-object v0, p0, Lo/e;->e:Lp/l;

    invoke-virtual {v0}, Lp/p;->k()Z

    move-result v0

    and-int/2addr p1, v0

    iget-object v0, p0, Lo/e;->f:Lp/n;

    invoke-virtual {v0}, Lp/p;->k()Z

    move-result v0

    and-int/2addr p2, v0

    iget-object v0, p0, Lo/e;->e:Lp/l;

    iget-object v1, v0, Lp/p;->h:Lp/f;

    iget v1, v1, Lp/f;->g:I

    iget-object v2, p0, Lo/e;->f:Lp/n;

    iget-object v3, v2, Lp/p;->h:Lp/f;

    iget v3, v3, Lp/f;->g:I

    iget-object v0, v0, Lp/p;->i:Lp/f;

    iget v0, v0, Lp/f;->g:I

    iget-object v2, v2, Lp/p;->i:Lp/f;

    iget v2, v2, Lp/f;->g:I

    sub-int v4, v0, v1

    sub-int v5, v2, v3

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    const/high16 v4, -0x80000000

    if-eq v1, v4, :cond_0

    const v5, 0x7fffffff

    if-eq v1, v5, :cond_0

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v2, v4, :cond_0

    if-ne v2, v5, :cond_1

    :cond_0
    move v0, v6

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_1
    sub-int/2addr v0, v1

    sub-int/2addr v2, v3

    if-eqz p1, :cond_2

    iput v1, p0, Lo/e;->h0:I

    :cond_2
    if-eqz p2, :cond_3

    iput v3, p0, Lo/e;->i0:I

    :cond_3
    iget v1, p0, Lo/e;->u0:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    iput v6, p0, Lo/e;->d0:I

    iput v6, p0, Lo/e;->e0:I

    return-void

    :cond_4
    if-eqz p1, :cond_6

    iget-object p1, p0, Lo/e;->b0:[Lo/e$b;

    aget-object p1, p1, v6

    sget-object v1, Lo/e$b;->FIXED:Lo/e$b;

    if-ne p1, v1, :cond_5

    iget p1, p0, Lo/e;->d0:I

    if-ge v0, p1, :cond_5

    move v0, p1

    :cond_5
    iput v0, p0, Lo/e;->d0:I

    iget p1, p0, Lo/e;->o0:I

    if-ge v0, p1, :cond_6

    iput p1, p0, Lo/e;->d0:I

    :cond_6
    if-eqz p2, :cond_8

    iget-object p1, p0, Lo/e;->b0:[Lo/e$b;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    sget-object p2, Lo/e$b;->FIXED:Lo/e$b;

    if-ne p1, p2, :cond_7

    iget p1, p0, Lo/e;->e0:I

    if-ge v2, p1, :cond_7

    move v2, p1

    :cond_7
    iput v2, p0, Lo/e;->e0:I

    iget p1, p0, Lo/e;->p0:I

    if-ge v2, p1, :cond_8

    iput p1, p0, Lo/e;->e0:I

    :cond_8
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/e;->w0:Ljava/lang/String;

    return-object p0
.end method

.method public v0()V
    .locals 6

    iget-object v0, p0, Lo/e;->Q:Lo/d;

    invoke-virtual {v0}, Lo/d;->q()V

    iget-object v0, p0, Lo/e;->R:Lo/d;

    invoke-virtual {v0}, Lo/d;->q()V

    iget-object v0, p0, Lo/e;->S:Lo/d;

    invoke-virtual {v0}, Lo/d;->q()V

    iget-object v0, p0, Lo/e;->T:Lo/d;

    invoke-virtual {v0}, Lo/d;->q()V

    iget-object v0, p0, Lo/e;->U:Lo/d;

    invoke-virtual {v0}, Lo/d;->q()V

    iget-object v0, p0, Lo/e;->V:Lo/d;

    invoke-virtual {v0}, Lo/d;->q()V

    iget-object v0, p0, Lo/e;->W:Lo/d;

    invoke-virtual {v0}, Lo/d;->q()V

    iget-object v0, p0, Lo/e;->X:Lo/d;

    invoke-virtual {v0}, Lo/d;->q()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/e;->c0:Lo/e;

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lo/e;->K:F

    const/4 v1, 0x0

    iput v1, p0, Lo/e;->d0:I

    iput v1, p0, Lo/e;->e0:I

    const/4 v2, 0x0

    iput v2, p0, Lo/e;->f0:F

    const/4 v2, -0x1

    iput v2, p0, Lo/e;->g0:I

    iput v1, p0, Lo/e;->h0:I

    iput v1, p0, Lo/e;->i0:I

    iput v1, p0, Lo/e;->l0:I

    iput v1, p0, Lo/e;->m0:I

    iput v1, p0, Lo/e;->n0:I

    iput v1, p0, Lo/e;->o0:I

    iput v1, p0, Lo/e;->p0:I

    sget v3, Lo/e;->U0:F

    iput v3, p0, Lo/e;->q0:F

    iput v3, p0, Lo/e;->r0:F

    iget-object v3, p0, Lo/e;->b0:[Lo/e$b;

    sget-object v4, Lo/e$b;->FIXED:Lo/e$b;

    aput-object v4, v3, v1

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iput-object v0, p0, Lo/e;->s0:Ljava/lang/Object;

    iput v1, p0, Lo/e;->t0:I

    iput v1, p0, Lo/e;->u0:I

    iput-object v0, p0, Lo/e;->x0:Ljava/lang/String;

    iput-boolean v1, p0, Lo/e;->G0:Z

    iput-boolean v1, p0, Lo/e;->H0:Z

    iput v1, p0, Lo/e;->J0:I

    iput v1, p0, Lo/e;->K0:I

    iput-boolean v1, p0, Lo/e;->L0:Z

    iput-boolean v1, p0, Lo/e;->M0:Z

    iget-object v0, p0, Lo/e;->N0:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v1

    aput v3, v0, v5

    iput v2, p0, Lo/e;->t:I

    iput v2, p0, Lo/e;->u:I

    iget-object v0, p0, Lo/e;->J:[I

    const v3, 0x7fffffff

    aput v3, v0, v1

    aput v3, v0, v5

    iput v1, p0, Lo/e;->w:I

    iput v1, p0, Lo/e;->x:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lo/e;->B:F

    iput v0, p0, Lo/e;->E:F

    iput v3, p0, Lo/e;->A:I

    iput v3, p0, Lo/e;->D:I

    iput v1, p0, Lo/e;->z:I

    iput v1, p0, Lo/e;->C:I

    iput-boolean v1, p0, Lo/e;->h:Z

    iput v2, p0, Lo/e;->H:I

    iput v0, p0, Lo/e;->I:F

    iput-boolean v1, p0, Lo/e;->I0:Z

    iget-object v0, p0, Lo/e;->g:[Z

    aput-boolean v5, v0, v1

    aput-boolean v5, v0, v5

    iput-boolean v1, p0, Lo/e;->N:Z

    iget-object v0, p0, Lo/e;->a0:[Z

    aput-boolean v1, v0, v1

    aput-boolean v1, v0, v5

    iput-boolean v5, p0, Lo/e;->i:Z

    iget-object v0, p0, Lo/e;->y:[I

    aput v1, v0, v1

    aput v1, v0, v5

    iput v2, p0, Lo/e;->l:I

    iput v2, p0, Lo/e;->m:I

    return-void
.end method

.method public v1(Ll/d;Z)V
    .locals 6

    iget-object v0, p0, Lo/e;->Q:Lo/d;

    invoke-virtual {p1, v0}, Ll/d;->y(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lo/e;->R:Lo/d;

    invoke-virtual {p1, v1}, Ll/d;->y(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lo/e;->S:Lo/d;

    invoke-virtual {p1, v2}, Ll/d;->y(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lo/e;->T:Lo/d;

    invoke-virtual {p1, v3}, Ll/d;->y(Ljava/lang/Object;)I

    move-result p1

    if-eqz p2, :cond_0

    iget-object v3, p0, Lo/e;->e:Lp/l;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lp/p;->h:Lp/f;

    iget-boolean v5, v4, Lp/f;->j:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, Lp/p;->i:Lp/f;

    iget-boolean v5, v3, Lp/f;->j:Z

    if-eqz v5, :cond_0

    iget v0, v4, Lp/f;->g:I

    iget v2, v3, Lp/f;->g:I

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lo/e;->f:Lp/n;

    if-eqz p2, :cond_1

    iget-object v3, p2, Lp/p;->h:Lp/f;

    iget-boolean v4, v3, Lp/f;->j:Z

    if-eqz v4, :cond_1

    iget-object p2, p2, Lp/p;->i:Lp/f;

    iget-boolean v4, p2, Lp/f;->j:Z

    if-eqz v4, :cond_1

    iget v1, v3, Lp/f;->g:I

    iget p1, p2, Lp/f;->g:I

    :cond_1
    sub-int p2, v2, v0

    sub-int v3, p1, v1

    if-ltz p2, :cond_2

    if-ltz v3, :cond_2

    const/high16 p2, -0x80000000

    if-eq v0, p2, :cond_2

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v2, p2, :cond_2

    if-eq v2, v3, :cond_2

    if-eq p1, p2, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    const/4 v0, 0x0

    move p1, v0

    move v1, p1

    move v2, v1

    :cond_3
    invoke-virtual {p0, v0, v1, v2, p1}, Lo/e;->O0(IIII)V

    return-void
.end method

.method public w(I)Lo/e$b;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lo/e;->C()Lo/e$b;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lo/e;->V()Lo/e$b;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public w0()V
    .locals 1

    invoke-virtual {p0}, Lo/e;->x0()V

    sget v0, Lo/e;->U0:F

    invoke-virtual {p0, v0}, Lo/e;->i1(F)V

    sget v0, Lo/e;->U0:F

    invoke-virtual {p0, v0}, Lo/e;->R0(F)V

    return-void
.end method

.method public x()F
    .locals 0

    iget p0, p0, Lo/e;->f0:F

    return p0
.end method

.method public x0()V
    .locals 3

    invoke-virtual {p0}, Lo/e;->M()Lo/e;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Lo/f;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/e;->M()Lo/e;

    move-result-object v0

    check-cast v0, Lo/f;

    invoke-virtual {v0}, Lo/f;->R1()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/e;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lo/e;->Z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/d;

    invoke-virtual {v2}, Lo/d;->q()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public y()I
    .locals 0

    iget p0, p0, Lo/e;->g0:I

    return p0
.end method

.method public y0()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/e;->p:Z

    iput-boolean v0, p0, Lo/e;->q:Z

    iput-boolean v0, p0, Lo/e;->r:Z

    iput-boolean v0, p0, Lo/e;->s:Z

    iget-object v1, p0, Lo/e;->Z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lo/e;->Z:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/d;

    invoke-virtual {v2}, Lo/d;->r()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public z()I
    .locals 2

    iget v0, p0, Lo/e;->u0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lo/e;->e0:I

    return p0
.end method

.method public z0(Ll/c;)V
    .locals 1

    iget-object v0, p0, Lo/e;->Q:Lo/d;

    invoke-virtual {v0, p1}, Lo/d;->s(Ll/c;)V

    iget-object v0, p0, Lo/e;->R:Lo/d;

    invoke-virtual {v0, p1}, Lo/d;->s(Ll/c;)V

    iget-object v0, p0, Lo/e;->S:Lo/d;

    invoke-virtual {v0, p1}, Lo/d;->s(Ll/c;)V

    iget-object v0, p0, Lo/e;->T:Lo/d;

    invoke-virtual {v0, p1}, Lo/d;->s(Ll/c;)V

    iget-object v0, p0, Lo/e;->U:Lo/d;

    invoke-virtual {v0, p1}, Lo/d;->s(Ll/c;)V

    iget-object v0, p0, Lo/e;->X:Lo/d;

    invoke-virtual {v0, p1}, Lo/d;->s(Ll/c;)V

    iget-object v0, p0, Lo/e;->V:Lo/d;

    invoke-virtual {v0, p1}, Lo/d;->s(Ll/c;)V

    iget-object p0, p0, Lo/e;->W:Lo/d;

    invoke-virtual {p0, p1}, Lo/d;->s(Ll/c;)V

    return-void
.end method
