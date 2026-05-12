.class final Ln9/b$c;
.super Ln9/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final f:Lokhttp3/u;

.field private h:J

.field private i:Z

.field final synthetic j:Ln9/b;


# direct methods
.method public constructor <init>(Ln9/b;Lokhttp3/u;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ln9/b$c;->j:Ln9/b;

    invoke-direct {p0, p1}, Ln9/b$a;-><init>(Ln9/b;)V

    iput-object p2, p0, Ln9/b$c;->f:Lokhttp3/u;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Ln9/b$c;->h:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Ln9/b$c;->i:Z

    return-void
.end method

.method private final v()V
    .locals 7

    iget-wide v0, p0, Ln9/b$c;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln9/b$c;->j:Ln9/b;

    invoke-static {v0}, Ln9/b;->m(Ln9/b;)Lt9/f;

    move-result-object v0

    invoke-interface {v0}, Lt9/f;->O()Ljava/lang/String;

    :cond_0
    :try_start_0
    iget-object v0, p0, Ln9/b$c;->j:Ln9/b;

    invoke-static {v0}, Ln9/b;->m(Ln9/b;)Lt9/f;

    move-result-object v0

    invoke-interface {v0}, Lt9/f;->z0()J

    move-result-wide v0

    iput-wide v0, p0, Ln9/b$c;->h:J

    iget-object v0, p0, Ln9/b$c;->j:Ln9/b;

    invoke-static {v0}, Ln9/b;->m(Ln9/b;)Lt9/f;

    move-result-object v0

    invoke-interface {v0}, Lt9/f;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Ln9/b$c;->h:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const-string v1, ";"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v1, v2, v5, v6}, Lkotlin/text/r;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-wide v0, p0, Ln9/b$c;->h:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    iput-boolean v2, p0, Ln9/b$c;->i:Z

    iget-object v0, p0, Ln9/b$c;->j:Ln9/b;

    invoke-static {v0}, Ln9/b;->k(Ln9/b;)Ln9/a;

    move-result-object v1

    invoke-virtual {v1}, Ln9/a;->a()Lokhttp3/t;

    move-result-object v1

    invoke-static {v0, v1}, Ln9/b;->q(Ln9/b;Lokhttp3/t;)V

    iget-object v0, p0, Ln9/b$c;->j:Ln9/b;

    invoke-static {v0}, Ln9/b;->j(Ln9/b;)Lokhttp3/x;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/x;->k()Lokhttp3/m;

    move-result-object v0

    iget-object v1, p0, Ln9/b$c;->f:Lokhttp3/u;

    iget-object v2, p0, Ln9/b$c;->j:Ln9/b;

    invoke-static {v2}, Ln9/b;->o(Ln9/b;)Lokhttp3/t;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lm9/e;->f(Lokhttp3/m;Lokhttp3/u;Lokhttp3/t;)V

    invoke-virtual {p0}, Ln9/b$a;->i()V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected chunk size and optional extensions but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ln9/b$c;->h:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    invoke-virtual {p0}, Ln9/b$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Ln9/b$c;->i:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Li9/d;->r(Lt9/a0;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ln9/b$c;->j:Ln9/b;

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

    if-ltz v2, :cond_5

    invoke-virtual {p0}, Ln9/b$a;->c()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Ln9/b$c;->i:Z

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    return-wide v3

    :cond_0
    iget-wide v5, p0, Ln9/b$c;->h:J

    cmp-long v0, v5, v0

    if-eqz v0, :cond_1

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Ln9/b$c;->v()V

    iget-boolean v0, p0, Ln9/b$c;->i:Z

    if-nez v0, :cond_2

    return-wide v3

    :cond_2
    iget-wide v0, p0, Ln9/b$c;->h:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Ln9/b$a;->i0(Lt9/d;J)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-eqz p3, :cond_3

    iget-wide v0, p0, Ln9/b$c;->h:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Ln9/b$c;->h:J

    return-wide p1

    :cond_3
    iget-object p1, p0, Ln9/b$c;->j:Ln9/b;

    invoke-virtual {p1}, Ln9/b;->h()Lokhttp3/internal/connection/f;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/internal/connection/f;->y()V

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ln9/b$a;->i()V

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
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
