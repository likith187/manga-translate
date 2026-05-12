.class final Lt9/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt9/y;


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private final b:Lt9/b0;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lt9/b0;)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/r;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lt9/r;->b:Lt9/b0;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lt9/r;->a:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public f()Lt9/b0;
    .locals 0

    iget-object p0, p0, Lt9/r;->b:Lt9/b0;

    return-object p0
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Lt9/r;->a:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public p(Lt9/d;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lt9/d;->G0()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lt9/b;->b(JJJ)V

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lt9/r;->b:Lt9/b0;

    invoke-virtual {v0}, Lt9/b0;->f()V

    iget-object v0, p1, Lt9/d;->a:Lt9/v;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v1, v0, Lt9/v;->c:I

    iget v2, v0, Lt9/v;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lt9/r;->a:Ljava/io/OutputStream;

    iget-object v3, v0, Lt9/v;->a:[B

    iget v4, v0, Lt9/v;->b:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    iget v2, v0, Lt9/v;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lt9/v;->b:I

    int-to-long v1, v1

    sub-long/2addr p2, v1

    invoke-virtual {p1}, Lt9/d;->G0()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Lt9/d;->F0(J)V

    iget v1, v0, Lt9/v;->b:I

    iget v2, v0, Lt9/v;->c:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lt9/v;->b()Lt9/v;

    move-result-object v1

    iput-object v1, p1, Lt9/d;->a:Lt9/v;

    invoke-static {v0}, Lt9/w;->b(Lt9/v;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lt9/r;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
