.class public final Lokhttp3/internal/connection/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/c$a;,
        Lokhttp3/internal/connection/c$b;
    }
.end annotation


# instance fields
.field private final a:Lokhttp3/internal/connection/e;

.field private final b:Lokhttp3/q;

.field private final c:Lokhttp3/internal/connection/d;

.field private final d:Lm9/d;

.field private e:Z

.field private f:Z

.field private final g:Lokhttp3/internal/connection/f;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/e;Lokhttp3/q;Lokhttp3/internal/connection/d;Lm9/d;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codec"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    iput-object p2, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/q;

    iput-object p3, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/internal/connection/d;

    iput-object p4, p0, Lokhttp3/internal/connection/c;->d:Lm9/d;

    invoke-interface {p4}, Lm9/d;->h()Lokhttp3/internal/connection/f;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/c;->g:Lokhttp3/internal/connection/f;

    return-void
.end method

.method private final t(Ljava/io/IOException;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/connection/c;->f:Z

    iget-object v0, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/internal/connection/d;

    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/d;->h(Ljava/io/IOException;)V

    iget-object v0, p0, Lokhttp3/internal/connection/c;->d:Lm9/d;

    invoke-interface {v0}, Lm9/d;->h()Lokhttp3/internal/connection/f;

    move-result-object v0

    iget-object p0, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, p0, p1}, Lokhttp3/internal/connection/f;->G(Lokhttp3/internal/connection/e;Ljava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public final a(JZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2

    if-eqz p5, :cond_0

    invoke-direct {p0, p5}, Lokhttp3/internal/connection/c;->t(Ljava/io/IOException;)V

    :cond_0
    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/q;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1, p5}, Lokhttp3/q;->r(Lokhttp3/e;Ljava/io/IOException;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/q;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/q;->p(Lokhttp3/e;J)V

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    if-eqz p5, :cond_3

    iget-object p1, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/q;

    iget-object p2, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {p1, p2, p5}, Lokhttp3/q;->w(Lokhttp3/e;Ljava/io/IOException;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/q;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/q;->u(Lokhttp3/e;J)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {p1, p0, p4, p3, p5}, Lokhttp3/internal/connection/e;->q(Lokhttp3/internal/connection/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/c;->d:Lm9/d;

    invoke-interface {p0}, Lm9/d;->cancel()V

    return-void
.end method

.method public final c(Lokhttp3/z;Z)Lt9/y;
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p2, p0, Lokhttp3/internal/connection/c;->e:Z

    invoke-virtual {p1}, Lokhttp3/z;->a()Lokhttp3/a0;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lokhttp3/a0;->a()J

    move-result-wide v0

    iget-object p2, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/q;

    iget-object v2, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {p2, v2}, Lokhttp3/q;->q(Lokhttp3/e;)V

    iget-object p2, p0, Lokhttp3/internal/connection/c;->d:Lm9/d;

    invoke-interface {p2, p1, v0, v1}, Lm9/d;->f(Lokhttp3/z;J)Lt9/y;

    move-result-object p1

    new-instance p2, Lokhttp3/internal/connection/c$a;

    invoke-direct {p2, p0, p1, v0, v1}, Lokhttp3/internal/connection/c$a;-><init>(Lokhttp3/internal/connection/c;Lt9/y;J)V

    return-object p2
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lokhttp3/internal/connection/c;->d:Lm9/d;

    invoke-interface {v0}, Lm9/d;->cancel()V

    iget-object v0, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v1, v2}, Lokhttp3/internal/connection/e;->q(Lokhttp3/internal/connection/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public final e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/c;->d:Lm9/d;

    invoke-interface {v0}, Lm9/d;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/q;

    iget-object v2, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v1, v2, v0}, Lokhttp3/q;->r(Lokhttp3/e;Ljava/io/IOException;)V

    invoke-direct {p0, v0}, Lokhttp3/internal/connection/c;->t(Ljava/io/IOException;)V

    throw v0
.end method

.method public final f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/c;->d:Lm9/d;

    invoke-interface {v0}, Lm9/d;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/q;

    iget-object v2, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v1, v2, v0}, Lokhttp3/q;->r(Lokhttp3/e;Ljava/io/IOException;)V

    invoke-direct {p0, v0}, Lokhttp3/internal/connection/c;->t(Ljava/io/IOException;)V

    throw v0
.end method

.method public final g()Lokhttp3/internal/connection/e;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    return-object p0
.end method

.method public final h()Lokhttp3/internal/connection/f;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/c;->g:Lokhttp3/internal/connection/f;

    return-object p0
.end method

.method public final i()Lokhttp3/q;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/q;

    return-object p0
.end method

.method public final j()Lokhttp3/internal/connection/d;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/internal/connection/d;

    return-object p0
.end method

.method public final k()Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/internal/connection/c;->f:Z

    return p0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/internal/connection/d;

    invoke-virtual {v0}, Lokhttp3/internal/connection/d;->d()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lokhttp3/internal/connection/c;->g:Lokhttp3/internal/connection/f;

    invoke-virtual {p0}, Lokhttp3/internal/connection/f;->z()Lokhttp3/d0;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final m()Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/internal/connection/c;->e:Z

    return p0
.end method

.method public final n()V
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/c;->d:Lm9/d;

    invoke-interface {p0}, Lm9/d;->h()Lokhttp3/internal/connection/f;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/internal/connection/f;->y()V

    return-void
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v3, v1, v2}, Lokhttp3/internal/connection/e;->q(Lokhttp3/internal/connection/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public final p(Lokhttp3/b0;)Lokhttp3/c0;
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "Content-Type"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lokhttp3/b0;->I(Lokhttp3/b0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/c;->d:Lm9/d;

    invoke-interface {v1, p1}, Lm9/d;->d(Lokhttp3/b0;)J

    move-result-wide v1

    iget-object v3, p0, Lokhttp3/internal/connection/c;->d:Lm9/d;

    invoke-interface {v3, p1}, Lm9/d;->e(Lokhttp3/b0;)Lt9/a0;

    move-result-object p1

    new-instance v3, Lokhttp3/internal/connection/c$b;

    invoke-direct {v3, p0, p1, v1, v2}, Lokhttp3/internal/connection/c$b;-><init>(Lokhttp3/internal/connection/c;Lt9/a0;J)V

    new-instance p1, Lm9/h;

    invoke-static {v3}, Lt9/n;->b(Lt9/a0;)Lt9/f;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lm9/h;-><init>(Ljava/lang/String;JLt9/f;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/q;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1, p1}, Lokhttp3/q;->w(Lokhttp3/e;Ljava/io/IOException;)V

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/c;->t(Ljava/io/IOException;)V

    throw p1
.end method

.method public final q(Z)Lokhttp3/b0$a;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/c;->d:Lm9/d;

    invoke-interface {v0, p1}, Lm9/d;->g(Z)Lokhttp3/b0$a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lokhttp3/b0$a;->l(Lokhttp3/internal/connection/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-object p1

    :goto_1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/q;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1, p1}, Lokhttp3/q;->w(Lokhttp3/e;Ljava/io/IOException;)V

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/c;->t(Ljava/io/IOException;)V

    throw p1
.end method

.method public final r(Lokhttp3/b0;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/q;

    iget-object p0, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, p0, p1}, Lokhttp3/q;->x(Lokhttp3/e;Lokhttp3/b0;)V

    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/q;

    iget-object p0, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, p0}, Lokhttp3/q;->y(Lokhttp3/e;)V

    return-void
.end method

.method public final u(Lokhttp3/z;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/q;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1}, Lokhttp3/q;->t(Lokhttp3/e;)V

    iget-object v0, p0, Lokhttp3/internal/connection/c;->d:Lm9/d;

    invoke-interface {v0, p1}, Lm9/d;->b(Lokhttp3/z;)V

    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/q;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1, p1}, Lokhttp3/q;->s(Lokhttp3/e;Lokhttp3/z;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/q;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1, p1}, Lokhttp3/q;->r(Lokhttp3/e;Ljava/io/IOException;)V

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/c;->t(Ljava/io/IOException;)V

    throw p1
.end method
