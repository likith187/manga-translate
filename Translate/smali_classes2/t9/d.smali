.class public final Lt9/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt9/f;
.implements Lt9/e;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt9/d$a;
    }
.end annotation


# instance fields
.field public a:Lt9/v;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(J)V
    .locals 6

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lt9/d;->a:Lt9/v;

    if-eqz v0, :cond_1

    iget v1, v0, Lt9/v;->c:I

    iget v2, v0, Lt9/v;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v2

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lt9/d;->F0(J)V

    sub-long/2addr p1, v4

    iget v2, v0, Lt9/v;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lt9/v;->b:I

    iget v1, v0, Lt9/v;->c:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lt9/v;->b()Lt9/v;

    move-result-object v1

    iput-object v1, p0, Lt9/d;->a:Lt9/v;

    invoke-static {v0}, Lt9/w;->b(Lt9/v;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2
    return-void
.end method

.method public A0(Lt9/q;)I
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lu9/a;->e(Lt9/d;Lt9/q;ZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lt9/q;->d()[Lt9/g;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lt9/g;->size()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lt9/d;->A(J)V

    :goto_0
    return v0
.end method

.method public final B(Lt9/d;JJ)Lt9/d;
    .locals 7

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lt9/b;->b(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lt9/d;->G0()J

    move-result-wide v2

    add-long/2addr v2, p4

    invoke-virtual {p1, v2, v3}, Lt9/d;->F0(J)V

    iget-object v2, p0, Lt9/d;->a:Lt9/v;

    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v3, v2, Lt9/v;->c:I

    iget v4, v2, Lt9/v;->b:I

    sub-int v5, v3, v4

    int-to-long v5, v5

    cmp-long v5, p2, v5

    if-ltz v5, :cond_1

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    iget-object v2, v2, Lt9/v;->f:Lt9/v;

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v3, p4, v0

    if-lez v3, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lt9/v;->d()Lt9/v;

    move-result-object v3

    iget v4, v3, Lt9/v;->b:I

    long-to-int p2, p2

    add-int/2addr v4, p2

    iput v4, v3, Lt9/v;->b:I

    long-to-int p2, p4

    add-int/2addr v4, p2

    iget p2, v3, Lt9/v;->c:I

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Lt9/v;->c:I

    iget-object p2, p1, Lt9/d;->a:Lt9/v;

    if-nez p2, :cond_2

    iput-object v3, v3, Lt9/v;->g:Lt9/v;

    iput-object v3, v3, Lt9/v;->f:Lt9/v;

    iput-object v3, p1, Lt9/d;->a:Lt9/v;

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object p2, p2, Lt9/v;->g:Lt9/v;

    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Lt9/v;->c(Lt9/v;)Lt9/v;

    :goto_2
    iget p2, v3, Lt9/v;->c:I

    iget p3, v3, Lt9/v;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    iget-object v2, v2, Lt9/v;->f:Lt9/v;

    move-wide p2, v0

    goto :goto_1

    :cond_3
    :goto_3
    return-object p0
.end method

.method public B0()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lt9/d$b;

    invoke-direct {v0, p0}, Lt9/d$b;-><init>(Lt9/d;)V

    return-object v0
.end method

.method public C0()B
    .locals 9

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt9/d;->a:Lt9/v;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v1, v0, Lt9/v;->b:I

    iget v2, v0, Lt9/v;->c:I

    iget-object v3, v0, Lt9/v;->a:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-virtual {p0, v5, v6}, Lt9/d;->F0(J)V

    if-ne v4, v2, :cond_0

    invoke-virtual {v0}, Lt9/v;->b()Lt9/v;

    move-result-object v2

    iput-object v2, p0, Lt9/d;->a:Lt9/v;

    invoke-static {v0}, Lt9/w;->b(Lt9/v;)V

    goto :goto_0

    :cond_0
    iput v4, v0, Lt9/v;->b:I

    :goto_0
    return v1

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final D(J)B
    .locals 6

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lt9/b;->b(JJJ)V

    iget-object v0, p0, Lt9/d;->a:Lt9/v;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v1

    sub-long/2addr v1, p1

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v1

    :goto_0
    cmp-long p0, v1, p1

    if-lez p0, :cond_0

    iget-object v0, v0, Lt9/v;->g:Lt9/v;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget p0, v0, Lt9/v;->c:I

    iget v3, v0, Lt9/v;->b:I

    sub-int/2addr p0, v3

    int-to-long v3, p0

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object p0, v0, Lt9/v;->a:[B

    iget v0, v0, Lt9/v;->b:I

    int-to-long v3, v0

    add-long/2addr v3, p1

    sub-long/2addr v3, v1

    long-to-int p1, v3

    aget-byte p0, p0, p1

    goto :goto_2

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    iget p0, v0, Lt9/v;->c:I

    iget v3, v0, Lt9/v;->b:I

    sub-int/2addr p0, v3

    int-to-long v3, p0

    add-long/2addr v3, v1

    cmp-long p0, v3, p1

    if-gtz p0, :cond_2

    iget-object v0, v0, Lt9/v;->f:Lt9/v;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-wide v1, v3

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object p0, v0, Lt9/v;->a:[B

    iget v0, v0, Lt9/v;->b:I

    int-to-long v3, v0

    add-long/2addr v3, p1

    sub-long/2addr v3, v1

    long-to-int p1, v3

    aget-byte p0, p0, p1

    :goto_2
    return p0

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    throw p0
.end method

.method public D0()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lt9/d;->b:J

    sget-object v2, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lt9/d;->x0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic E(I)Lt9/e;
    .locals 0

    invoke-virtual {p0, p1}, Lt9/d;->R0(I)Lt9/d;

    move-result-object p0

    return-object p0
.end method

.method public E0(J)Ljava/lang/String;
    .locals 1

    sget-object v0, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lt9/d;->x0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public F(J)Z
    .locals 2

    iget-wide v0, p0, Lt9/d;->b:J

    cmp-long p0, v0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final F0(J)V
    .locals 0

    iput-wide p1, p0, Lt9/d;->b:J

    return-void
.end method

.method public G(BJJ)J
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p2

    if-gtz v2, :cond_b

    cmp-long v2, p2, p4

    if-gtz v2, :cond_b

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide p4

    :cond_0
    cmp-long v2, p2, p4

    const-wide/16 v3, -0x1

    if-nez v2, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v2, p0, Lt9/d;->a:Lt9/v;

    if-nez v2, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v5

    sub-long/2addr v5, p2

    cmp-long v5, v5, p2

    if-gez v5, :cond_6

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    :goto_0
    cmp-long p0, v0, p2

    if-lez p0, :cond_3

    iget-object v2, v2, Lt9/v;->g:Lt9/v;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget p0, v2, Lt9/v;->c:I

    iget v5, v2, Lt9/v;->b:I

    sub-int/2addr p0, v5

    int-to-long v5, p0

    sub-long/2addr v0, v5

    goto :goto_0

    :cond_3
    :goto_1
    cmp-long p0, v0, p4

    if-gez p0, :cond_a

    iget-object p0, v2, Lt9/v;->a:[B

    iget v5, v2, Lt9/v;->c:I

    int-to-long v5, v5

    iget v7, v2, Lt9/v;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p4

    sub-long/2addr v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    iget v6, v2, Lt9/v;->b:I

    int-to-long v6, v6

    add-long/2addr v6, p2

    sub-long/2addr v6, v0

    long-to-int p2, v6

    :goto_2
    if-ge p2, v5, :cond_5

    aget-byte p3, p0, p2

    if-ne p3, p1, :cond_4

    :goto_3
    iget p0, v2, Lt9/v;->b:I

    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long v3, p0, v0

    goto :goto_7

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    iget p0, v2, Lt9/v;->c:I

    iget p2, v2, Lt9/v;->b:I

    sub-int/2addr p0, p2

    int-to-long p2, p0

    add-long/2addr v0, p2

    iget-object v2, v2, Lt9/v;->f:Lt9/v;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_1

    :cond_6
    :goto_4
    iget p0, v2, Lt9/v;->c:I

    iget v5, v2, Lt9/v;->b:I

    sub-int/2addr p0, v5

    int-to-long v5, p0

    add-long/2addr v5, v0

    cmp-long p0, v5, p2

    if-gtz p0, :cond_7

    iget-object v2, v2, Lt9/v;->f:Lt9/v;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-wide v0, v5

    goto :goto_4

    :cond_7
    :goto_5
    cmp-long p0, v0, p4

    if-gez p0, :cond_a

    iget-object p0, v2, Lt9/v;->a:[B

    iget v5, v2, Lt9/v;->c:I

    int-to-long v5, v5

    iget v7, v2, Lt9/v;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p4

    sub-long/2addr v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    iget v6, v2, Lt9/v;->b:I

    int-to-long v6, v6

    add-long/2addr v6, p2

    sub-long/2addr v6, v0

    long-to-int p2, v6

    :goto_6
    if-ge p2, v5, :cond_9

    aget-byte p3, p0, p2

    if-ne p3, p1, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_9
    iget p0, v2, Lt9/v;->c:I

    iget p2, v2, Lt9/v;->b:I

    sub-int/2addr p0, p2

    int-to-long p2, p0

    add-long/2addr v0, p2

    iget-object v2, v2, Lt9/v;->f:Lt9/v;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_5

    :cond_a
    :goto_7
    return-wide v3

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " fromIndex="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " toIndex="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final G0()J
    .locals 2

    iget-wide v0, p0, Lt9/d;->b:J

    return-wide v0
.end method

.method public final H0()Lt9/g;
    .locals 4

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lt9/d;->I0(I)Lt9/g;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size > Int.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public I(Lt9/g;J)J
    .locals 18

    move-wide/from16 v0, p2

    const-string v2, "bytes"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lt9/g;->size()I

    move-result v2

    if-lez v2, :cond_b

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_a

    move-object/from16 v2, p0

    iget-object v6, v2, Lt9/d;->a:Lt9/v;

    if-nez v6, :cond_1

    :cond_0
    const-wide/16 v7, -0x1

    goto/16 :goto_7

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lt9/d;->G0()J

    move-result-wide v9

    sub-long/2addr v9, v0

    cmp-long v9, v9, v0

    const-wide/16 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-gez v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Lt9/d;->G0()J

    move-result-wide v4

    :goto_0
    cmp-long v9, v4, v0

    if-lez v9, :cond_2

    iget-object v6, v6, Lt9/v;->g:Lt9/v;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v9, v6, Lt9/v;->c:I

    iget v14, v6, Lt9/v;->b:I

    sub-int/2addr v9, v14

    int-to-long v14, v9

    sub-long/2addr v4, v14

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lt9/g;->internalArray$okio()[B

    move-result-object v9

    aget-byte v12, v9, v12

    invoke-virtual/range {p1 .. p1}, Lt9/g;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lt9/d;->G0()J

    move-result-wide v14

    int-to-long v7, v3

    sub-long/2addr v14, v7

    add-long/2addr v14, v10

    :goto_1
    cmp-long v2, v4, v14

    if-gez v2, :cond_0

    iget-object v2, v6, Lt9/v;->a:[B

    iget v7, v6, Lt9/v;->c:I

    iget v8, v6, Lt9/v;->b:I

    int-to-long v10, v8

    add-long/2addr v10, v14

    sub-long/2addr v10, v4

    int-to-long v7, v7

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    iget v8, v6, Lt9/v;->b:I

    int-to-long v10, v8

    add-long/2addr v10, v0

    sub-long/2addr v10, v4

    long-to-int v0, v10

    :goto_2
    if-ge v0, v7, :cond_4

    aget-byte v1, v2, v0

    if-ne v1, v12, :cond_3

    add-int/lit8 v1, v0, 0x1

    invoke-static {v6, v1, v9, v13, v3}, Lu9/a;->b(Lt9/v;I[BII)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_3
    iget v1, v6, Lt9/v;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long v7, v0, v4

    goto/16 :goto_7

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget v0, v6, Lt9/v;->c:I

    iget v1, v6, Lt9/v;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v4, v0

    iget-object v6, v6, Lt9/v;->f:Lt9/v;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-wide v0, v4

    goto :goto_1

    :cond_5
    :goto_4
    iget v7, v6, Lt9/v;->c:I

    iget v8, v6, Lt9/v;->b:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v4

    cmp-long v9, v7, v0

    if-gtz v9, :cond_6

    iget-object v6, v6, Lt9/v;->f:Lt9/v;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-wide v4, v7

    goto :goto_4

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lt9/g;->internalArray$okio()[B

    move-result-object v7

    aget-byte v8, v7, v12

    invoke-virtual/range {p1 .. p1}, Lt9/g;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lt9/d;->G0()J

    move-result-wide v14

    move-wide/from16 v16, v4

    int-to-long v4, v3

    sub-long/2addr v14, v4

    add-long/2addr v14, v10

    move-wide/from16 v4, v16

    :goto_5
    cmp-long v2, v4, v14

    if-gez v2, :cond_0

    iget-object v2, v6, Lt9/v;->a:[B

    iget v9, v6, Lt9/v;->c:I

    iget v10, v6, Lt9/v;->b:I

    int-to-long v10, v10

    add-long/2addr v10, v14

    sub-long/2addr v10, v4

    move-wide/from16 p0, v14

    int-to-long v13, v9

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    iget v10, v6, Lt9/v;->b:I

    int-to-long v10, v10

    add-long/2addr v10, v0

    sub-long/2addr v10, v4

    long-to-int v0, v10

    :goto_6
    if-ge v0, v9, :cond_9

    aget-byte v1, v2, v0

    if-ne v1, v8, :cond_7

    add-int/lit8 v1, v0, 0x1

    const/4 v10, 0x1

    invoke-static {v6, v1, v7, v10, v3}, Lu9/a;->b(Lt9/v;I[BII)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_7
    const/4 v10, 0x1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v10, 0x1

    iget v0, v6, Lt9/v;->c:I

    iget v1, v6, Lt9/v;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v4, v0

    iget-object v6, v6, Lt9/v;->f:Lt9/v;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-wide/from16 v14, p0

    move-wide v0, v4

    move v13, v10

    goto :goto_5

    :goto_7
    return-wide v7

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fromIndex < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final I0(I)Lt9/g;
    .locals 7

    if-nez p1, :cond_0

    sget-object p0, Lt9/g;->EMPTY:Lt9/g;

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, Lt9/b;->b(JJJ)V

    iget-object v0, p0, Lt9/d;->a:Lt9/v;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v4, v0, Lt9/v;->c:I

    iget v5, v0, Lt9/v;->b:I

    if-eq v4, v5, :cond_1

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lt9/v;->f:Lt9/v;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "s.limit == s.pos"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    new-array v0, v3, [[B

    mul-int/lit8 v2, v3, 0x2

    new-array v2, v2, [I

    iget-object p0, p0, Lt9/d;->a:Lt9/v;

    move v4, v1

    :goto_1
    if-ge v1, p1, :cond_3

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v5, p0, Lt9/v;->a:[B

    aput-object v5, v0, v4

    iget v5, p0, Lt9/v;->c:I

    iget v6, p0, Lt9/v;->b:I

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v2, v4

    add-int v5, v4, v3

    iget v6, p0, Lt9/v;->b:I

    aput v6, v2, v5

    const/4 v5, 0x1

    iput-boolean v5, p0, Lt9/v;->d:Z

    add-int/2addr v4, v5

    iget-object p0, p0, Lt9/v;->f:Lt9/v;

    goto :goto_1

    :cond_3
    new-instance p0, Lt9/x;

    invoke-direct {p0, v0, v2}, Lt9/x;-><init>([[B[I)V

    :goto_2
    return-object p0
.end method

.method public final J0(I)Lt9/v;
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_3

    iget-object v1, p0, Lt9/d;->a:Lt9/v;

    if-nez v1, :cond_0

    invoke-static {}, Lt9/w;->c()Lt9/v;

    move-result-object p1

    iput-object p1, p0, Lt9/d;->a:Lt9/v;

    iput-object p1, p1, Lt9/v;->g:Lt9/v;

    iput-object p1, p1, Lt9/v;->f:Lt9/v;

    goto :goto_2

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object p0, v1, Lt9/v;->g:Lt9/v;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v1, p0, Lt9/v;->c:I

    add-int/2addr v1, p1

    if-gt v1, v0, :cond_2

    iget-boolean p1, p0, Lt9/v;->e:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {}, Lt9/w;->c()Lt9/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt9/v;->c(Lt9/v;)Lt9/v;

    move-result-object p0

    goto :goto_0

    :goto_2
    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unexpected capacity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public K()I
    .locals 9

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lt9/d;->a:Lt9/v;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v1, v0, Lt9/v;->b:I

    iget v4, v0, Lt9/v;->c:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    cmp-long v5, v5, v2

    if-gez v5, :cond_0

    invoke-virtual {p0}, Lt9/d;->C0()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lt9/d;->C0()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lt9/d;->C0()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lt9/d;->C0()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    goto :goto_1

    :cond_0
    iget-object v5, v0, Lt9/v;->a:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v7, v5, v1

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    add-int/lit8 v8, v1, 0x2

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v7, v1, 0x3

    aget-byte v8, v5, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    add-int/lit8 v1, v1, 0x4

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v6

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {p0, v6, v7}, Lt9/d;->F0(J)V

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Lt9/v;->b()Lt9/v;

    move-result-object v1

    iput-object v1, p0, Lt9/d;->a:Lt9/v;

    invoke-static {v0}, Lt9/w;->b(Lt9/v;)V

    goto :goto_0

    :cond_1
    iput v1, v0, Lt9/v;->b:I

    :goto_0
    move p0, v5

    :goto_1
    return p0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public K0(Lt9/g;)Lt9/d;
    .locals 2

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lt9/g;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lt9/g;->write$okio(Lt9/d;II)V

    return-object p0
.end method

.method public bridge synthetic L(I)Lt9/e;
    .locals 0

    invoke-virtual {p0, p1}, Lt9/d;->Q0(I)Lt9/d;

    move-result-object p0

    return-object p0
.end method

.method public L0([B)Lt9/d;
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lt9/d;->M0([BII)Lt9/d;

    move-result-object p0

    return-object p0
.end method

.method public M0([BII)Lt9/d;
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lt9/b;->b(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lt9/d;->J0(I)Lt9/v;

    move-result-object v0

    sub-int v1, p3, p2

    iget v2, v0, Lt9/v;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lt9/v;->a:[B

    iget v3, v0, Lt9/v;->c:I

    add-int v4, p2, v1

    invoke-static {p1, v2, v3, p2, v4}, Lkotlin/collections/i;->g([B[BIII)[B

    iget p2, v0, Lt9/v;->c:I

    add-int/2addr p2, v1

    iput p2, v0, Lt9/v;->c:I

    move p2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide p1

    add-long/2addr p1, v7

    invoke-virtual {p0, p1, p2}, Lt9/d;->F0(J)V

    return-object p0
.end method

.method public N(Lt9/g;J)J
    .locals 11

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_12

    iget-object v2, p0, Lt9/d;->a:Lt9/v;

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    goto/16 :goto_f

    :cond_0
    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v5

    sub-long/2addr v5, p2

    cmp-long v5, v5, p2

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gez v5, :cond_9

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    :goto_0
    cmp-long v5, v0, p2

    if-lez v5, :cond_1

    iget-object v2, v2, Lt9/v;->g:Lt9/v;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v5, v2, Lt9/v;->c:I

    iget v9, v2, Lt9/v;->b:I

    sub-int/2addr v5, v9

    int-to-long v9, v5

    sub-long/2addr v0, v9

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lt9/g;->size()I

    move-result v5

    if-ne v5, v6, :cond_5

    invoke-virtual {p1, v7}, Lt9/g;->getByte(I)B

    move-result v5

    invoke-virtual {p1, v8}, Lt9/g;->getByte(I)B

    move-result p1

    :goto_1
    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-gez v6, :cond_11

    iget-object v6, v2, Lt9/v;->a:[B

    iget v7, v2, Lt9/v;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    iget p3, v2, Lt9/v;->c:I

    :goto_2
    if-ge p2, p3, :cond_4

    aget-byte v7, v6, p2

    if-eq v7, v5, :cond_3

    if-ne v7, p1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget p0, v2, Lt9/v;->b:I

    :goto_4
    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long v3, p0, v0

    goto/16 :goto_f

    :cond_4
    iget p2, v2, Lt9/v;->c:I

    iget p3, v2, Lt9/v;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v2, v2, Lt9/v;->f:Lt9/v;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lt9/g;->internalArray$okio()[B

    move-result-object p1

    :goto_5
    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_11

    iget-object v5, v2, Lt9/v;->a:[B

    iget v6, v2, Lt9/v;->b:I

    int-to-long v8, v6

    add-long/2addr v8, p2

    sub-long/2addr v8, v0

    long-to-int p2, v8

    iget p3, v2, Lt9/v;->c:I

    :goto_6
    if-ge p2, p3, :cond_8

    aget-byte v6, v5, p2

    array-length v8, p1

    move v9, v7

    :goto_7
    if-ge v9, v8, :cond_7

    aget-byte v10, p1, v9

    if-ne v6, v10, :cond_6

    :goto_8
    iget p0, v2, Lt9/v;->b:I

    goto :goto_4

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_8
    iget p2, v2, Lt9/v;->c:I

    iget p3, v2, Lt9/v;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v2, v2, Lt9/v;->f:Lt9/v;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_5

    :cond_9
    :goto_9
    iget v5, v2, Lt9/v;->c:I

    iget v9, v2, Lt9/v;->b:I

    sub-int/2addr v5, v9

    int-to-long v9, v5

    add-long/2addr v9, v0

    cmp-long v5, v9, p2

    if-gtz v5, :cond_a

    iget-object v2, v2, Lt9/v;->f:Lt9/v;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-wide v0, v9

    goto :goto_9

    :cond_a
    invoke-virtual {p1}, Lt9/g;->size()I

    move-result v5

    if-ne v5, v6, :cond_d

    invoke-virtual {p1, v7}, Lt9/g;->getByte(I)B

    move-result v5

    invoke-virtual {p1, v8}, Lt9/g;->getByte(I)B

    move-result p1

    :goto_a
    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-gez v6, :cond_11

    iget-object v6, v2, Lt9/v;->a:[B

    iget v7, v2, Lt9/v;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    iget p3, v2, Lt9/v;->c:I

    :goto_b
    if-ge p2, p3, :cond_c

    aget-byte v7, v6, p2

    if-eq v7, v5, :cond_3

    if-ne v7, p1, :cond_b

    goto/16 :goto_3

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_c
    iget p2, v2, Lt9/v;->c:I

    iget p3, v2, Lt9/v;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v2, v2, Lt9/v;->f:Lt9/v;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_a

    :cond_d
    invoke-virtual {p1}, Lt9/g;->internalArray$okio()[B

    move-result-object p1

    :goto_c
    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_11

    iget-object v5, v2, Lt9/v;->a:[B

    iget v6, v2, Lt9/v;->b:I

    int-to-long v8, v6

    add-long/2addr v8, p2

    sub-long/2addr v8, v0

    long-to-int p2, v8

    iget p3, v2, Lt9/v;->c:I

    :goto_d
    if-ge p2, p3, :cond_10

    aget-byte v6, v5, p2

    array-length v8, p1

    move v9, v7

    :goto_e
    if-ge v9, v8, :cond_f

    aget-byte v10, p1, v9

    if-ne v6, v10, :cond_e

    goto/16 :goto_8

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_10
    iget p2, v2, Lt9/v;->c:I

    iget p3, v2, Lt9/v;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v2, v2, Lt9/v;->f:Lt9/v;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_c

    :cond_11
    :goto_f
    return-wide v3

    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "fromIndex < 0: "

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

.method public N0(Lt9/a0;)J
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lt9/a0;->i0(Lt9/d;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public O()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lt9/d;->d0(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public O0(I)Lt9/d;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lt9/d;->J0(I)Lt9/v;

    move-result-object v0

    iget-object v1, v0, Lt9/v;->a:[B

    iget v2, v0, Lt9/v;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lt9/v;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lt9/d;->F0(J)V

    return-object p0
.end method

.method public P0(J)Lt9/d;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lt9/d;->O0(I)Lt9/d;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    ushr-long v1, p1, v0

    or-long/2addr v1, p1

    const/4 v3, 0x2

    ushr-long v4, v1, v3

    or-long/2addr v1, v4

    const/4 v4, 0x4

    ushr-long v5, v1, v4

    or-long/2addr v1, v5

    const/16 v5, 0x8

    ushr-long v6, v1, v5

    or-long/2addr v1, v6

    const/16 v6, 0x10

    ushr-long v7, v1, v6

    or-long/2addr v1, v7

    const/16 v7, 0x20

    ushr-long v8, v1, v7

    or-long/2addr v1, v8

    ushr-long v8, v1, v0

    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v8, v10

    sub-long/2addr v1, v8

    ushr-long v8, v1, v3

    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v8, v10

    and-long/2addr v1, v10

    add-long/2addr v8, v1

    ushr-long v1, v8, v4

    add-long/2addr v1, v8

    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v1, v8

    ushr-long v8, v1, v5

    add-long/2addr v1, v8

    ushr-long v5, v1, v6

    add-long/2addr v1, v5

    const-wide/16 v5, 0x3f

    and-long v8, v1, v5

    ushr-long/2addr v1, v7

    and-long/2addr v1, v5

    add-long/2addr v8, v1

    const/4 v1, 0x3

    int-to-long v1, v1

    add-long/2addr v8, v1

    int-to-long v1, v4

    div-long/2addr v8, v1

    long-to-int v1, v8

    invoke-virtual {p0, v1}, Lt9/d;->J0(I)Lt9/v;

    move-result-object v2

    iget-object v3, v2, Lt9/v;->a:[B

    iget v5, v2, Lt9/v;->c:I

    add-int v6, v5, v1

    sub-int/2addr v6, v0

    :goto_0
    if-lt v6, v5, :cond_1

    invoke-static {}, Lu9/a;->a()[B

    move-result-object v0

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v7, v7

    aget-byte v0, v0, v7

    aput-byte v0, v3, v6

    ushr-long/2addr p1, v4

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    iget p1, v2, Lt9/v;->c:I

    add-int/2addr p1, v1

    iput p1, v2, Lt9/v;->c:I

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide p1

    int-to-long v0, v1

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lt9/d;->F0(J)V

    :goto_1
    return-object p0
.end method

.method public Q()[B
    .locals 2

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lt9/d;->U(J)[B

    move-result-object p0

    return-object p0
.end method

.method public Q0(I)Lt9/d;
    .locals 7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lt9/d;->J0(I)Lt9/v;

    move-result-object v1

    iget-object v2, v1, Lt9/v;->a:[B

    iget v3, v1, Lt9/v;->c:I

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, p1, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v5, v3, 0x2

    ushr-int/lit8 v6, p1, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    add-int/lit8 v4, v3, 0x3

    ushr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/2addr v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    iput v3, v1, Lt9/v;->c:I

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lt9/d;->F0(J)V

    return-object p0
.end method

.method public R(Lt9/g;)J
    .locals 2

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lt9/d;->N(Lt9/g;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public R0(I)Lt9/d;
    .locals 6

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lt9/d;->J0(I)Lt9/v;

    move-result-object v1

    iget-object v2, v1, Lt9/v;->a:[B

    iget v3, v1, Lt9/v;->c:I

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/2addr v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    iput v3, v1, Lt9/v;->c:I

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lt9/d;->F0(J)V

    return-object p0
.end method

.method public S()Z
    .locals 4

    iget-wide v0, p0, Lt9/d;->b:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public S0(Ljava/lang/String;IILjava/nio/charset/Charset;)Lt9/d;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_3

    if-lt p3, p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_1

    sget-object v0, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lt9/d;->U0(Ljava/lang/String;II)Lt9/d;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lt9/d;->M0([BII)Lt9/d;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "endIndex > string.length: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "endIndex < beginIndex: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "beginIndex < 0: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic T(I)Lt9/e;
    .locals 0

    invoke-virtual {p0, p1}, Lt9/d;->O0(I)Lt9/d;

    move-result-object p0

    return-object p0
.end method

.method public T0(Ljava/lang/String;)Lt9/d;
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lt9/d;->U0(Ljava/lang/String;II)Lt9/d;

    move-result-object p0

    return-object p0
.end method

.method public U(J)[B
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    long-to-int p1, p1

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Lt9/d;->b0([B)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount: "

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

.method public U0(Ljava/lang/String;II)Lt9/d;
    .locals 9

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_a

    if-lt p3, p2, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_8

    :goto_0
    if-ge p2, p3, :cond_7

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lt9/d;->J0(I)Lt9/v;

    move-result-object v2

    iget-object v3, v2, Lt9/v;->a:[B

    iget v4, v2, Lt9/v;->c:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    aput-byte v0, v3, p2

    :goto_1
    move p2, v6

    if-ge p2, v5, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v1, :cond_0

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    aput-byte v0, v3, p2

    goto :goto_1

    :cond_0
    add-int/2addr v4, p2

    iget v0, v2, Lt9/v;->c:I

    sub-int/2addr v4, v0

    add-int/2addr v0, v4

    iput v0, v2, Lt9/v;->c:I

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    int-to-long v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lt9/d;->F0(J)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x800

    if-ge v0, v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lt9/d;->J0(I)Lt9/v;

    move-result-object v3

    iget-object v4, v3, Lt9/v;->a:[B

    iget v5, v3, Lt9/v;->c:I

    shr-int/lit8 v6, v0, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    add-int/2addr v5, v2

    iput v5, v3, Lt9/v;->c:I

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lt9/d;->F0(J)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_6

    const v2, 0xdfff

    if-le v0, v2, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v2, p2, 0x1

    if-ge v2, p3, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    const v5, 0xdbff

    if-gt v0, v5, :cond_5

    const v5, 0xdc00

    if-gt v5, v4, :cond_5

    const v5, 0xe000

    if-ge v4, v5, :cond_5

    and-int/lit16 v0, v0, 0x3ff

    shl-int/lit8 v0, v0, 0xa

    and-int/lit16 v2, v4, 0x3ff

    or-int/2addr v0, v2

    const/high16 v2, 0x10000

    add-int/2addr v0, v2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lt9/d;->J0(I)Lt9/v;

    move-result-object v4

    iget-object v5, v4, Lt9/v;->a:[B

    iget v6, v4, Lt9/v;->c:I

    shr-int/lit8 v7, v0, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v0, 0xc

    and-int/2addr v8, v3

    or-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v7, v6, 0x2

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v8, v3

    or-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v7, v6, 0x3

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v5, v7

    add-int/2addr v6, v2

    iput v6, v4, Lt9/v;->c:I

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lt9/d;->F0(J)V

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v3}, Lt9/d;->O0(I)Lt9/d;

    move p2, v2

    goto/16 :goto_0

    :cond_6
    :goto_4
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lt9/d;->J0(I)Lt9/v;

    move-result-object v4

    iget-object v5, v4, Lt9/v;->a:[B

    iget v6, v4, Lt9/v;->c:I

    shr-int/lit8 v7, v0, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v3, v8

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v5, v7

    add-int/lit8 v3, v6, 0x2

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v5, v3

    add-int/2addr v6, v2

    iput v6, v4, Lt9/v;->c:I

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lt9/d;->F0(J)V

    goto/16 :goto_2

    :cond_7
    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "endIndex > string.length: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "endIndex < beginIndex: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "beginIndex < 0: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public V0(I)Lt9/d;
    .locals 8

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lt9/d;->O0(I)Lt9/d;

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lt9/d;->J0(I)Lt9/v;

    move-result-object v3

    iget-object v4, v3, Lt9/v;->a:[B

    iget v5, v3, Lt9/v;->c:I

    shr-int/lit8 v6, p1, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    iput v5, v3, Lt9/v;->c:I

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lt9/d;->F0(J)V

    goto/16 :goto_0

    :cond_1
    const v1, 0xd800

    if-gt v1, p1, :cond_2

    const v1, 0xe000

    if-ge p1, v1, :cond_2

    invoke-virtual {p0, v2}, Lt9/d;->O0(I)Lt9/d;

    goto :goto_0

    :cond_2
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lt9/d;->J0(I)Lt9/v;

    move-result-object v3

    iget-object v4, v3, Lt9/v;->a:[B

    iget v5, v3, Lt9/v;->c:I

    shr-int/lit8 v6, p1, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x2

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    iput v5, v3, Lt9/v;->c:I

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lt9/d;->F0(J)V

    goto :goto_0

    :cond_3
    const v1, 0x10ffff

    if-gt p1, v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lt9/d;->J0(I)Lt9/v;

    move-result-object v3

    iget-object v4, v3, Lt9/v;->a:[B

    iget v5, v3, Lt9/v;->c:I

    shr-int/lit8 v6, p1, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, p1, 0xc

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x2

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x3

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    iput v5, v3, Lt9/v;->c:I

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lt9/d;->F0(J)V

    :goto_0
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected code point: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lt9/b;->i(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public X([BII)I
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lt9/b;->b(JJJ)V

    iget-object v0, p0, Lt9/d;->a:Lt9/v;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lt9/v;->c:I

    iget v2, v0, Lt9/v;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, v0, Lt9/v;->a:[B

    iget v2, v0, Lt9/v;->b:I

    add-int v3, v2, p3

    invoke-static {v1, p1, p2, v2, v3}, Lkotlin/collections/i;->g([B[BIII)[B

    iget p1, v0, Lt9/v;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Lt9/v;->b:I

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide p1

    int-to-long v1, p3

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Lt9/d;->F0(J)V

    iget p1, v0, Lt9/v;->b:I

    iget p2, v0, Lt9/v;->c:I

    if-ne p1, p2, :cond_1

    invoke-virtual {v0}, Lt9/v;->b()Lt9/v;

    move-result-object p1

    iput-object p1, p0, Lt9/d;->a:Lt9/v;

    invoke-static {v0}, Lt9/w;->b(Lt9/v;)V

    :cond_1
    move p0, p3

    :goto_0
    return p0
.end method

.method public bridge synthetic Z([B)Lt9/e;
    .locals 0

    invoke-virtual {p0, p1}, Lt9/d;->L0([B)Lt9/d;

    move-result-object p0

    return-object p0
.end method

.method public a0()Lt9/g;
    .locals 2

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lt9/d;->w(J)Lt9/g;

    move-result-object p0

    return-object p0
.end method

.method public b0([B)V
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lt9/d;->X([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lt9/d;->k()Lt9/d;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d()Lt9/d;
    .locals 0

    return-object p0
.end method

.method public d0(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    add-long v0, p1, v3

    :goto_0
    const/16 v6, 0xa

    const-wide/16 v7, 0x0

    move-object v5, p0

    move-wide v9, v0

    invoke-virtual/range {v5 .. v10}, Lt9/d;->G(BJJ)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-eqz v2, :cond_1

    invoke-static {p0, v5, v6}, Lu9/a;->c(Lt9/d;J)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-gez v2, :cond_2

    sub-long v2, v0, v3

    invoke-virtual {p0, v2, v3}, Lt9/d;->D(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0, v1}, Lt9/d;->D(J)B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    invoke-static {p0, v0, v1}, Lu9/a;->c(Lt9/d;J)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    new-instance v6, Lt9/d;

    invoke-direct {v6}, Lt9/d;-><init>()V

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    const/16 v2, 0x20

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lt9/d;->B(Lt9/d;JJ)Lt9/d;

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public equals(Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v3, v1, Lt9/d;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    :goto_0
    move v2, v4

    goto/16 :goto_3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lt9/d;->G0()J

    move-result-wide v5

    check-cast v1, Lt9/d;

    invoke-virtual {v1}, Lt9/d;->G0()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lt9/d;->G0()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, v0, Lt9/d;->a:Lt9/v;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v1, v1, Lt9/d;->a:Lt9/v;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v5, v3, Lt9/v;->b:I

    iget v6, v1, Lt9/v;->b:I

    move-wide v9, v7

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lt9/d;->G0()J

    move-result-wide v11

    cmp-long v11, v9, v11

    if-gez v11, :cond_8

    iget v11, v3, Lt9/v;->c:I

    sub-int/2addr v11, v5

    iget v12, v1, Lt9/v;->c:I

    sub-int/2addr v12, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    move-wide v13, v7

    :goto_2
    cmp-long v15, v13, v11

    if-gez v15, :cond_5

    iget-object v15, v3, Lt9/v;->a:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    iget-object v15, v1, Lt9/v;->a:[B

    add-int/lit8 v17, v6, 0x1

    aget-byte v6, v15, v6

    if-eq v5, v6, :cond_4

    goto :goto_0

    :cond_4
    const-wide/16 v5, 0x1

    add-long/2addr v13, v5

    move/from16 v5, v16

    move/from16 v6, v17

    goto :goto_2

    :cond_5
    iget v13, v3, Lt9/v;->c:I

    if-ne v5, v13, :cond_6

    iget-object v3, v3, Lt9/v;->f:Lt9/v;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v5, v3, Lt9/v;->b:I

    :cond_6
    iget v13, v1, Lt9/v;->c:I

    if-ne v6, v13, :cond_7

    iget-object v1, v1, Lt9/v;->f:Lt9/v;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v6, v1, Lt9/v;->b:I

    :cond_7
    add-long/2addr v9, v11

    goto :goto_1

    :cond_8
    :goto_3
    return v2
.end method

.method public f()Lt9/b0;
    .locals 0

    sget-object p0, Lt9/b0;->e:Lt9/b0;

    return-object p0
.end method

.method public f0()S
    .locals 9

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lt9/d;->a:Lt9/v;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v1, v0, Lt9/v;->b:I

    iget v4, v0, Lt9/v;->c:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    invoke-virtual {p0}, Lt9/d;->C0()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lt9/d;->C0()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    goto :goto_1

    :cond_0
    iget-object v5, v0, Lt9/v;->a:[B

    add-int/lit8 v7, v1, 0x1

    aget-byte v8, v5, v1

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v1, v6

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v8

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {p0, v6, v7}, Lt9/d;->F0(J)V

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Lt9/v;->b()Lt9/v;

    move-result-object v1

    iput-object v1, p0, Lt9/d;->a:Lt9/v;

    invoke-static {v0}, Lt9/w;->b(Lt9/v;)V

    goto :goto_0

    :cond_1
    iput v1, v0, Lt9/v;->b:I

    :goto_0
    int-to-short p0, v5

    :goto_1
    return p0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public bridge synthetic h0(Lt9/g;)Lt9/e;
    .locals 0

    invoke-virtual {p0, p1}, Lt9/d;->K0(Lt9/g;)Lt9/d;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lt9/d;->a:Lt9/v;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iget v2, v0, Lt9/v;->b:I

    iget v3, v0, Lt9/v;->c:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lt9/v;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lt9/v;->f:Lt9/v;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lt9/d;->a:Lt9/v;

    if-ne v0, v2, :cond_1

    move p0, v1

    :goto_1
    return p0
.end method

.method public final i()V
    .locals 2

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lt9/d;->A(J)V

    return-void
.end method

.method public i0(Lt9/d;J)J
    .locals 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide p2

    :cond_1
    invoke-virtual {p1, p0, p2, p3}, Lt9/d;->p(Lt9/d;J)V

    move-wide p0, p2

    :goto_0
    return-wide p0

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

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic j([BII)Lt9/e;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lt9/d;->M0([BII)Lt9/d;

    move-result-object p0

    return-object p0
.end method

.method public j0()Lt9/f;
    .locals 1

    new-instance v0, Lt9/s;

    invoke-direct {v0, p0}, Lt9/s;-><init>(Lt9/f;)V

    invoke-static {v0}, Lt9/n;->b(Lt9/a0;)Lt9/f;

    move-result-object p0

    return-object p0
.end method

.method public k()Lt9/d;
    .locals 0

    invoke-virtual {p0}, Lt9/d;->x()Lt9/d;

    move-result-object p0

    return-object p0
.end method

.method public n0(Lt9/g;)J
    .locals 2

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lt9/d;->I(Lt9/g;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public p(Lt9/d;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_6

    invoke-virtual {p1}, Lt9/d;->G0()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lt9/b;->b(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_5

    iget-object v0, p1, Lt9/d;->a:Lt9/v;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v0, v0, Lt9/v;->c:I

    iget-object v1, p1, Lt9/d;->a:Lt9/v;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v1, v1, Lt9/v;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lt9/d;->a:Lt9/v;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v0, v0, Lt9/v;->g:Lt9/v;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lt9/v;->e:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lt9/v;->c:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    iget-boolean v3, v0, Lt9/v;->d:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    iget v3, v0, Lt9/v;->b:I

    :goto_2
    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-object v1, p1, Lt9/d;->a:Lt9/v;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lt9/v;->f(Lt9/v;I)V

    invoke-virtual {p1}, Lt9/d;->G0()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lt9/d;->F0(J)V

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, v0, v1}, Lt9/d;->F0(J)V

    goto :goto_4

    :cond_2
    iget-object v0, p1, Lt9/d;->a:Lt9/v;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lt9/v;->e(I)Lt9/v;

    move-result-object v0

    iput-object v0, p1, Lt9/d;->a:Lt9/v;

    :cond_3
    iget-object v0, p1, Lt9/d;->a:Lt9/v;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v1, v0, Lt9/v;->c:I

    iget v2, v0, Lt9/v;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0}, Lt9/v;->b()Lt9/v;

    move-result-object v3

    iput-object v3, p1, Lt9/d;->a:Lt9/v;

    iget-object v3, p0, Lt9/d;->a:Lt9/v;

    if-nez v3, :cond_4

    iput-object v0, p0, Lt9/d;->a:Lt9/v;

    iput-object v0, v0, Lt9/v;->g:Lt9/v;

    iput-object v0, v0, Lt9/v;->f:Lt9/v;

    goto :goto_3

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v3, v3, Lt9/v;->g:Lt9/v;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lt9/v;->c(Lt9/v;)Lt9/v;

    move-result-object v0

    invoke-virtual {v0}, Lt9/v;->a()V

    :goto_3
    invoke-virtual {p1}, Lt9/d;->G0()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Lt9/d;->F0(J)V

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Lt9/d;->F0(J)V

    sub-long/2addr p2, v1

    goto/16 :goto_0

    :cond_5
    :goto_4
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == this"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public q0()I
    .locals 0

    invoke-virtual {p0}, Lt9/d;->K()I

    move-result p0

    invoke-static {p0}, Lt9/b;->f(I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic r(Ljava/lang/String;II)Lt9/e;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lt9/d;->U0(Ljava/lang/String;II)Lt9/d;

    move-result-object p0

    return-object p0
.end method

.method public r0(J)V
    .locals 2

    iget-wide v0, p0, Lt9/d;->b:J

    cmp-long p0, v0, p1

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lt9/d;->a:Lt9/v;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, Lt9/v;->c:I

    iget v3, v0, Lt9/v;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lt9/v;->a:[B

    iget v3, v0, Lt9/v;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget p1, v0, Lt9/v;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Lt9/v;->b:I

    iget-wide v2, p0, Lt9/d;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lt9/d;->b:J

    iget v2, v0, Lt9/v;->c:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Lt9/v;->b()Lt9/v;

    move-result-object p1

    iput-object p1, p0, Lt9/d;->a:Lt9/v;

    invoke-static {v0}, Lt9/w;->b(Lt9/v;)V

    :cond_1
    return v1
.end method

.method public bridge synthetic s(J)Lt9/e;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt9/d;->P0(J)Lt9/d;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lt9/d;->H0()Lt9/g;

    move-result-object p0

    invoke-virtual {p0}, Lt9/g;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Lt9/d;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic u0(Ljava/lang/String;)Lt9/e;
    .locals 0

    invoke-virtual {p0, p1}, Lt9/d;->T0(Ljava/lang/String;)Lt9/d;

    move-result-object p0

    return-object p0
.end method

.method public final v()J
    .locals 5

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lt9/d;->a:Lt9/v;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lt9/v;->g:Lt9/v;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v2, p0, Lt9/v;->c:I

    const/16 v3, 0x2000

    if-ge v2, v3, :cond_1

    iget-boolean v3, p0, Lt9/v;->e:Z

    if-eqz v3, :cond_1

    iget p0, p0, Lt9/v;->b:I

    sub-int/2addr v2, p0

    int-to-long v2, v2

    sub-long/2addr v0, v2

    :cond_1
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public v0()S
    .locals 0

    invoke-virtual {p0}, Lt9/d;->f0()S

    move-result p0

    invoke-static {p0}, Lt9/b;->g(S)S

    move-result p0

    return p0
.end method

.method public w(J)Lt9/g;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x1000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lt9/d;->I0(I)Lt9/g;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lt9/d;->A(J)V

    goto :goto_0

    :cond_0
    new-instance v0, Lt9/g;

    invoke-virtual {p0, p1, p2}, Lt9/d;->U(J)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lt9/g;-><init>([B)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount: "

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

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lt9/d;->J0(I)Lt9/v;

    move-result-object v2

    iget v3, v2, Lt9/v;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v2, Lt9/v;->a:[B

    iget v5, v2, Lt9/v;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    iget v4, v2, Lt9/v;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lt9/v;->c:I

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lt9/d;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lt9/d;->b:J

    return v0
.end method

.method public final x()Lt9/d;
    .locals 6

    new-instance v0, Lt9/d;

    invoke-direct {v0}, Lt9/d;-><init>()V

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lt9/d;->a:Lt9/v;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lt9/v;->d()Lt9/v;

    move-result-object v2

    iput-object v2, v0, Lt9/d;->a:Lt9/v;

    iput-object v2, v2, Lt9/v;->g:Lt9/v;

    iput-object v2, v2, Lt9/v;->f:Lt9/v;

    iget-object v3, v1, Lt9/v;->f:Lt9/v;

    :goto_0
    if-eq v3, v1, :cond_1

    iget-object v4, v2, Lt9/v;->g:Lt9/v;

    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lt9/v;->d()Lt9/v;

    move-result-object v5

    invoke-virtual {v4, v5}, Lt9/v;->c(Lt9/v;)Lt9/v;

    iget-object v3, v3, Lt9/v;->f:Lt9/v;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lt9/d;->F0(J)V

    :goto_1
    return-object v0
.end method

.method public x0(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    const-string v0, "charset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p1, v1

    if-gtz v1, :cond_4

    iget-wide v1, p0, Lt9/d;->b:J

    cmp-long v1, v1, p1

    if-ltz v1, :cond_3

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lt9/d;->a:Lt9/v;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v1, v0, Lt9/v;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Lt9/v;->c:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lt9/d;->U(J)[B

    move-result-object p0

    invoke-direct {v0, p0, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lt9/v;->a:[B

    long-to-int v4, p1

    invoke-direct {v2, v3, v1, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p3, v0, Lt9/v;->b:I

    add-int/2addr p3, v4

    iput p3, v0, Lt9/v;->b:I

    iget-wide v3, p0, Lt9/d;->b:J

    sub-long/2addr v3, p1

    iput-wide v3, p0, Lt9/d;->b:J

    iget p1, v0, Lt9/v;->c:I

    if-ne p3, p1, :cond_2

    invoke-virtual {v0}, Lt9/v;->b()Lt9/v;

    move-result-object p1

    iput-object p1, p0, Lt9/d;->a:Lt9/v;

    invoke-static {v0}, Lt9/w;->b(Lt9/v;)V

    :cond_2
    return-object v2

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "byteCount: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z0()J
    .locals 14

    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    move v1, v0

    move-wide v4, v2

    :cond_0
    iget-object v6, p0, Lt9/d;->a:Lt9/v;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v7, v6, Lt9/v;->a:[B

    iget v8, v6, Lt9/v;->b:I

    iget v9, v6, Lt9/v;->c:I

    :goto_0
    if-ge v8, v9, :cond_6

    aget-byte v10, v7, v8

    const/16 v11, 0x30

    if-lt v10, v11, :cond_1

    const/16 v11, 0x39

    if-gt v10, v11, :cond_1

    add-int/lit8 v11, v10, -0x30

    goto :goto_1

    :cond_1
    const/16 v11, 0x61

    if-lt v10, v11, :cond_2

    const/16 v11, 0x66

    if-gt v10, v11, :cond_2

    add-int/lit8 v11, v10, -0x57

    goto :goto_1

    :cond_2
    const/16 v11, 0x41

    if-lt v10, v11, :cond_4

    const/16 v11, 0x46

    if-gt v10, v11, :cond_4

    add-int/lit8 v11, v10, -0x37

    :goto_1
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v12, v12, v2

    if-nez v12, :cond_3

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Lt9/d;

    invoke-direct {p0}, Lt9/d;-><init>()V

    invoke-virtual {p0, v4, v5}, Lt9/d;->P0(J)Lt9/d;

    move-result-object p0

    invoke-virtual {p0, v10}, Lt9/d;->O0(I)Lt9/d;

    move-result-object p0

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt9/d;->D0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lt9/b;->h(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    if-ne v8, v9, :cond_7

    invoke-virtual {v6}, Lt9/v;->b()Lt9/v;

    move-result-object v7

    iput-object v7, p0, Lt9/d;->a:Lt9/v;

    invoke-static {v6}, Lt9/w;->b(Lt9/v;)V

    goto :goto_3

    :cond_7
    iput v8, v6, Lt9/v;->b:I

    :goto_3
    if-nez v1, :cond_8

    iget-object v6, p0, Lt9/d;->a:Lt9/v;

    if-nez v6, :cond_0

    :cond_8
    invoke-virtual {p0}, Lt9/d;->G0()J

    move-result-wide v1

    int-to-long v6, v0

    sub-long/2addr v1, v6

    invoke-virtual {p0, v1, v2}, Lt9/d;->F0(J)V

    return-wide v4

    :cond_9
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method
