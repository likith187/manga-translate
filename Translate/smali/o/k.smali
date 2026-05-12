.class public abstract Lo/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Lo/k;->a:[Z

    return-void
.end method

.method static a(Lo/f;Ll/d;Lo/e;)V
    .locals 6

    const/4 v0, -0x1

    iput v0, p2, Lo/e;->t:I

    iput v0, p2, Lo/e;->u:I

    iget-object v0, p0, Lo/e;->b0:[Lo/e$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Lo/e;->b0:[Lo/e$b;

    aget-object v0, v0, v1

    sget-object v1, Lo/e$b;->MATCH_PARENT:Lo/e$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p2, Lo/e;->Q:Lo/d;

    iget v0, v0, Lo/d;->g:I

    invoke-virtual {p0}, Lo/e;->Y()I

    move-result v1

    iget-object v4, p2, Lo/e;->S:Lo/d;

    iget v4, v4, Lo/d;->g:I

    sub-int/2addr v1, v4

    iget-object v4, p2, Lo/e;->Q:Lo/d;

    invoke-virtual {p1, v4}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v5

    iput-object v5, v4, Lo/d;->i:Ll/i;

    iget-object v4, p2, Lo/e;->S:Lo/d;

    invoke-virtual {p1, v4}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v5

    iput-object v5, v4, Lo/d;->i:Ll/i;

    iget-object v4, p2, Lo/e;->Q:Lo/d;

    iget-object v4, v4, Lo/d;->i:Ll/i;

    invoke-virtual {p1, v4, v0}, Ll/d;->f(Ll/i;I)V

    iget-object v4, p2, Lo/e;->S:Lo/d;

    iget-object v4, v4, Lo/d;->i:Ll/i;

    invoke-virtual {p1, v4, v1}, Ll/d;->f(Ll/i;I)V

    iput v3, p2, Lo/e;->t:I

    invoke-virtual {p2, v0, v1}, Lo/e;->T0(II)V

    :cond_0
    iget-object v0, p0, Lo/e;->b0:[Lo/e$b;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Lo/e;->b0:[Lo/e$b;

    aget-object v0, v0, v1

    sget-object v1, Lo/e$b;->MATCH_PARENT:Lo/e$b;

    if-ne v0, v1, :cond_3

    iget-object v0, p2, Lo/e;->R:Lo/d;

    iget v0, v0, Lo/d;->g:I

    invoke-virtual {p0}, Lo/e;->z()I

    move-result p0

    iget-object v1, p2, Lo/e;->T:Lo/d;

    iget v1, v1, Lo/d;->g:I

    sub-int/2addr p0, v1

    iget-object v1, p2, Lo/e;->R:Lo/d;

    invoke-virtual {p1, v1}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v2

    iput-object v2, v1, Lo/d;->i:Ll/i;

    iget-object v1, p2, Lo/e;->T:Lo/d;

    invoke-virtual {p1, v1}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v2

    iput-object v2, v1, Lo/d;->i:Ll/i;

    iget-object v1, p2, Lo/e;->R:Lo/d;

    iget-object v1, v1, Lo/d;->i:Ll/i;

    invoke-virtual {p1, v1, v0}, Ll/d;->f(Ll/i;I)V

    iget-object v1, p2, Lo/e;->T:Lo/d;

    iget-object v1, v1, Lo/d;->i:Ll/i;

    invoke-virtual {p1, v1, p0}, Ll/d;->f(Ll/i;I)V

    iget v1, p2, Lo/e;->n0:I

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Lo/e;->X()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p2, Lo/e;->U:Lo/d;

    invoke-virtual {p1, v1}, Ll/d;->q(Ljava/lang/Object;)Ll/i;

    move-result-object v2

    iput-object v2, v1, Lo/d;->i:Ll/i;

    iget-object v1, p2, Lo/e;->U:Lo/d;

    iget-object v1, v1, Lo/d;->i:Ll/i;

    iget v2, p2, Lo/e;->n0:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Ll/d;->f(Ll/i;I)V

    :cond_2
    iput v3, p2, Lo/e;->u:I

    invoke-virtual {p2, v0, p0}, Lo/e;->k1(II)V

    :cond_3
    return-void
.end method

.method public static final b(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
