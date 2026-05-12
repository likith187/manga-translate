.class public abstract Lo/m;
.super Lo/j;
.source "SourceFile"


# instance fields
.field private X0:I

.field private Y0:I

.field private Z0:I

.field private a1:I

.field private b1:I

.field private c1:I

.field private d1:I

.field private e1:I

.field private f1:Z

.field private g1:I

.field private h1:I

.field protected i1:Lp/b$a;

.field j1:Lp/b$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/j;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo/m;->X0:I

    iput v0, p0, Lo/m;->Y0:I

    iput v0, p0, Lo/m;->Z0:I

    iput v0, p0, Lo/m;->a1:I

    iput v0, p0, Lo/m;->b1:I

    iput v0, p0, Lo/m;->c1:I

    iput v0, p0, Lo/m;->d1:I

    iput v0, p0, Lo/m;->e1:I

    iput-boolean v0, p0, Lo/m;->f1:Z

    iput v0, p0, Lo/m;->g1:I

    iput v0, p0, Lo/m;->h1:I

    new-instance v0, Lp/b$a;

    invoke-direct {v0}, Lp/b$a;-><init>()V

    iput-object v0, p0, Lo/m;->i1:Lp/b$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/m;->j1:Lp/b$b;

    return-void
.end method


# virtual methods
.method public A1(Ljava/util/HashSet;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lo/j;->W0:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lo/j;->V0:[Lo/e;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public B1()I
    .locals 0

    iget p0, p0, Lo/m;->h1:I

    return p0
.end method

.method public C1()I
    .locals 0

    iget p0, p0, Lo/m;->g1:I

    return p0
.end method

.method public D1()I
    .locals 0

    iget p0, p0, Lo/m;->Y0:I

    return p0
.end method

.method public E1()I
    .locals 0

    iget p0, p0, Lo/m;->d1:I

    return p0
.end method

.method public F1()I
    .locals 0

    iget p0, p0, Lo/m;->e1:I

    return p0
.end method

.method public G1()I
    .locals 0

    iget p0, p0, Lo/m;->X0:I

    return p0
.end method

.method public abstract H1(IIII)V
.end method

.method protected I1(Lo/e;Lo/e$b;ILo/e$b;I)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lo/m;->j1:Lp/b$b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/e;->M()Lo/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/e;->M()Lo/e;

    move-result-object v0

    check-cast v0, Lo/f;

    invoke-virtual {v0}, Lo/f;->O1()Lp/b$b;

    move-result-object v0

    iput-object v0, p0, Lo/m;->j1:Lp/b$b;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/m;->i1:Lp/b$a;

    iput-object p2, v0, Lp/b$a;->a:Lo/e$b;

    iput-object p4, v0, Lp/b$a;->b:Lo/e$b;

    iput p3, v0, Lp/b$a;->c:I

    iput p5, v0, Lp/b$a;->d:I

    iget-object p2, p0, Lo/m;->j1:Lp/b$b;

    invoke-interface {p2, p1, v0}, Lp/b$b;->b(Lo/e;Lp/b$a;)V

    iget-object p2, p0, Lo/m;->i1:Lp/b$a;

    iget p2, p2, Lp/b$a;->e:I

    invoke-virtual {p1, p2}, Lo/e;->p1(I)V

    iget-object p2, p0, Lo/m;->i1:Lp/b$a;

    iget p2, p2, Lp/b$a;->f:I

    invoke-virtual {p1, p2}, Lo/e;->Q0(I)V

    iget-object p2, p0, Lo/m;->i1:Lp/b$a;

    iget-boolean p2, p2, Lp/b$a;->h:Z

    invoke-virtual {p1, p2}, Lo/e;->P0(Z)V

    iget-object p0, p0, Lo/m;->i1:Lp/b$a;

    iget p0, p0, Lp/b$a;->g:I

    invoke-virtual {p1, p0}, Lo/e;->F0(I)V

    return-void
.end method

.method protected J1()Z
    .locals 9

    iget-object v0, p0, Lo/e;->c0:Lo/e;

    if-eqz v0, :cond_0

    check-cast v0, Lo/f;

    invoke-virtual {v0}, Lo/f;->O1()Lp/b$b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move v2, v1

    :goto_1
    iget v3, p0, Lo/j;->W0:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lo/j;->V0:[Lo/e;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    instance-of v5, v3, Lo/h;

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v1}, Lo/e;->w(I)Lo/e$b;

    move-result-object v5

    invoke-virtual {v3, v4}, Lo/e;->w(I)Lo/e$b;

    move-result-object v6

    sget-object v7, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    if-ne v5, v7, :cond_4

    iget v8, v3, Lo/e;->w:I

    if-eq v8, v4, :cond_4

    if-ne v6, v7, :cond_4

    iget v8, v3, Lo/e;->x:I

    if-eq v8, v4, :cond_4

    goto :goto_2

    :cond_4
    if-ne v5, v7, :cond_5

    sget-object v5, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    :cond_5
    if-ne v6, v7, :cond_6

    sget-object v6, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    :cond_6
    iget-object v4, p0, Lo/m;->i1:Lp/b$a;

    iput-object v5, v4, Lp/b$a;->a:Lo/e$b;

    iput-object v6, v4, Lp/b$a;->b:Lo/e$b;

    invoke-virtual {v3}, Lo/e;->Y()I

    move-result v5

    iput v5, v4, Lp/b$a;->c:I

    iget-object v4, p0, Lo/m;->i1:Lp/b$a;

    invoke-virtual {v3}, Lo/e;->z()I

    move-result v5

    iput v5, v4, Lp/b$a;->d:I

    iget-object v4, p0, Lo/m;->i1:Lp/b$a;

    invoke-interface {v0, v3, v4}, Lp/b$b;->b(Lo/e;Lp/b$a;)V

    iget-object v4, p0, Lo/m;->i1:Lp/b$a;

    iget v4, v4, Lp/b$a;->e:I

    invoke-virtual {v3, v4}, Lo/e;->p1(I)V

    iget-object v4, p0, Lo/m;->i1:Lp/b$a;

    iget v4, v4, Lp/b$a;->f:I

    invoke-virtual {v3, v4}, Lo/e;->Q0(I)V

    iget-object v4, p0, Lo/m;->i1:Lp/b$a;

    iget v4, v4, Lp/b$a;->g:I

    invoke-virtual {v3, v4}, Lo/e;->F0(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return v4
.end method

.method public K1()Z
    .locals 0

    iget-boolean p0, p0, Lo/m;->f1:Z

    return p0
.end method

.method protected L1(Z)V
    .locals 0

    iput-boolean p1, p0, Lo/m;->f1:Z

    return-void
.end method

.method public M1(II)V
    .locals 0

    iput p1, p0, Lo/m;->g1:I

    iput p2, p0, Lo/m;->h1:I

    return-void
.end method

.method public N1(I)V
    .locals 0

    iput p1, p0, Lo/m;->Z0:I

    iput p1, p0, Lo/m;->X0:I

    iput p1, p0, Lo/m;->a1:I

    iput p1, p0, Lo/m;->Y0:I

    iput p1, p0, Lo/m;->b1:I

    iput p1, p0, Lo/m;->c1:I

    return-void
.end method

.method public O1(I)V
    .locals 0

    iput p1, p0, Lo/m;->Y0:I

    return-void
.end method

.method public P1(I)V
    .locals 0

    iput p1, p0, Lo/m;->c1:I

    return-void
.end method

.method public Q1(I)V
    .locals 0

    iput p1, p0, Lo/m;->Z0:I

    iput p1, p0, Lo/m;->d1:I

    return-void
.end method

.method public R1(I)V
    .locals 0

    iput p1, p0, Lo/m;->a1:I

    iput p1, p0, Lo/m;->e1:I

    return-void
.end method

.method public S1(I)V
    .locals 0

    iput p1, p0, Lo/m;->b1:I

    iput p1, p0, Lo/m;->d1:I

    iput p1, p0, Lo/m;->e1:I

    return-void
.end method

.method public T1(I)V
    .locals 0

    iput p1, p0, Lo/m;->X0:I

    return-void
.end method

.method public a(Lo/f;)V
    .locals 0

    invoke-virtual {p0}, Lo/m;->z1()V

    return-void
.end method

.method public y1(Z)V
    .locals 2

    iget v0, p0, Lo/m;->b1:I

    if-gtz v0, :cond_0

    iget v1, p0, Lo/m;->c1:I

    if-lez v1, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p0, Lo/m;->c1:I

    iput p1, p0, Lo/m;->d1:I

    iput v0, p0, Lo/m;->e1:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lo/m;->d1:I

    iget p1, p0, Lo/m;->c1:I

    iput p1, p0, Lo/m;->e1:I

    :cond_2
    :goto_0
    return-void
.end method

.method public z1()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lo/j;->W0:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lo/j;->V0:[Lo/e;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lo/e;->Z0(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
