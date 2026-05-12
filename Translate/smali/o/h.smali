.class public Lo/h;
.super Lo/e;
.source "SourceFile"


# instance fields
.field protected V0:F

.field protected W0:I

.field protected X0:I

.field protected Y0:Z

.field private Z0:Lo/d;

.field private a1:I

.field private b1:I

.field private c1:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lo/e;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lo/h;->V0:F

    const/4 v0, -0x1

    iput v0, p0, Lo/h;->W0:I

    iput v0, p0, Lo/h;->X0:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/h;->Y0:Z

    iget-object v0, p0, Lo/e;->R:Lo/d;

    iput-object v0, p0, Lo/h;->Z0:Lo/d;

    const/4 v0, 0x0

    iput v0, p0, Lo/h;->a1:I

    iput v0, p0, Lo/h;->b1:I

    iget-object v1, p0, Lo/e;->Z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lo/e;->Z:Ljava/util/ArrayList;

    iget-object v2, p0, Lo/h;->Z0:Lo/d;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lo/e;->Y:[Lo/d;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lo/e;->Y:[Lo/d;

    iget-object v3, p0, Lo/h;->Z0:Lo/d;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public A1()F
    .locals 0

    iget p0, p0, Lo/h;->V0:F

    return p0
.end method

.method public B1(I)V
    .locals 1

    iget-object v0, p0, Lo/h;->Z0:Lo/d;

    invoke-virtual {v0, p1}, Lo/d;->t(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/h;->c1:Z

    return-void
.end method

.method public C1(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lo/h;->V0:F

    iput p1, p0, Lo/h;->W0:I

    iput v0, p0, Lo/h;->X0:I

    :cond_0
    return-void
.end method

.method public D1(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lo/h;->V0:F

    iput v0, p0, Lo/h;->W0:I

    iput p1, p0, Lo/h;->X0:I

    :cond_0
    return-void
.end method

.method public E1(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lo/h;->V0:F

    const/4 p1, -0x1

    iput p1, p0, Lo/h;->W0:I

    iput p1, p0, Lo/h;->X0:I

    :cond_0
    return-void
.end method

.method public F1(I)V
    .locals 3

    iget v0, p0, Lo/h;->a1:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lo/h;->a1:I

    iget-object p1, p0, Lo/e;->Z:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget p1, p0, Lo/h;->a1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lo/e;->Q:Lo/d;

    iput-object p1, p0, Lo/h;->Z0:Lo/d;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lo/e;->R:Lo/d;

    iput-object p1, p0, Lo/h;->Z0:Lo/d;

    :goto_0
    iget-object p1, p0, Lo/e;->Z:Ljava/util/ArrayList;

    iget-object v0, p0, Lo/h;->Z0:Lo/d;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lo/e;->Y:[Lo/d;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lo/e;->Y:[Lo/d;

    iget-object v2, p0, Lo/h;->Z0:Lo/d;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public g(Ll/d;Z)V
    .locals 7

    invoke-virtual {p0}, Lo/e;->M()Lo/e;

    move-result-object p2

    check-cast p2, Lo/f;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lo/d$a;->LEFT:Lo/d$a;

    invoke-virtual {p2, v0}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object v0

    sget-object v1, Lo/d$a;->RIGHT:Lo/d$a;

    invoke-virtual {p2, v1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object v1

    iget-object v2, p0, Lo/e;->c0:Lo/e;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Lo/e;->b0:[Lo/e$b;

    aget-object v2, v2, v4

    sget-object v5, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-ne v2, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iget v5, p0, Lo/h;->a1:I

    if-nez v5, :cond_3

    sget-object v0, Lo/d$a;->TOP:Lo/d$a;

    invoke-virtual {p2, v0}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object v0

    sget-object v1, Lo/d$a;->BOTTOM:Lo/d$a;

    invoke-virtual {p2, v1}, Lo/e;->q(Lo/d$a;)Lo/d;

    move-result-object v1

    iget-object p2, p0, Lo/e;->c0:Lo/e;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lo/e;->b0:[Lo/e$b;

    aget-object p2, p2, v3

    sget-object v2, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    move v2, v3

    :cond_3
    iget-boolean p2, p0, Lo/h;->c1:Z

    const/4 v3, -0x1

    const/4 v5, 0x5

    if-eqz p2, :cond_6

    iget-object p2, p0, Lo/h;->Z0:Lo/d;

    invoke-virtual {p2}, Lo/d;->n()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lo/h;->Z0:Lo/d;

    invoke-virtual {p1, p2}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object p2

    iget-object v6, p0, Lo/h;->Z0:Lo/d;

    invoke-virtual {v6}, Lo/d;->e()I

    move-result v6

    invoke-virtual {p1, p2, v6}, Ll/d;->f(Ll/i;I)V

    iget v6, p0, Lo/h;->W0:I

    if-eq v6, v3, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Ll/d;->h(Ll/i;Ll/i;II)V

    goto :goto_2

    :cond_4
    iget v6, p0, Lo/h;->X0:I

    if-eq v6, v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v1

    invoke-virtual {p1, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Ll/d;->h(Ll/i;Ll/i;II)V

    invoke-virtual {p1, v1, p2, v4, v5}, Ll/d;->h(Ll/i;Ll/i;II)V

    :cond_5
    :goto_2
    iput-boolean v4, p0, Lo/h;->c1:Z

    return-void

    :cond_6
    iget p2, p0, Lo/h;->W0:I

    const/16 v6, 0x8

    if-eq p2, v3, :cond_7

    iget-object p2, p0, Lo/h;->Z0:Lo/d;

    invoke-virtual {p1, p2}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object p2

    invoke-virtual {p1, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    iget p0, p0, Lo/h;->W0:I

    invoke-virtual {p1, p2, v0, p0, v6}, Ll/d;->e(Ll/i;Ll/i;II)Ll/b;

    if-eqz v2, :cond_9

    invoke-virtual {p1, v1}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object p0

    invoke-virtual {p1, p0, p2, v4, v5}, Ll/d;->h(Ll/i;Ll/i;II)V

    goto :goto_3

    :cond_7
    iget p2, p0, Lo/h;->X0:I

    if-eq p2, v3, :cond_8

    iget-object p2, p0, Lo/h;->Z0:Lo/d;

    invoke-virtual {p1, p2}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object p2

    invoke-virtual {p1, v1}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v1

    iget p0, p0, Lo/h;->X0:I

    neg-int p0, p0

    invoke-virtual {p1, p2, v1, p0, v6}, Ll/d;->e(Ll/i;Ll/i;II)Ll/b;

    if-eqz v2, :cond_9

    invoke-virtual {p1, v0}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object p0

    invoke-virtual {p1, p2, p0, v4, v5}, Ll/d;->h(Ll/i;Ll/i;II)V

    invoke-virtual {p1, v1, p2, v4, v5}, Ll/d;->h(Ll/i;Ll/i;II)V

    goto :goto_3

    :cond_8
    iget p2, p0, Lo/h;->V0:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    iget-object p2, p0, Lo/h;->Z0:Lo/d;

    invoke-virtual {p1, p2}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object p2

    invoke-virtual {p1, v1}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    iget p0, p0, Lo/h;->V0:F

    invoke-static {p1, p2, v0, p0}, Ll/d;->s(Ll/d;Ll/i;Ll/i;F)Ll/b;

    move-result-object p0

    invoke-virtual {p1, p0}, Ll/d;->d(Ll/b;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public h()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public n(Lo/e;Ljava/util/HashMap;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lo/e;->n(Lo/e;Ljava/util/HashMap;)V

    check-cast p1, Lo/h;

    iget p2, p1, Lo/h;->V0:F

    iput p2, p0, Lo/h;->V0:F

    iget p2, p1, Lo/h;->W0:I

    iput p2, p0, Lo/h;->W0:I

    iget p2, p1, Lo/h;->X0:I

    iput p2, p0, Lo/h;->X0:I

    iget-boolean p2, p1, Lo/h;->Y0:Z

    iput-boolean p2, p0, Lo/h;->Y0:Z

    iget p1, p1, Lo/h;->a1:I

    invoke-virtual {p0, p1}, Lo/h;->F1(I)V

    return-void
.end method

.method public p0()Z
    .locals 0

    iget-boolean p0, p0, Lo/h;->c1:Z

    return p0
.end method

.method public q(Lo/d$a;)Lo/d;
    .locals 2

    sget-object v0, Lo/h$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lo/h;->a1:I

    if-nez p1, :cond_2

    iget-object p0, p0, Lo/h;->Z0:Lo/d;

    return-object p0

    :cond_1
    iget p1, p0, Lo/h;->a1:I

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lo/h;->Z0:Lo/d;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public q0()Z
    .locals 0

    iget-boolean p0, p0, Lo/h;->c1:Z

    return p0
.end method

.method public v1(Ll/d;Z)V
    .locals 2

    invoke-virtual {p0}, Lo/e;->M()Lo/e;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lo/h;->Z0:Lo/d;

    invoke-virtual {p1, p2}, Ll/d;->y(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lo/h;->a1:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lo/e;->r1(I)V

    invoke-virtual {p0, v1}, Lo/e;->s1(I)V

    invoke-virtual {p0}, Lo/e;->M()Lo/e;

    move-result-object p1

    invoke-virtual {p1}, Lo/e;->z()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/e;->Q0(I)V

    invoke-virtual {p0, v1}, Lo/e;->p1(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lo/e;->r1(I)V

    invoke-virtual {p0, p1}, Lo/e;->s1(I)V

    invoke-virtual {p0}, Lo/e;->M()Lo/e;

    move-result-object p1

    invoke-virtual {p1}, Lo/e;->Y()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/e;->p1(I)V

    invoke-virtual {p0, v1}, Lo/e;->Q0(I)V

    :goto_0
    return-void
.end method

.method public w1()Lo/d;
    .locals 0

    iget-object p0, p0, Lo/h;->Z0:Lo/d;

    return-object p0
.end method

.method public x1()I
    .locals 0

    iget p0, p0, Lo/h;->a1:I

    return p0
.end method

.method public y1()I
    .locals 0

    iget p0, p0, Lo/h;->W0:I

    return p0
.end method

.method public z1()I
    .locals 0

    iget p0, p0, Lo/h;->X0:I

    return p0
.end method
