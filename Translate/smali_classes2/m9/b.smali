.class public final Lm9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/v;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lm9/b;->a:Z

    return-void
.end method

.method private final b(I)Z
    .locals 1

    const/16 p0, 0x64

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x66

    if-gt p0, p1, :cond_1

    const/16 p0, 0xc8

    if-ge p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lokhttp3/v$a;)Lokhttp3/b0;
    .locals 13

    const-string v0, "Connection"

    const-string v1, "close"

    const-string v2, "chain"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lm9/g;

    invoke-virtual {p1}, Lm9/g;->g()Lokhttp3/internal/connection/c;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lm9/g;->i()Lokhttp3/z;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/z;->a()Lokhttp3/a0;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v2, p1}, Lokhttp3/internal/connection/c;->u(Lokhttp3/z;)V

    invoke-virtual {p1}, Lokhttp3/z;->g()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lm9/f;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v3, :cond_3

    const-string v9, "100-continue"

    const-string v10, "Expect"

    invoke-virtual {p1, v10}, Lokhttp3/z;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v7}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v2}, Lokhttp3/internal/connection/c;->f()V

    invoke-virtual {v2, v7}, Lokhttp3/internal/connection/c;->q(Z)Lokhttp3/b0$a;

    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Lokhttp3/internal/connection/c;->s()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v10, v6

    goto :goto_0

    :catch_0
    move-exception v3

    move v10, v7

    goto :goto_2

    :catch_1
    move-exception v3

    move v10, v7

    move-object v9, v8

    goto :goto_2

    :cond_0
    move v10, v7

    move-object v9, v8

    :goto_0
    if-nez v9, :cond_2

    :try_start_2
    invoke-virtual {v3}, Lokhttp3/a0;->c()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v2}, Lokhttp3/internal/connection/c;->f()V

    invoke-virtual {v2, p1, v7}, Lokhttp3/internal/connection/c;->c(Lokhttp3/z;Z)Lt9/y;

    move-result-object v11

    invoke-static {v11}, Lt9/n;->a(Lt9/y;)Lt9/e;

    move-result-object v11

    invoke-virtual {v3, v11}, Lokhttp3/a0;->e(Lt9/e;)V

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2

    :cond_1
    invoke-virtual {v2, p1, v6}, Lokhttp3/internal/connection/c;->c(Lokhttp3/z;Z)Lt9/y;

    move-result-object v11

    invoke-static {v11}, Lt9/n;->a(Lt9/y;)Lt9/e;

    move-result-object v11

    invoke-virtual {v3, v11}, Lokhttp3/a0;->e(Lt9/e;)V

    invoke-interface {v11}, Lt9/y;->close()V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lokhttp3/internal/connection/c;->o()V

    invoke-virtual {v2}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/f;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/internal/connection/f;->v()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v2}, Lokhttp3/internal/connection/c;->n()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lokhttp3/internal/connection/c;->o()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move v10, v7

    move-object v9, v8

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Lokhttp3/a0;->c()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    invoke-virtual {v2}, Lokhttp3/internal/connection/c;->e()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    move-object v3, v8

    goto :goto_3

    :goto_2
    instance-of v11, v3, Lo9/a;

    if-nez v11, :cond_13

    invoke-virtual {v2}, Lokhttp3/internal/connection/c;->k()Z

    move-result v11

    if-eqz v11, :cond_12

    :goto_3
    if-nez v9, :cond_7

    :try_start_5
    invoke-virtual {v2, v6}, Lokhttp3/internal/connection/c;->q(Z)Lokhttp3/b0$a;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    if-eqz v10, :cond_7

    invoke-virtual {v2}, Lokhttp3/internal/connection/c;->s()V

    move v10, v6

    goto :goto_4

    :catch_3
    move-exception p0

    goto/16 :goto_7

    :cond_7
    :goto_4
    invoke-virtual {v9, p1}, Lokhttp3/b0$a;->r(Lokhttp3/z;)Lokhttp3/b0$a;

    move-result-object v9

    invoke-virtual {v2}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/f;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/internal/connection/f;->r()Lokhttp3/s;

    move-result-object v11

    invoke-virtual {v9, v11}, Lokhttp3/b0$a;->i(Lokhttp3/s;)Lokhttp3/b0$a;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Lokhttp3/b0$a;->s(J)Lokhttp3/b0$a;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Lokhttp3/b0$a;->q(J)Lokhttp3/b0$a;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/b0$a;->c()Lokhttp3/b0;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/b0;->x()I

    move-result v11

    invoke-direct {p0, v11}, Lm9/b;->b(I)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v2, v6}, Lokhttp3/internal/connection/c;->q(Z)Lokhttp3/b0$a;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    if-eqz v10, :cond_8

    invoke-virtual {v2}, Lokhttp3/internal/connection/c;->s()V

    :cond_8
    invoke-virtual {v6, p1}, Lokhttp3/b0$a;->r(Lokhttp3/z;)Lokhttp3/b0$a;

    move-result-object p1

    invoke-virtual {v2}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/f;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/internal/connection/f;->r()Lokhttp3/s;

    move-result-object v6

    invoke-virtual {p1, v6}, Lokhttp3/b0$a;->i(Lokhttp3/s;)Lokhttp3/b0$a;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lokhttp3/b0$a;->s(J)Lokhttp3/b0$a;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lokhttp3/b0$a;->q(J)Lokhttp3/b0$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/b0$a;->c()Lokhttp3/b0;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/b0;->x()I

    move-result v11

    :cond_9
    invoke-virtual {v2, v9}, Lokhttp3/internal/connection/c;->r(Lokhttp3/b0;)V

    iget-boolean p0, p0, Lm9/b;->a:Z

    if-eqz p0, :cond_a

    const/16 p0, 0x65

    if-ne v11, p0, :cond_a

    invoke-virtual {v9}, Lokhttp3/b0;->b0()Lokhttp3/b0$a;

    move-result-object p0

    sget-object p1, Li9/d;->c:Lokhttp3/c0;

    invoke-virtual {p0, p1}, Lokhttp3/b0$a;->b(Lokhttp3/c0;)Lokhttp3/b0$a;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/b0$a;->c()Lokhttp3/b0;

    move-result-object p0

    goto :goto_5

    :cond_a
    invoke-virtual {v9}, Lokhttp3/b0;->b0()Lokhttp3/b0$a;

    move-result-object p0

    invoke-virtual {v2, v9}, Lokhttp3/internal/connection/c;->p(Lokhttp3/b0;)Lokhttp3/c0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/b0$a;->b(Lokhttp3/c0;)Lokhttp3/b0$a;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/b0$a;->c()Lokhttp3/b0;

    move-result-object p0

    :goto_5
    invoke-virtual {p0}, Lokhttp3/b0;->D0()Lokhttp3/z;

    move-result-object p1

    invoke-virtual {p1, v0}, Lokhttp3/z;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v7}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x2

    invoke-static {p0, v0, v8, p1, v8}, Lokhttp3/b0;->I(Lokhttp3/b0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v7}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    invoke-virtual {v2}, Lokhttp3/internal/connection/c;->n()V

    :cond_c
    const/16 p1, 0xcc

    if-eq v11, p1, :cond_d

    const/16 p1, 0xcd

    if-ne v11, p1, :cond_10

    :cond_d
    invoke-virtual {p0}, Lokhttp3/b0;->c()Lokhttp3/c0;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lokhttp3/c0;->i()J

    move-result-wide v0

    goto :goto_6

    :cond_e
    const-wide/16 v0, -0x1

    :goto_6
    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-lez p1, :cond_10

    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " had non-zero Content-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/b0;->c()Lokhttp3/c0;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lokhttp3/c0;->i()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :cond_f
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_10
    return-object p0

    :goto_7
    if-eqz v3, :cond_11

    invoke-static {v3, p0}, Ln8/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v3

    :cond_11
    throw p0

    :cond_12
    throw v3

    :cond_13
    throw v3
.end method
