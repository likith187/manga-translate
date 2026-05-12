.class public final Lt9/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt9/e;


# instance fields
.field public final a:Lt9/y;

.field public final b:Lt9/d;

.field public c:Z


# direct methods
.method public constructor <init>(Lt9/y;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/t;->a:Lt9/y;

    new-instance p1, Lt9/d;

    invoke-direct {p1}, Lt9/d;-><init>()V

    iput-object p1, p0, Lt9/t;->b:Lt9/d;

    return-void
.end method


# virtual methods
.method public E(I)Lt9/e;
    .locals 1

    iget-boolean v0, p0, Lt9/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lt9/t;->b:Lt9/d;

    invoke-virtual {v0, p1}, Lt9/d;->R0(I)Lt9/d;

    invoke-virtual {p0}, Lt9/t;->c()Lt9/e;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public L(I)Lt9/e;
    .locals 1

    iget-boolean v0, p0, Lt9/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lt9/t;->b:Lt9/d;

    invoke-virtual {v0, p1}, Lt9/d;->Q0(I)Lt9/d;

    invoke-virtual {p0}, Lt9/t;->c()Lt9/e;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public T(I)Lt9/e;
    .locals 1

    iget-boolean v0, p0, Lt9/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lt9/t;->b:Lt9/d;

    invoke-virtual {v0, p1}, Lt9/d;->O0(I)Lt9/d;

    invoke-virtual {p0}, Lt9/t;->c()Lt9/e;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public Z([B)Lt9/e;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lt9/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lt9/t;->b:Lt9/d;

    invoke-virtual {v0, p1}, Lt9/d;->L0([B)Lt9/d;

    invoke-virtual {p0}, Lt9/t;->c()Lt9/e;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()Lt9/e;
    .locals 4

    iget-boolean v0, p0, Lt9/t;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lt9/t;->b:Lt9/d;

    invoke-virtual {v0}, Lt9/d;->v()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lt9/t;->a:Lt9/y;

    iget-object v3, p0, Lt9/t;->b:Lt9/d;

    invoke-interface {v2, v3, v0, v1}, Lt9/y;->p(Lt9/d;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 4

    iget-boolean v0, p0, Lt9/t;->c:Z

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lt9/t;->b:Lt9/d;

    invoke-virtual {v0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lt9/t;->a:Lt9/y;

    iget-object v1, p0, Lt9/t;->b:Lt9/d;

    invoke-virtual {v1}, Lt9/d;->G0()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lt9/y;->p(Lt9/d;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    iget-object v1, p0, Lt9/t;->a:Lt9/y;

    invoke-interface {v1}, Lt9/y;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lt9/t;->c:Z

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    throw v0

    :cond_3
    :goto_3
    return-void
.end method

.method public d()Lt9/d;
    .locals 0

    iget-object p0, p0, Lt9/t;->b:Lt9/d;

    return-object p0
.end method

.method public f()Lt9/b0;
    .locals 0

    iget-object p0, p0, Lt9/t;->a:Lt9/y;

    invoke-interface {p0}, Lt9/y;->f()Lt9/b0;

    move-result-object p0

    return-object p0
.end method

.method public flush()V
    .locals 4

    iget-boolean v0, p0, Lt9/t;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lt9/t;->b:Lt9/d;

    invoke-virtual {v0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lt9/t;->a:Lt9/y;

    iget-object v1, p0, Lt9/t;->b:Lt9/d;

    invoke-virtual {v1}, Lt9/d;->G0()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lt9/y;->p(Lt9/d;J)V

    :cond_0
    iget-object p0, p0, Lt9/t;->a:Lt9/y;

    invoke-interface {p0}, Lt9/y;->flush()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h0(Lt9/g;)Lt9/e;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lt9/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lt9/t;->b:Lt9/d;

    invoke-virtual {v0, p1}, Lt9/d;->K0(Lt9/g;)Lt9/d;

    invoke-virtual {p0}, Lt9/t;->c()Lt9/e;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isOpen()Z
    .locals 0

    iget-boolean p0, p0, Lt9/t;->c:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public j([BII)Lt9/e;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lt9/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lt9/t;->b:Lt9/d;

    invoke-virtual {v0, p1, p2, p3}, Lt9/d;->M0([BII)Lt9/d;

    invoke-virtual {p0}, Lt9/t;->c()Lt9/e;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public p(Lt9/d;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lt9/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lt9/t;->b:Lt9/d;

    invoke-virtual {v0, p1, p2, p3}, Lt9/d;->p(Lt9/d;J)V

    invoke-virtual {p0}, Lt9/t;->c()Lt9/e;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public r(Ljava/lang/String;II)Lt9/e;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lt9/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lt9/t;->b:Lt9/d;

    invoke-virtual {v0, p1, p2, p3}, Lt9/d;->U0(Ljava/lang/String;II)Lt9/d;

    invoke-virtual {p0}, Lt9/t;->c()Lt9/e;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public s(J)Lt9/e;
    .locals 1

    iget-boolean v0, p0, Lt9/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lt9/t;->b:Lt9/d;

    invoke-virtual {v0, p1, p2}, Lt9/d;->P0(J)Lt9/d;

    invoke-virtual {p0}, Lt9/t;->c()Lt9/e;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lt9/t;->a:Lt9/y;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u0(Ljava/lang/String;)Lt9/e;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lt9/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lt9/t;->b:Lt9/d;

    invoke-virtual {v0, p1}, Lt9/d;->T0(Ljava/lang/String;)Lt9/d;

    invoke-virtual {p0}, Lt9/t;->c()Lt9/e;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lt9/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lt9/t;->b:Lt9/d;

    invoke-virtual {v0, p1}, Lt9/d;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p0}, Lt9/t;->c()Lt9/e;

    return p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
