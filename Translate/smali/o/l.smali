.class public Lo/l;
.super Lo/m;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/m;-><init>()V

    return-void
.end method


# virtual methods
.method public H1(IIII)V
    .locals 5

    invoke-virtual {p0}, Lo/m;->E1()I

    move-result v0

    invoke-virtual {p0}, Lo/m;->F1()I

    move-result v1

    invoke-virtual {p0}, Lo/m;->G1()I

    move-result v2

    invoke-virtual {p0}, Lo/m;->D1()I

    move-result v3

    add-int/2addr v0, v1

    add-int/2addr v2, v3

    iget v1, p0, Lo/j;->W0:I

    const/4 v3, 0x0

    if-lez v1, :cond_0

    iget-object v1, p0, Lo/j;->V0:[Lo/e;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lo/e;->Y()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lo/j;->V0:[Lo/e;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lo/e;->z()I

    move-result v1

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {p0}, Lo/e;->K()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lo/e;->J()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-ne p1, v4, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    move p2, v0

    goto :goto_0

    :cond_3
    move p2, v3

    :goto_0
    if-ne p3, v4, :cond_4

    goto :goto_1

    :cond_4
    if-ne p3, v2, :cond_5

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_1

    :cond_5
    if-nez p3, :cond_6

    move p4, v1

    goto :goto_1

    :cond_6
    move p4, v3

    :goto_1
    invoke-virtual {p0, p2, p4}, Lo/m;->M1(II)V

    invoke-virtual {p0, p2}, Lo/e;->p1(I)V

    invoke-virtual {p0, p4}, Lo/e;->Q0(I)V

    iget p1, p0, Lo/j;->W0:I

    if-lez p1, :cond_7

    const/4 v3, 0x1

    :cond_7
    invoke-virtual {p0, v3}, Lo/m;->L1(Z)V

    return-void
.end method

.method public g(Ll/d;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lo/e;->g(Ll/d;Z)V

    iget p1, p0, Lo/j;->W0:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lo/j;->V0:[Lo/e;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lo/e;->w0()V

    sget-object p2, Lo/d$a;->LEFT:Lo/d$a;

    invoke-virtual {p1, p2, p0, p2}, Lo/e;->j(Lo/d$a;Lo/e;Lo/d$a;)V

    sget-object p2, Lo/d$a;->RIGHT:Lo/d$a;

    invoke-virtual {p1, p2, p0, p2}, Lo/e;->j(Lo/d$a;Lo/e;Lo/d$a;)V

    sget-object p2, Lo/d$a;->TOP:Lo/d$a;

    invoke-virtual {p1, p2, p0, p2}, Lo/e;->j(Lo/d$a;Lo/e;Lo/d$a;)V

    sget-object p2, Lo/d$a;->BOTTOM:Lo/d$a;

    invoke-virtual {p1, p2, p0, p2}, Lo/e;->j(Lo/d$a;Lo/e;Lo/d$a;)V

    :cond_0
    return-void
.end method
