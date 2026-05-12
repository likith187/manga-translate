.class public final Lt9/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt9/a0;


# instance fields
.field private a:B

.field private final b:Lt9/u;

.field private final c:Ljava/util/zip/Inflater;

.field private final f:Lt9/l;

.field private final h:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lt9/a0;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt9/u;

    invoke-direct {v0, p1}, Lt9/u;-><init>(Lt9/a0;)V

    iput-object v0, p0, Lt9/k;->b:Lt9/u;

    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lt9/k;->c:Ljava/util/zip/Inflater;

    new-instance v1, Lt9/l;

    invoke-direct {v1, v0, p1}, Lt9/l;-><init>(Lt9/f;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lt9/k;->f:Lt9/l;

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lt9/k;->h:Ljava/util/zip/CRC32;

    return-void
.end method

.method private final c(Ljava/lang/String;II)V
    .locals 0

    if-ne p3, p2, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p3, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(this, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final i()V
    .locals 17

    move-object/from16 v6, p0

    iget-object v0, v6, Lt9/k;->b:Lt9/u;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lt9/u;->r0(J)V

    iget-object v0, v6, Lt9/k;->b:Lt9/u;

    iget-object v0, v0, Lt9/u;->b:Lt9/d;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lt9/d;->D(J)B

    move-result v7

    shr-int/lit8 v0, v7, 0x1

    const/4 v8, 0x1

    and-int/2addr v0, v8

    const/4 v9, 0x0

    if-ne v0, v8, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    if-eqz v10, :cond_1

    iget-object v0, v6, Lt9/k;->b:Lt9/u;

    iget-object v1, v0, Lt9/u;->b:Lt9/d;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lt9/k;->v(Lt9/d;JJ)V

    :cond_1
    iget-object v0, v6, Lt9/k;->b:Lt9/u;

    invoke-virtual {v0}, Lt9/u;->f0()S

    move-result v0

    const-string v1, "ID1ID2"

    const/16 v2, 0x1f8b

    invoke-direct {v6, v1, v2, v0}, Lt9/k;->c(Ljava/lang/String;II)V

    iget-object v0, v6, Lt9/k;->b:Lt9/u;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lt9/u;->A(J)V

    shr-int/lit8 v0, v7, 0x2

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_4

    iget-object v0, v6, Lt9/k;->b:Lt9/u;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lt9/u;->r0(J)V

    if-eqz v10, :cond_2

    iget-object v0, v6, Lt9/k;->b:Lt9/u;

    iget-object v1, v0, Lt9/u;->b:Lt9/d;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lt9/k;->v(Lt9/d;JJ)V

    :cond_2
    iget-object v0, v6, Lt9/k;->b:Lt9/u;

    iget-object v0, v0, Lt9/u;->b:Lt9/d;

    invoke-virtual {v0}, Lt9/d;->v0()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-long v11, v0

    iget-object v0, v6, Lt9/k;->b:Lt9/u;

    invoke-virtual {v0, v11, v12}, Lt9/u;->r0(J)V

    if-eqz v10, :cond_3

    iget-object v0, v6, Lt9/k;->b:Lt9/u;

    iget-object v1, v0, Lt9/u;->b:Lt9/d;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide v4, v11

    invoke-direct/range {v0 .. v5}, Lt9/k;->v(Lt9/d;JJ)V

    :cond_3
    iget-object v0, v6, Lt9/k;->b:Lt9/u;

    invoke-virtual {v0, v11, v12}, Lt9/u;->A(J)V

    :cond_4
    shr-int/lit8 v0, v7, 0x3

    and-int/2addr v0, v8

    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x1

    if-ne v0, v8, :cond_7

    iget-object v0, v6, Lt9/k;->b:Lt9/u;

    invoke-virtual {v0, v9}, Lt9/u;->c(B)J

    move-result-wide v15

    cmp-long v0, v15, v11

    if-eqz v0, :cond_6

    if-eqz v10, :cond_5

    iget-object v0, v6, Lt9/k;->b:Lt9/u;

    iget-object v1, v0, Lt9/u;->b:Lt9/d;

    const-wide/16 v2, 0x0

    add-long v4, v15, v13

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lt9/k;->v(Lt9/d;JJ)V

    :cond_5
    iget-object v0, v6, Lt9/k;->b:Lt9/u;

    add-long v1, v15, v13

    invoke-virtual {v0, v1, v2}, Lt9/u;->A(J)V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_7
    :goto_1
    shr-int/lit8 v0, v7, 0x4

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_a

    iget-object v0, v6, Lt9/k;->b:Lt9/u;

    invoke-virtual {v0, v9}, Lt9/u;->c(B)J

    move-result-wide v7

    cmp-long v0, v7, v11

    if-eqz v0, :cond_9

    if-eqz v10, :cond_8

    iget-object v0, v6, Lt9/k;->b:Lt9/u;

    iget-object v1, v0, Lt9/u;->b:Lt9/d;

    const-wide/16 v2, 0x0

    add-long v4, v7, v13

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lt9/k;->v(Lt9/d;JJ)V

    :cond_8
    iget-object v0, v6, Lt9/k;->b:Lt9/u;

    add-long/2addr v7, v13

    invoke-virtual {v0, v7, v8}, Lt9/u;->A(J)V

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_a
    :goto_2
    if-eqz v10, :cond_b

    iget-object v0, v6, Lt9/k;->b:Lt9/u;

    invoke-virtual {v0}, Lt9/u;->B()S

    move-result v0

    iget-object v1, v6, Lt9/k;->h:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-short v1, v1

    const-string v2, "FHCRC"

    invoke-direct {v6, v2, v0, v1}, Lt9/k;->c(Ljava/lang/String;II)V

    iget-object v0, v6, Lt9/k;->h:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    :cond_b
    return-void
.end method

.method private final k()V
    .locals 3

    iget-object v0, p0, Lt9/k;->b:Lt9/u;

    invoke-virtual {v0}, Lt9/u;->x()I

    move-result v0

    iget-object v1, p0, Lt9/k;->h:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "CRC"

    invoke-direct {p0, v2, v0, v1}, Lt9/k;->c(Ljava/lang/String;II)V

    iget-object v0, p0, Lt9/k;->b:Lt9/u;

    invoke-virtual {v0}, Lt9/u;->x()I

    move-result v0

    iget-object v1, p0, Lt9/k;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "ISIZE"

    invoke-direct {p0, v2, v0, v1}, Lt9/k;->c(Ljava/lang/String;II)V

    return-void
.end method

.method private final v(Lt9/d;JJ)V
    .locals 4

    iget-object p1, p1, Lt9/d;->a:Lt9/v;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    :goto_0
    iget v0, p1, Lt9/v;->c:I

    iget v1, p1, Lt9/v;->b:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    iget-object p1, p1, Lt9/v;->f:Lt9/v;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    iget v2, p1, Lt9/v;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int p2, v2

    iget p3, p1, Lt9/v;->c:I

    sub-int/2addr p3, p2

    int-to-long v2, p3

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    iget-object v2, p0, Lt9/k;->h:Ljava/util/zip/CRC32;

    iget-object v3, p1, Lt9/v;->a:[B

    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    iget-object p1, p1, Lt9/v;->f:Lt9/v;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lt9/k;->f:Lt9/l;

    invoke-virtual {p0}, Lt9/l;->close()V

    return-void
.end method

.method public f()Lt9/b0;
    .locals 0

    iget-object p0, p0, Lt9/k;->b:Lt9/u;

    invoke-virtual {p0}, Lt9/u;->f()Lt9/b0;

    move-result-object p0

    return-object p0
.end method

.method public i0(Lt9/d;J)J
    .locals 11

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_6

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-byte v0, p0, Lt9/k;->a:B

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lt9/k;->i()V

    iput-byte v1, p0, Lt9/k;->a:B

    :cond_1
    iget-byte v0, p0, Lt9/k;->a:B

    const/4 v2, 0x2

    const-wide/16 v3, -0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lt9/d;->G0()J

    move-result-wide v7

    iget-object v0, p0, Lt9/k;->f:Lt9/l;

    invoke-virtual {v0, p1, p2, p3}, Lt9/l;->i0(Lt9/d;J)J

    move-result-wide p2

    cmp-long v0, p2, v3

    if-eqz v0, :cond_2

    move-object v5, p0

    move-object v6, p1

    move-wide v9, p2

    invoke-direct/range {v5 .. v10}, Lt9/k;->v(Lt9/d;JJ)V

    return-wide p2

    :cond_2
    iput-byte v2, p0, Lt9/k;->a:B

    :cond_3
    iget-byte p1, p0, Lt9/k;->a:B

    if-ne p1, v2, :cond_5

    invoke-direct {p0}, Lt9/k;->k()V

    const/4 p1, 0x3

    iput-byte p1, p0, Lt9/k;->a:B

    iget-object p0, p0, Lt9/k;->b:Lt9/u;

    invoke-virtual {p0}, Lt9/u;->S()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "gzip finished without exhausting source"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    return-wide v3

    :cond_6
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
