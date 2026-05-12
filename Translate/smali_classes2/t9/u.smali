.class public final Lt9/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt9/f;


# instance fields
.field public final a:Lt9/a0;

.field public final b:Lt9/d;

.field public c:Z


# direct methods
.method public constructor <init>(Lt9/a0;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/u;->a:Lt9/a0;

    new-instance p1, Lt9/d;

    invoke-direct {p1}, Lt9/d;-><init>()V

    iput-object p1, p0, Lt9/u;->b:Lt9/d;

    return-void
.end method


# virtual methods
.method public A(J)V
    .locals 4

    iget-boolean v0, p0, Lt9/u;->c:Z

    if-nez v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object v2, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {v2}, Lt9/d;->G0()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lt9/u;->a:Lt9/a0;

    iget-object v1, p0, Lt9/u;->b:Lt9/d;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lt9/a0;->i0(Lt9/d;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    :goto_1
    iget-object v0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {v0}, Lt9/d;->G0()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {v2, v0, v1}, Lt9/d;->A(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public A0(Lt9/q;)I
    .locals 5

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lt9/u;->c:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lt9/u;->b:Lt9/d;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lu9/a;->d(Lt9/d;Lt9/q;Z)I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lt9/q;->d()[Lt9/g;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lt9/g;->size()I

    move-result p1

    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lt9/d;->A(J)V

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lt9/u;->a:Lt9/a0;

    iget-object v1, p0, Lt9/u;->b:Lt9/d;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v1, v3, v4}, Lt9/a0;->i0(Lt9/d;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    goto :goto_0

    :goto_1
    return v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public B()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lt9/u;->r0(J)V

    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {p0}, Lt9/d;->v0()S

    move-result p0

    return p0
.end method

.method public B0()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lt9/u$a;

    invoke-direct {v0, p0}, Lt9/u$a;-><init>(Lt9/u;)V

    return-object v0
.end method

.method public C0()B
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lt9/u;->r0(J)V

    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {p0}, Lt9/d;->C0()B

    move-result p0

    return p0
.end method

.method public F(J)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lt9/u;->c:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {v0}, Lt9/d;->G0()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    iget-object v0, p0, Lt9/u;->a:Lt9/a0;

    iget-object v1, p0, Lt9/u;->b:Lt9/d;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lt9/a0;->i0(Lt9/d;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public K()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lt9/u;->r0(J)V

    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {p0}, Lt9/d;->K()I

    move-result p0

    return p0
.end method

.method public O()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lt9/u;->d0(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Q()[B
    .locals 2

    iget-object v0, p0, Lt9/u;->b:Lt9/d;

    iget-object v1, p0, Lt9/u;->a:Lt9/a0;

    invoke-virtual {v0, v1}, Lt9/d;->N0(Lt9/a0;)J

    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {p0}, Lt9/d;->Q()[B

    move-result-object p0

    return-object p0
.end method

.method public R(Lt9/g;)J
    .locals 2

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lt9/u;->v(Lt9/g;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public S()Z
    .locals 4

    iget-boolean v0, p0, Lt9/u;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {v0}, Lt9/d;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt9/u;->a:Lt9/a0;

    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    const-wide/16 v1, 0x2000

    invoke-interface {v0, p0, v1, v2}, Lt9/a0;->i0(Lt9/d;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public U(J)[B
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt9/u;->r0(J)V

    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {p0, p1, p2}, Lt9/d;->U(J)[B

    move-result-object p0

    return-object p0
.end method

.method public c(B)J
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lt9/u;->i(BJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lt9/u;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt9/u;->c:Z

    iget-object v0, p0, Lt9/u;->a:Lt9/a0;

    invoke-interface {v0}, Lt9/a0;->close()V

    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {p0}, Lt9/d;->i()V

    :cond_0
    return-void
.end method

.method public d()Lt9/d;
    .locals 0

    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    return-object p0
.end method

.method public d0(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    move-wide v5, v0

    goto :goto_0

    :cond_0
    add-long v5, p1, v3

    :goto_0
    const/16 v8, 0xa

    const-wide/16 v9, 0x0

    move-object v7, p0

    move-wide v11, v5

    invoke-virtual/range {v7 .. v12}, Lt9/u;->i(BJJ)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-eqz v2, :cond_1

    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    invoke-static {p0, v7, v8}, Lu9/a;->c(Lt9/d;J)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    cmp-long v0, v5, v0

    if-gez v0, :cond_2

    invoke-virtual {p0, v5, v6}, Lt9/u;->F(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt9/u;->b:Lt9/d;

    sub-long v1, v5, v3

    invoke-virtual {v0, v1, v2}, Lt9/d;->D(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    add-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lt9/u;->F(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {v0, v5, v6}, Lt9/d;->D(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    invoke-static {p0, v5, v6}, Lu9/a;->c(Lt9/d;J)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    new-instance v6, Lt9/d;

    invoke-direct {v6}, Lt9/d;-><init>()V

    iget-object v0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {v0}, Lt9/d;->G0()J

    move-result-wide v1

    const/16 v3, 0x20

    int-to-long v3, v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lt9/d;->B(Lt9/d;JJ)Lt9/d;

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " content="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lt9/d;->a0()Lt9/g;

    move-result-object p0

    invoke-virtual {p0}, Lt9/g;->hex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2026

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "limit < 0: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()Lt9/b0;
    .locals 0

    iget-object p0, p0, Lt9/u;->a:Lt9/a0;

    invoke-interface {p0}, Lt9/a0;->f()Lt9/b0;

    move-result-object p0

    return-object p0
.end method

.method public f0()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lt9/u;->r0(J)V

    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {p0}, Lt9/d;->f0()S

    move-result p0

    return p0
.end method

.method public i(BJJ)J
    .locals 9

    iget-boolean v0, p0, Lt9/u;->c:Z

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p2

    if-gtz v0, :cond_3

    cmp-long v0, p2, p4

    if-gtz v0, :cond_3

    :goto_0
    cmp-long v0, p2, p4

    const-wide/16 v7, -0x1

    if-gez v0, :cond_2

    iget-object v1, p0, Lt9/u;->b:Lt9/d;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lt9/d;->G(BJJ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_0

    move-wide v7, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {v0}, Lt9/d;->G0()J

    move-result-wide v0

    cmp-long v2, v0, p4

    if-gez v2, :cond_2

    iget-object v2, p0, Lt9/u;->a:Lt9/a0;

    iget-object v3, p0, Lt9/u;->b:Lt9/d;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Lt9/a0;->i0(Lt9/d;J)J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v7

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "fromIndex="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " toIndex="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public i0(Lt9/d;J)J
    .locals 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    iget-boolean v2, p0, Lt9/u;->c:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {v2}, Lt9/d;->G0()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lt9/u;->a:Lt9/a0;

    iget-object v1, p0, Lt9/u;->b:Lt9/d;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lt9/a0;->i0(Lt9/d;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {v0}, Lt9/d;->G0()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {p0, p1, p2, p3}, Lt9/d;->i0(Lt9/d;J)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "byteCount < 0: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isOpen()Z
    .locals 0

    iget-boolean p0, p0, Lt9/u;->c:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public j0()Lt9/f;
    .locals 1

    new-instance v0, Lt9/s;

    invoke-direct {v0, p0}, Lt9/s;-><init>(Lt9/f;)V

    invoke-static {v0}, Lt9/n;->b(Lt9/a0;)Lt9/f;

    move-result-object p0

    return-object p0
.end method

.method public k(Lt9/g;J)J
    .locals 8

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lt9/u;->c:Z

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {v0, p1, p2, p3}, Lt9/d;->I(Lt9/g;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {v0}, Lt9/d;->G0()J

    move-result-wide v0

    iget-object v4, p0, Lt9/u;->a:Lt9/a0;

    iget-object v5, p0, Lt9/u;->b:Lt9/d;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lt9/a0;->i0(Lt9/d;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    :goto_1
    return-wide v0

    :cond_1
    invoke-virtual {p1}, Lt9/g;->size()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public n0(Lt9/g;)J
    .locals 2

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lt9/u;->k(Lt9/g;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public r0(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt9/u;->F(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {v0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lt9/u;->a:Lt9/a0;

    iget-object v1, p0, Lt9/u;->b:Lt9/d;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lt9/a0;->i0(Lt9/d;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {p0, p1}, Lt9/d;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lt9/u;->a:Lt9/a0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Lt9/d;
    .locals 0

    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    return-object p0
.end method

.method public v(Lt9/g;J)J
    .locals 8

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lt9/u;->c:Z

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {v0, p1, p2, p3}, Lt9/d;->N(Lt9/g;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {v0}, Lt9/d;->G0()J

    move-result-wide v0

    iget-object v4, p0, Lt9/u;->a:Lt9/a0;

    iget-object v5, p0, Lt9/u;->b:Lt9/d;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lt9/a0;->i0(Lt9/d;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    :goto_1
    return-wide v0

    :cond_1
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public w(J)Lt9/g;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt9/u;->r0(J)V

    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {p0, p1, p2}, Lt9/d;->w(J)Lt9/g;

    move-result-object p0

    return-object p0
.end method

.method public x()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lt9/u;->r0(J)V

    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {p0}, Lt9/d;->q0()I

    move-result p0

    return p0
.end method

.method public z0()J
    .locals 5

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lt9/u;->r0(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lt9/u;->F(J)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lt9/u;->b:Lt9/d;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lt9/d;->D(J)B

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_3

    const/16 v3, 0x46

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-static {v1}, Lkotlin/text/a;->a(I)I

    move-result v1

    invoke-static {v1}, Lkotlin/text/a;->a(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(this, checkRadix(radix))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    iget-object p0, p0, Lt9/u;->b:Lt9/d;

    invoke-virtual {p0}, Lt9/d;->z0()J

    move-result-wide v0

    return-wide v0
.end method
