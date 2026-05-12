.class public abstract Lp/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp/p$b;
    }
.end annotation


# instance fields
.field public a:I

.field b:Lo/e;

.field c:Lp/m;

.field protected d:Lo/e$b;

.field e:Lp/g;

.field public f:I

.field g:Z

.field public h:Lp/f;

.field public i:Lp/f;

.field protected j:Lp/p$b;


# direct methods
.method public constructor <init>(Lo/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lp/g;

    invoke-direct {v0, p0}, Lp/g;-><init>(Lp/p;)V

    iput-object v0, p0, Lp/p;->e:Lp/g;

    const/4 v0, 0x0

    iput v0, p0, Lp/p;->f:I

    iput-boolean v0, p0, Lp/p;->g:Z

    new-instance v0, Lp/f;

    invoke-direct {v0, p0}, Lp/f;-><init>(Lp/p;)V

    iput-object v0, p0, Lp/p;->h:Lp/f;

    new-instance v0, Lp/f;

    invoke-direct {v0, p0}, Lp/f;-><init>(Lp/p;)V

    iput-object v0, p0, Lp/p;->i:Lp/f;

    sget-object v0, Lp/p$b;->NONE:Lp/p$b;

    iput-object v0, p0, Lp/p;->j:Lp/p$b;

    iput-object p1, p0, Lp/p;->b:Lo/e;

    return-void
.end method

.method private l(II)V
    .locals 7

    iget v0, p0, Lp/p;->a:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 p2, 0x2

    const/high16 v2, 0x3f000000    # 0.5f

    if-eq v0, p2, :cond_4

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lp/p;->b:Lo/e;

    iget-object v3, v0, Lo/e;->e:Lp/l;

    iget-object v4, v3, Lp/p;->d:Lo/e$b;

    sget-object v5, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    if-ne v4, v5, :cond_1

    iget v4, v3, Lp/p;->a:I

    if-ne v4, p2, :cond_1

    iget-object v4, v0, Lo/e;->f:Lp/n;

    iget-object v6, v4, Lp/p;->d:Lo/e$b;

    if-ne v6, v5, :cond_1

    iget v4, v4, Lp/p;->a:I

    if-ne v4, p2, :cond_1

    goto/16 :goto_3

    :cond_1
    if-nez p1, :cond_2

    iget-object v3, v0, Lo/e;->f:Lp/n;

    :cond_2
    iget-object p2, v3, Lp/p;->e:Lp/g;

    iget-boolean p2, p2, Lp/f;->j:Z

    if-eqz p2, :cond_9

    invoke-virtual {v0}, Lo/e;->x()F

    move-result p2

    if-ne p1, v1, :cond_3

    iget-object p1, v3, Lp/p;->e:Lp/g;

    iget p1, p1, Lp/f;->g:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    add-float/2addr p1, v2

    float-to-int p1, p1

    goto :goto_0

    :cond_3
    iget-object p1, v3, Lp/p;->e:Lp/g;

    iget p1, p1, Lp/f;->g:I

    int-to-float p1, p1

    mul-float/2addr p2, p1

    add-float/2addr p2, v2

    float-to-int p1, p2

    :goto_0
    iget-object p0, p0, Lp/p;->e:Lp/g;

    invoke-virtual {p0, p1}, Lp/g;->d(I)V

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lp/p;->b:Lo/e;

    invoke-virtual {p2}, Lo/e;->M()Lo/e;

    move-result-object p2

    if-eqz p2, :cond_9

    if-nez p1, :cond_5

    iget-object p2, p2, Lo/e;->e:Lp/l;

    goto :goto_1

    :cond_5
    iget-object p2, p2, Lo/e;->f:Lp/n;

    :goto_1
    iget-object p2, p2, Lp/p;->e:Lp/g;

    iget-boolean v0, p2, Lp/f;->j:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_6

    iget-object v0, p0, Lp/p;->b:Lo/e;

    iget v0, v0, Lo/e;->B:F

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lp/p;->b:Lo/e;

    iget v0, v0, Lo/e;->E:F

    :goto_2
    iget p2, p2, Lp/f;->g:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    add-float/2addr p2, v2

    float-to-int p2, p2

    iget-object v0, p0, Lp/p;->e:Lp/g;

    invoke-virtual {p0, p2, p1}, Lp/p;->g(II)I

    move-result p0

    invoke-virtual {v0, p0}, Lp/g;->d(I)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lp/p;->e:Lp/g;

    iget v0, v0, Lp/g;->m:I

    invoke-virtual {p0, v0, p1}, Lp/p;->g(II)I

    move-result p1

    iget-object p0, p0, Lp/p;->e:Lp/g;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lp/g;->d(I)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lp/p;->e:Lp/g;

    invoke-virtual {p0, p2, p1}, Lp/p;->g(II)I

    move-result p0

    invoke-virtual {v0, p0}, Lp/g;->d(I)V

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public abstract a(Lp/d;)V
.end method

.method protected final b(Lp/f;Lp/f;I)V
    .locals 0

    iget-object p0, p1, Lp/f;->l:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p1, Lp/f;->f:I

    iget-object p0, p2, Lp/f;->k:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final c(Lp/f;Lp/f;ILp/g;)V
    .locals 1

    iget-object v0, p1, Lp/f;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lp/f;->l:Ljava/util/List;

    iget-object p0, p0, Lp/p;->e:Lp/g;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p1, Lp/f;->h:I

    iput-object p4, p1, Lp/f;->i:Lp/g;

    iget-object p0, p2, Lp/f;->k:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p4, Lp/f;->k:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method abstract d()V
.end method

.method abstract e()V
.end method

.method abstract f()V
.end method

.method protected final g(II)I
    .locals 0

    if-nez p2, :cond_1

    iget-object p0, p0, Lp/p;->b:Lo/e;

    iget p2, p0, Lo/e;->A:I

    iget p0, p0, Lo/e;->z:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-lez p2, :cond_0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_0
    if-eq p0, p1, :cond_3

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lp/p;->b:Lo/e;

    iget p2, p0, Lo/e;->D:I

    iget p0, p0, Lo/e;->C:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-lez p2, :cond_2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_2
    if-eq p0, p1, :cond_3

    :goto_0
    move p1, p0

    :cond_3
    return p1
.end method

.method protected final h(Lo/d;)Lp/f;
    .locals 2

    iget-object p0, p1, Lo/d;->f:Lo/d;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lo/d;->d:Lo/e;

    iget-object p0, p0, Lo/d;->e:Lo/d$a;

    sget-object v1, Lp/p$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lo/e;->f:Lp/n;

    iget-object p1, p0, Lp/p;->i:Lp/f;

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lo/e;->f:Lp/n;

    iget-object p1, p0, Lp/n;->k:Lp/f;

    goto :goto_0

    :cond_3
    iget-object p0, v0, Lo/e;->f:Lp/n;

    iget-object p1, p0, Lp/p;->h:Lp/f;

    goto :goto_0

    :cond_4
    iget-object p0, v0, Lo/e;->e:Lp/l;

    iget-object p1, p0, Lp/p;->i:Lp/f;

    goto :goto_0

    :cond_5
    iget-object p0, v0, Lo/e;->e:Lp/l;

    iget-object p1, p0, Lp/p;->h:Lp/f;

    :goto_0
    return-object p1
.end method

.method protected final i(Lo/d;I)Lp/f;
    .locals 1

    iget-object p0, p1, Lo/d;->f:Lo/d;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lo/d;->d:Lo/e;

    if-nez p2, :cond_1

    iget-object p2, v0, Lo/e;->e:Lp/l;

    goto :goto_0

    :cond_1
    iget-object p2, v0, Lo/e;->f:Lp/n;

    :goto_0
    iget-object p0, p0, Lo/d;->e:Lo/d$a;

    sget-object v0, Lp/p$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p2, Lp/p;->i:Lp/f;

    goto :goto_1

    :cond_3
    iget-object p1, p2, Lp/p;->h:Lp/f;

    :goto_1
    return-object p1
.end method

.method public j()J
    .locals 2

    iget-object p0, p0, Lp/p;->e:Lp/g;

    iget-boolean v0, p0, Lp/f;->j:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lp/f;->g:I

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lp/p;->g:Z

    return p0
.end method

.method abstract m()Z
.end method

.method protected n(Lp/d;Lo/d;Lo/d;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lp/p;->h(Lo/d;)Lp/f;

    move-result-object p1

    invoke-virtual {p0, p3}, Lp/p;->h(Lo/d;)Lp/f;

    move-result-object v0

    iget-boolean v1, p1, Lp/f;->j:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lp/f;->j:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p1, Lp/f;->g:I

    invoke-virtual {p2}, Lo/d;->f()I

    move-result p2

    add-int/2addr v1, p2

    iget p2, v0, Lp/f;->g:I

    invoke-virtual {p3}, Lo/d;->f()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int p3, p2, v1

    iget-object v2, p0, Lp/p;->e:Lp/g;

    iget-boolean v2, v2, Lp/f;->j:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lp/p;->d:Lo/e$b;

    sget-object v3, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    if-ne v2, v3, :cond_1

    invoke-direct {p0, p4, p3}, Lp/p;->l(II)V

    :cond_1
    iget-object v2, p0, Lp/p;->e:Lp/g;

    iget-boolean v3, v2, Lp/f;->j:Z

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget v2, v2, Lp/f;->g:I

    if-ne v2, p3, :cond_3

    iget-object p1, p0, Lp/p;->h:Lp/f;

    invoke-virtual {p1, v1}, Lp/f;->d(I)V

    iget-object p0, p0, Lp/p;->i:Lp/f;

    invoke-virtual {p0, p2}, Lp/f;->d(I)V

    return-void

    :cond_3
    if-nez p4, :cond_4

    iget-object p3, p0, Lp/p;->b:Lo/e;

    invoke-virtual {p3}, Lo/e;->A()F

    move-result p3

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lp/p;->b:Lo/e;

    invoke-virtual {p3}, Lo/e;->T()F

    move-result p3

    :goto_0
    const/high16 p4, 0x3f000000    # 0.5f

    if-ne p1, v0, :cond_5

    iget v1, p1, Lp/f;->g:I

    iget p2, v0, Lp/f;->g:I

    move p3, p4

    :cond_5
    sub-int/2addr p2, v1

    iget-object p1, p0, Lp/p;->e:Lp/g;

    iget p1, p1, Lp/f;->g:I

    sub-int/2addr p2, p1

    iget-object p1, p0, Lp/p;->h:Lp/f;

    int-to-float v0, v1

    add-float/2addr v0, p4

    int-to-float p2, p2

    mul-float/2addr p2, p3

    add-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Lp/f;->d(I)V

    iget-object p1, p0, Lp/p;->i:Lp/f;

    iget-object p2, p0, Lp/p;->h:Lp/f;

    iget p2, p2, Lp/f;->g:I

    iget-object p0, p0, Lp/p;->e:Lp/g;

    iget p0, p0, Lp/f;->g:I

    add-int/2addr p2, p0

    invoke-virtual {p1, p2}, Lp/f;->d(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method protected o(Lp/d;)V
    .locals 0

    return-void
.end method

.method protected p(Lp/d;)V
    .locals 0

    return-void
.end method
