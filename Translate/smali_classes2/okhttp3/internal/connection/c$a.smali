.class final Lokhttp3/internal/connection/c$a;
.super Lt9/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/connection/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final b:J

.field private c:Z

.field private f:J

.field private h:Z

.field final synthetic i:Lokhttp3/internal/connection/c;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/c;Lt9/y;J)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/connection/c$a;->i:Lokhttp3/internal/connection/c;

    invoke-direct {p0, p2}, Lt9/h;-><init>(Lt9/y;)V

    iput-wide p3, p0, Lokhttp3/internal/connection/c$a;->b:J

    return-void
.end method

.method private final c(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 7

    iget-boolean v0, p0, Lokhttp3/internal/connection/c$a;->c:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/connection/c$a;->c:Z

    iget-object v1, p0, Lokhttp3/internal/connection/c$a;->i:Lokhttp3/internal/connection/c;

    iget-wide v2, p0, Lokhttp3/internal/connection/c$a;->f:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/connection/c;->a(JZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-boolean v0, p0, Lokhttp3/internal/connection/c$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/connection/c$a;->h:Z

    iget-wide v0, p0, Lokhttp3/internal/connection/c$a;->b:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lokhttp3/internal/connection/c$a;->f:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "unexpected end of stream"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    :try_start_0
    invoke-super {p0}, Lt9/h;->close()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/internal/connection/c$a;->c(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lokhttp3/internal/connection/c$a;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public flush()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lt9/h;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lokhttp3/internal/connection/c$a;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public p(Lt9/d;J)V
    .locals 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokhttp3/internal/connection/c$a;->h:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lokhttp3/internal/connection/c$a;->b:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lokhttp3/internal/connection/c$a;->f:J

    add-long/2addr v2, p2

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lokhttp3/internal/connection/c$a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lokhttp3/internal/connection/c$a;->f:J

    add-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lt9/h;->p(Lt9/d;J)V

    iget-wide v0, p0, Lokhttp3/internal/connection/c$a;->f:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokhttp3/internal/connection/c$a;->f:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/c$a;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
