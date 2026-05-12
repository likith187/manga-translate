.class final Ln9/b$e;
.super Ln9/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field private f:J

.field final synthetic h:Ln9/b;


# direct methods
.method public constructor <init>(Ln9/b;J)V
    .locals 2

    iput-object p1, p0, Ln9/b$e;->h:Ln9/b;

    invoke-direct {p0, p1}, Ln9/b$a;-><init>(Ln9/b;)V

    iput-wide p2, p0, Ln9/b$e;->f:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ln9/b$a;->i()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    invoke-virtual {p0}, Ln9/b$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Ln9/b$e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Li9/d;->r(Lt9/a0;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ln9/b$e;->h:Ln9/b;

    invoke-virtual {v0}, Ln9/b;->h()Lokhttp3/internal/connection/f;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->y()V

    invoke-virtual {p0}, Ln9/b$a;->i()V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ln9/b$a;->k(Z)V

    return-void
.end method

.method public i0(Lt9/d;J)J
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    invoke-virtual {p0}, Ln9/b$a;->c()Z

    move-result v2

    if-nez v2, :cond_3

    iget-wide v2, p0, Ln9/b$e;->f:J

    cmp-long v4, v2, v0

    const-wide/16 v5, -0x1

    if-nez v4, :cond_0

    return-wide v5

    :cond_0
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Ln9/b$a;->i0(Lt9/d;J)J

    move-result-wide p1

    cmp-long p3, p1, v5

    if-eqz p3, :cond_2

    iget-wide v2, p0, Ln9/b$e;->f:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Ln9/b$e;->f:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    invoke-virtual {p0}, Ln9/b$a;->i()V

    :cond_1
    return-wide p1

    :cond_2
    iget-object p1, p0, Ln9/b$e;->h:Ln9/b;

    invoke-virtual {p1}, Ln9/b;->h()Lokhttp3/internal/connection/f;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/internal/connection/f;->y()V

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ln9/b$a;->i()V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
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
