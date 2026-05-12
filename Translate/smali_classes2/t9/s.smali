.class public final Lt9/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt9/a0;


# instance fields
.field private final a:Lt9/f;

.field private final b:Lt9/d;

.field private c:Lt9/v;

.field private f:I

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Lt9/f;)V
    .locals 1

    const-string v0, "upstream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/s;->a:Lt9/f;

    invoke-interface {p1}, Lt9/f;->d()Lt9/d;

    move-result-object p1

    iput-object p1, p0, Lt9/s;->b:Lt9/d;

    iget-object p1, p1, Lt9/d;->a:Lt9/v;

    iput-object p1, p0, Lt9/s;->c:Lt9/v;

    if-eqz p1, :cond_0

    iget p1, p1, Lt9/v;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lt9/s;->f:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt9/s;->h:Z

    return-void
.end method

.method public f()Lt9/b0;
    .locals 0

    iget-object p0, p0, Lt9/s;->a:Lt9/f;

    invoke-interface {p0}, Lt9/a0;->f()Lt9/b0;

    move-result-object p0

    return-object p0
.end method

.method public i0(Lt9/d;J)J
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_6

    iget-boolean v3, p0, Lt9/s;->h:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lt9/s;->c:Lt9/v;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lt9/s;->b:Lt9/d;

    iget-object v4, v4, Lt9/d;->a:Lt9/v;

    if-ne v3, v4, :cond_0

    iget v3, p0, Lt9/s;->f:I

    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v4, v4, Lt9/v;->b:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Peek source is invalid because upstream source was used"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    return-wide v0

    :cond_2
    iget-object v0, p0, Lt9/s;->a:Lt9/f;

    iget-wide v1, p0, Lt9/s;->i:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lt9/f;->F(J)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_3
    iget-object v0, p0, Lt9/s;->c:Lt9/v;

    if-nez v0, :cond_4

    iget-object v0, p0, Lt9/s;->b:Lt9/d;

    iget-object v0, v0, Lt9/d;->a:Lt9/v;

    if-eqz v0, :cond_4

    iput-object v0, p0, Lt9/s;->c:Lt9/v;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v0, v0, Lt9/v;->b:I

    iput v0, p0, Lt9/s;->f:I

    :cond_4
    iget-object v0, p0, Lt9/s;->b:Lt9/d;

    invoke-virtual {v0}, Lt9/d;->G0()J

    move-result-wide v0

    iget-wide v2, p0, Lt9/s;->i:J

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v2, p0, Lt9/s;->b:Lt9/d;

    iget-wide v4, p0, Lt9/s;->i:J

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lt9/d;->B(Lt9/d;JJ)Lt9/d;

    iget-wide v0, p0, Lt9/s;->i:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lt9/s;->i:J

    return-wide p2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

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
