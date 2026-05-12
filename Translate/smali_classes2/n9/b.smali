.class public final Ln9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm9/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln9/b$a;,
        Ln9/b$b;,
        Ln9/b$c;,
        Ln9/b$d;,
        Ln9/b$e;,
        Ln9/b$f;,
        Ln9/b$g;
    }
.end annotation


# static fields
.field public static final h:Ln9/b$d;


# instance fields
.field private final a:Lokhttp3/x;

.field private final b:Lokhttp3/internal/connection/f;

.field private final c:Lt9/f;

.field private final d:Lt9/e;

.field private e:I

.field private final f:Ln9/a;

.field private g:Lokhttp3/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln9/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln9/b$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ln9/b;->h:Ln9/b$d;

    return-void
.end method

.method public constructor <init>(Lokhttp3/x;Lokhttp3/internal/connection/f;Lt9/f;Lt9/e;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln9/b;->a:Lokhttp3/x;

    iput-object p2, p0, Ln9/b;->b:Lokhttp3/internal/connection/f;

    iput-object p3, p0, Ln9/b;->c:Lt9/f;

    iput-object p4, p0, Ln9/b;->d:Lt9/e;

    new-instance p1, Ln9/a;

    invoke-direct {p1, p3}, Ln9/a;-><init>(Lt9/f;)V

    iput-object p1, p0, Ln9/b;->f:Ln9/a;

    return-void
.end method

.method public static final synthetic i(Ln9/b;Lt9/j;)V
    .locals 0

    invoke-direct {p0, p1}, Ln9/b;->r(Lt9/j;)V

    return-void
.end method

.method public static final synthetic j(Ln9/b;)Lokhttp3/x;
    .locals 0

    iget-object p0, p0, Ln9/b;->a:Lokhttp3/x;

    return-object p0
.end method

.method public static final synthetic k(Ln9/b;)Ln9/a;
    .locals 0

    iget-object p0, p0, Ln9/b;->f:Ln9/a;

    return-object p0
.end method

.method public static final synthetic l(Ln9/b;)Lt9/e;
    .locals 0

    iget-object p0, p0, Ln9/b;->d:Lt9/e;

    return-object p0
.end method

.method public static final synthetic m(Ln9/b;)Lt9/f;
    .locals 0

    iget-object p0, p0, Ln9/b;->c:Lt9/f;

    return-object p0
.end method

.method public static final synthetic n(Ln9/b;)I
    .locals 0

    iget p0, p0, Ln9/b;->e:I

    return p0
.end method

.method public static final synthetic o(Ln9/b;)Lokhttp3/t;
    .locals 0

    iget-object p0, p0, Ln9/b;->g:Lokhttp3/t;

    return-object p0
.end method

.method public static final synthetic p(Ln9/b;I)V
    .locals 0

    iput p1, p0, Ln9/b;->e:I

    return-void
.end method

.method public static final synthetic q(Ln9/b;Lokhttp3/t;)V
    .locals 0

    iput-object p1, p0, Ln9/b;->g:Lokhttp3/t;

    return-void
.end method

.method private final r(Lt9/j;)V
    .locals 1

    invoke-virtual {p1}, Lt9/j;->i()Lt9/b0;

    move-result-object p0

    sget-object v0, Lt9/b0;->e:Lt9/b0;

    invoke-virtual {p1, v0}, Lt9/j;->j(Lt9/b0;)Lt9/j;

    invoke-virtual {p0}, Lt9/b0;->a()Lt9/b0;

    invoke-virtual {p0}, Lt9/b0;->b()Lt9/b0;

    return-void
.end method

.method private final s(Lokhttp3/z;)Z
    .locals 1

    const-string p0, "Transfer-Encoding"

    invoke-virtual {p1, p0}, Lokhttp3/z;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    const-string v0, "chunked"

    invoke-static {v0, p0, p1}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final t(Lokhttp3/b0;)Z
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x2

    const-string v1, "Transfer-Encoding"

    invoke-static {p1, v1, p0, v0, p0}, Lokhttp3/b0;->I(Lokhttp3/b0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    const-string v0, "chunked"

    invoke-static {v0, p0, p1}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final u()Lt9/y;
    .locals 2

    iget v0, p0, Ln9/b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Ln9/b;->e:I

    new-instance v0, Ln9/b$b;

    invoke-direct {v0, p0}, Ln9/b$b;-><init>(Ln9/b;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ln9/b;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final v(Lokhttp3/u;)Lt9/a0;
    .locals 2

    iget v0, p0, Ln9/b;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Ln9/b;->e:I

    new-instance v0, Ln9/b$c;

    invoke-direct {v0, p0, p1}, Ln9/b$c;-><init>(Ln9/b;Lokhttp3/u;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ln9/b;->e:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final w(J)Lt9/a0;
    .locals 2

    iget v0, p0, Ln9/b;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Ln9/b;->e:I

    new-instance v0, Ln9/b$e;

    invoke-direct {v0, p0, p1, p2}, Ln9/b$e;-><init>(Ln9/b;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ln9/b;->e:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final x()Lt9/y;
    .locals 2

    iget v0, p0, Ln9/b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Ln9/b;->e:I

    new-instance v0, Ln9/b$f;

    invoke-direct {v0, p0}, Ln9/b$f;-><init>(Ln9/b;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ln9/b;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final y()Lt9/a0;
    .locals 2

    iget v0, p0, Ln9/b;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Ln9/b;->e:I

    invoke-virtual {p0}, Ln9/b;->h()Lokhttp3/internal/connection/f;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->y()V

    new-instance v0, Ln9/b$g;

    invoke-direct {v0, p0}, Ln9/b$g;-><init>(Ln9/b;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ln9/b;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A(Lokhttp3/t;Ljava/lang/String;)V
    .locals 4

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestLine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Ln9/b;->e:I

    if-nez v0, :cond_1

    iget-object v0, p0, Ln9/b;->d:Lt9/e;

    invoke-interface {v0, p2}, Lt9/e;->u0(Ljava/lang/String;)Lt9/e;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lt9/e;->u0(Ljava/lang/String;)Lt9/e;

    invoke-virtual {p1}, Lokhttp3/t;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Ln9/b;->d:Lt9/e;

    invoke-virtual {p1, v1}, Lokhttp3/t;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lt9/e;->u0(Ljava/lang/String;)Lt9/e;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lt9/e;->u0(Ljava/lang/String;)Lt9/e;

    move-result-object v2

    invoke-virtual {p1, v1}, Lokhttp3/t;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lt9/e;->u0(Ljava/lang/String;)Lt9/e;

    move-result-object v2

    invoke-interface {v2, v0}, Lt9/e;->u0(Ljava/lang/String;)Lt9/e;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ln9/b;->d:Lt9/e;

    invoke-interface {p1, v0}, Lt9/e;->u0(Ljava/lang/String;)Lt9/e;

    const/4 p1, 0x1

    iput p1, p0, Ln9/b;->e:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ln9/b;->e:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 0

    iget-object p0, p0, Ln9/b;->d:Lt9/e;

    invoke-interface {p0}, Lt9/e;->flush()V

    return-void
.end method

.method public b(Lokhttp3/z;)V
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lm9/i;->INSTANCE:Lm9/i;

    invoke-virtual {p0}, Ln9/b;->h()Lokhttp3/internal/connection/f;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/connection/f;->z()Lokhttp3/d0;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/d0;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    const-string v2, "connection.route().proxy.type()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lm9/i;->a(Lokhttp3/z;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/z;->e()Lokhttp3/t;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ln9/b;->A(Lokhttp3/t;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Ln9/b;->d:Lt9/e;

    invoke-interface {p0}, Lt9/e;->flush()V

    return-void
.end method

.method public cancel()V
    .locals 0

    invoke-virtual {p0}, Ln9/b;->h()Lokhttp3/internal/connection/f;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/internal/connection/f;->d()V

    return-void
.end method

.method public d(Lokhttp3/b0;)J
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm9/e;->b(Lokhttp3/b0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Ln9/b;->t(Lokhttp3/b0;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 p0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Li9/d;->u(Lokhttp3/b0;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public e(Lokhttp3/b0;)Lt9/a0;
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm9/e;->b(Lokhttp3/b0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ln9/b;->w(J)Lt9/a0;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Ln9/b;->t(Lokhttp3/b0;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lokhttp3/b0;->D0()Lokhttp3/z;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/z;->i()Lokhttp3/u;

    move-result-object p1

    invoke-direct {p0, p1}, Ln9/b;->v(Lokhttp3/u;)Lt9/a0;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Li9/d;->u(Lokhttp3/b0;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    invoke-direct {p0, v0, v1}, Ln9/b;->w(J)Lt9/a0;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Ln9/b;->y()Lt9/a0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public f(Lokhttp3/z;J)Lt9/y;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/z;->a()Lokhttp3/a0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lokhttp3/z;->a()Lokhttp3/a0;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a0;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Duplex connections are not supported for HTTP/1"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Ln9/b;->s(Lokhttp3/z;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Ln9/b;->u()Lt9/y;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_3

    invoke-direct {p0}, Ln9/b;->x()Lt9/y;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g(Z)Lokhttp3/b0$a;
    .locals 4

    iget v0, p0, Ln9/b;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ln9/b;->e:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    sget-object v0, Lm9/k;->d:Lm9/k$a;

    iget-object v1, p0, Ln9/b;->f:Ln9/a;

    invoke-virtual {v1}, Ln9/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm9/k$a;->a(Ljava/lang/String;)Lm9/k;

    move-result-object v0

    new-instance v1, Lokhttp3/b0$a;

    invoke-direct {v1}, Lokhttp3/b0$a;-><init>()V

    iget-object v3, v0, Lm9/k;->a:Lokhttp3/y;

    invoke-virtual {v1, v3}, Lokhttp3/b0$a;->p(Lokhttp3/y;)Lokhttp3/b0$a;

    move-result-object v1

    iget v3, v0, Lm9/k;->b:I

    invoke-virtual {v1, v3}, Lokhttp3/b0$a;->g(I)Lokhttp3/b0$a;

    move-result-object v1

    iget-object v3, v0, Lm9/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lokhttp3/b0$a;->m(Ljava/lang/String;)Lokhttp3/b0$a;

    move-result-object v1

    iget-object v3, p0, Ln9/b;->f:Ln9/a;

    invoke-virtual {v3}, Ln9/a;->a()Lokhttp3/t;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokhttp3/b0$a;->k(Lokhttp3/t;)Lokhttp3/b0$a;

    move-result-object v1

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    iget p1, v0, Lm9/k;->b:I

    if-ne p1, v3, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget p1, v0, Lm9/k;->b:I

    if-ne p1, v3, :cond_3

    iput v2, p0, Ln9/b;->e:I

    goto :goto_1

    :cond_3
    const/16 v0, 0x66

    if-gt v0, p1, :cond_4

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_4

    iput v2, p0, Ln9/b;->e:I

    goto :goto_1

    :cond_4
    const/4 p1, 0x4

    iput p1, p0, Ln9/b;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :goto_2
    invoke-virtual {p0}, Ln9/b;->h()Lokhttp3/internal/connection/f;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/internal/connection/f;->z()Lokhttp3/d0;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/u;->o()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public h()Lokhttp3/internal/connection/f;
    .locals 0

    iget-object p0, p0, Ln9/b;->b:Lokhttp3/internal/connection/f;

    return-object p0
.end method

.method public final z(Lokhttp3/b0;)V
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Li9/d;->u(Lokhttp3/b0;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Ln9/b;->w(J)Lt9/a0;

    move-result-object p0

    const p1, 0x7fffffff

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Li9/d;->J(Lt9/a0;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {p0}, Lt9/a0;->close()V

    return-void
.end method
