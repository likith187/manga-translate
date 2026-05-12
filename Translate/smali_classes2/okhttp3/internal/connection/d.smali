.class public final Lokhttp3/internal/connection/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lokhttp3/internal/connection/g;

.field private final b:Lokhttp3/a;

.field private final c:Lokhttp3/internal/connection/e;

.field private final d:Lokhttp3/q;

.field private e:Lokhttp3/internal/connection/j$b;

.field private f:Lokhttp3/internal/connection/j;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lokhttp3/d0;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/g;Lokhttp3/a;Lokhttp3/internal/connection/e;Lokhttp3/q;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/g;

    iput-object p2, p0, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    iput-object p3, p0, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    iput-object p4, p0, Lokhttp3/internal/connection/d;->d:Lokhttp3/q;

    return-void
.end method

.method private final b(IIIIZ)Lokhttp3/internal/connection/f;
    .locals 14

    move-object v1, p0

    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->p()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->k()Lokhttp3/internal/connection/f;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Lokhttp3/internal/connection/f;->p()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lokhttp3/internal/connection/f;->z()Lokhttp3/d0;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/d;->g(Lokhttp3/u;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->s()Ljava/net/Socket;

    move-result-object v0

    :goto_1
    sget-object v4, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v4, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v4}, Lokhttp3/internal/connection/e;->k()Lokhttp3/internal/connection/f;

    move-result-object v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {v0}, Li9/d;->m(Ljava/net/Socket;)V

    :cond_4
    iget-object v0, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/q;

    iget-object v4, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v4, v2}, Lokhttp3/q;->k(Lokhttp3/e;Lokhttp3/i;)V

    goto :goto_3

    :goto_2
    monitor-exit v2

    throw v0

    :cond_5
    :goto_3
    const/4 v0, 0x0

    iput v0, v1, Lokhttp3/internal/connection/d;->g:I

    iput v0, v1, Lokhttp3/internal/connection/d;->h:I

    iput v0, v1, Lokhttp3/internal/connection/d;->i:I

    iget-object v2, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/g;

    iget-object v4, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    iget-object v5, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v2, v4, v5, v3, v0}, Lokhttp3/internal/connection/g;->a(Lokhttp3/a;Lokhttp3/internal/connection/e;Ljava/util/List;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->k()Lokhttp3/internal/connection/f;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v2, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/q;

    iget-object v1, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v2, v1, v0}, Lokhttp3/q;->j(Lokhttp3/e;Lokhttp3/i;)V

    return-object v0

    :cond_6
    iget-object v2, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/d0;

    if-eqz v2, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iput-object v3, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/d0;

    :goto_4
    move-object v4, v3

    goto :goto_5

    :cond_7
    iget-object v2, v1, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/j$b;

    if-eqz v2, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lokhttp3/internal/connection/j$b;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, v1, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/j$b;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/internal/connection/j$b;->c()Lokhttp3/d0;

    move-result-object v2

    goto :goto_4

    :cond_8
    iget-object v2, v1, Lokhttp3/internal/connection/d;->f:Lokhttp3/internal/connection/j;

    if-nez v2, :cond_9

    new-instance v2, Lokhttp3/internal/connection/j;

    iget-object v4, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    iget-object v5, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v5}, Lokhttp3/internal/connection/e;->j()Lokhttp3/x;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/x;->q()Lokhttp3/internal/connection/h;

    move-result-object v5

    iget-object v6, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    iget-object v7, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/q;

    invoke-direct {v2, v4, v5, v6, v7}, Lokhttp3/internal/connection/j;-><init>(Lokhttp3/a;Lokhttp3/internal/connection/h;Lokhttp3/e;Lokhttp3/q;)V

    iput-object v2, v1, Lokhttp3/internal/connection/d;->f:Lokhttp3/internal/connection/j;

    :cond_9
    invoke-virtual {v2}, Lokhttp3/internal/connection/j;->c()Lokhttp3/internal/connection/j$b;

    move-result-object v2

    iput-object v2, v1, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/j$b;

    invoke-virtual {v2}, Lokhttp3/internal/connection/j$b;->a()Ljava/util/List;

    move-result-object v4

    iget-object v5, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v5}, Lokhttp3/internal/connection/e;->p()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/g;

    iget-object v6, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    iget-object v7, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v5, v6, v7, v4, v0}, Lokhttp3/internal/connection/g;->a(Lokhttp3/a;Lokhttp3/internal/connection/e;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->k()Lokhttp3/internal/connection/f;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v2, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/q;

    iget-object v1, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v2, v1, v0}, Lokhttp3/q;->j(Lokhttp3/e;Lokhttp3/i;)V

    return-object v0

    :cond_a
    invoke-virtual {v2}, Lokhttp3/internal/connection/j$b;->c()Lokhttp3/d0;

    move-result-object v2

    :goto_5
    new-instance v13, Lokhttp3/internal/connection/f;

    iget-object v0, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/g;

    invoke-direct {v13, v0, v2}, Lokhttp3/internal/connection/f;-><init>(Lokhttp3/internal/connection/g;Lokhttp3/d0;)V

    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v13}, Lokhttp3/internal/connection/e;->u(Lokhttp3/internal/connection/f;)V

    :try_start_1
    iget-object v11, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    iget-object v12, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/q;

    move-object v5, v13

    move v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v12}, Lokhttp3/internal/connection/f;->f(IIIIZLokhttp3/e;Lokhttp3/q;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v3}, Lokhttp3/internal/connection/e;->u(Lokhttp3/internal/connection/f;)V

    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->j()Lokhttp3/x;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/x;->q()Lokhttp3/internal/connection/h;

    move-result-object v0

    invoke-virtual {v13}, Lokhttp3/internal/connection/f;->z()Lokhttp3/d0;

    move-result-object v3

    invoke-virtual {v0, v3}, Lokhttp3/internal/connection/h;->a(Lokhttp3/d0;)V

    iget-object v0, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/g;

    iget-object v3, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    iget-object v5, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v5, v4, v6}, Lokhttp3/internal/connection/g;->a(Lokhttp3/a;Lokhttp3/internal/connection/e;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->k()Lokhttp3/internal/connection/f;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iput-object v2, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/d0;

    invoke-virtual {v13}, Lokhttp3/internal/connection/f;->D()Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Li9/d;->m(Ljava/net/Socket;)V

    iget-object v2, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/q;

    iget-object v1, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v2, v1, v0}, Lokhttp3/q;->j(Lokhttp3/e;Lokhttp3/i;)V

    return-object v0

    :cond_b
    monitor-enter v13

    :try_start_2
    iget-object v0, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/g;

    invoke-virtual {v0, v13}, Lokhttp3/internal/connection/g;->e(Lokhttp3/internal/connection/f;)V

    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v13}, Lokhttp3/internal/connection/e;->a(Lokhttp3/internal/connection/f;)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v13

    iget-object v0, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/q;

    iget-object v1, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1, v13}, Lokhttp3/q;->j(Lokhttp3/e;Lokhttp3/i;)V

    return-object v13

    :catchall_1
    move-exception v0

    monitor-exit v13

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v1, v3}, Lokhttp3/internal/connection/e;->u(Lokhttp3/internal/connection/f;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final c(IIIIZZ)Lokhttp3/internal/connection/f;
    .locals 2

    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p5}, Lokhttp3/internal/connection/d;->b(IIIIZ)Lokhttp3/internal/connection/f;

    move-result-object v0

    invoke-virtual {v0, p6}, Lokhttp3/internal/connection/f;->u(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->y()V

    iget-object v0, p0, Lokhttp3/internal/connection/d;->j:Lokhttp3/d0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/j$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lokhttp3/internal/connection/j$b;->b()Z

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/connection/d;->f:Lokhttp3/internal/connection/j;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lokhttp3/internal/connection/j;->a()Z

    move-result v1

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "exhausted all routes"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final f()Lokhttp3/d0;
    .locals 3

    iget v0, p0, Lokhttp3/internal/connection/d;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_4

    iget v0, p0, Lokhttp3/internal/connection/d;->h:I

    if-gt v0, v2, :cond_4

    iget v0, p0, Lokhttp3/internal/connection/d;->i:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->k()Lokhttp3/internal/connection/f;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->q()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    monitor-exit v0

    return-object v1

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->z()Lokhttp3/d0;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v2

    iget-object p0, p0, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    invoke-virtual {p0}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object p0

    invoke-static {v2, p0}, Li9/d;->j(Lokhttp3/u;Lokhttp3/u;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_3

    monitor-exit v0

    return-object v1

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->z()Lokhttp3/d0;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_4
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final a(Lokhttp3/x;Lm9/g;)Lm9/d;
    .locals 8

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lm9/g;->f()I

    move-result v2

    invoke-virtual {p2}, Lm9/g;->h()I

    move-result v3

    invoke-virtual {p2}, Lm9/g;->j()I

    move-result v4

    invoke-virtual {p1}, Lokhttp3/x;->v()I

    move-result v5

    invoke-virtual {p1}, Lokhttp3/x;->B()Z

    move-result v6

    invoke-virtual {p2}, Lm9/g;->i()Lokhttp3/z;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/z;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/connection/d;->c(IIIIZZ)Lokhttp3/internal/connection/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/connection/f;->w(Lokhttp3/x;Lm9/g;)Lm9/d;

    move-result-object p0
    :try_end_0
    .catch Lokhttp3/internal/connection/i; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/d;->h(Ljava/io/IOException;)V

    new-instance p0, Lokhttp3/internal/connection/i;

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/i;-><init>(Ljava/io/IOException;)V

    throw p0

    :goto_1
    invoke-virtual {p1}, Lokhttp3/internal/connection/i;->getLastConnectException()Ljava/io/IOException;

    move-result-object p2

    invoke-virtual {p0, p2}, Lokhttp3/internal/connection/d;->h(Ljava/io/IOException;)V

    throw p1
.end method

.method public final d()Lokhttp3/a;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    return-object p0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lokhttp3/internal/connection/d;->g:I

    if-nez v0, :cond_0

    iget v0, p0, Lokhttp3/internal/connection/d;->h:I

    if-nez v0, :cond_0

    iget v0, p0, Lokhttp3/internal/connection/d;->i:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/d;->j:Lokhttp3/d0;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lokhttp3/internal/connection/d;->f()Lokhttp3/d0;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lokhttp3/internal/connection/d;->j:Lokhttp3/d0;

    return v1

    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/j$b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lokhttp3/internal/connection/j$b;->b()Z

    move-result v0

    if-ne v0, v1, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lokhttp3/internal/connection/d;->f:Lokhttp3/internal/connection/j;

    if-nez p0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lokhttp3/internal/connection/j;->a()Z

    move-result p0

    return p0
.end method

.method public final g(Lokhttp3/u;)Z
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    invoke-virtual {p0}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object p0

    invoke-virtual {p1}, Lokhttp3/u;->m()I

    move-result v0

    invoke-virtual {p0}, Lokhttp3/u;->m()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final h(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/d;->j:Lokhttp3/d0;

    instance-of v0, p1, Lo9/n;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lo9/n;

    iget-object v0, v0, Lo9/n;->errorCode:Lo9/b;

    sget-object v1, Lo9/b;->REFUSED_STREAM:Lo9/b;

    if-ne v0, v1, :cond_0

    iget p1, p0, Lokhttp3/internal/connection/d;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/connection/d;->g:I

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lo9/a;

    if-eqz p1, :cond_1

    iget p1, p0, Lokhttp3/internal/connection/d;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/connection/d;->h:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lokhttp3/internal/connection/d;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/connection/d;->i:I

    :goto_0
    return-void
.end method
