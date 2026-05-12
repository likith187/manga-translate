.class public final Lm9/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm9/j$a;
    }
.end annotation


# static fields
.field public static final b:Lm9/j$a;


# instance fields
.field private final a:Lokhttp3/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm9/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm9/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lm9/j;->b:Lm9/j$a;

    return-void
.end method

.method public constructor <init>(Lokhttp3/x;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm9/j;->a:Lokhttp3/x;

    return-void
.end method

.method private final b(Lokhttp3/b0;Ljava/lang/String;)Lokhttp3/z;
    .locals 7

    iget-object v0, p0, Lm9/j;->a:Lokhttp3/x;

    invoke-virtual {v0}, Lokhttp3/x;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "Location"

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lokhttp3/b0;->I(Lokhttp3/b0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lokhttp3/b0;->D0()Lokhttp3/z;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/z;->i()Lokhttp3/u;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/u;->p(Ljava/lang/String;)Lokhttp3/u;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Lokhttp3/u;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/b0;->D0()Lokhttp3/z;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/z;->i()Lokhttp3/u;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/u;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p0, p0, Lm9/j;->a:Lokhttp3/x;

    invoke-virtual {p0}, Lokhttp3/x;->p()Z

    move-result p0

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p1}, Lokhttp3/b0;->D0()Lokhttp3/z;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/z;->h()Lokhttp3/z$a;

    move-result-object p0

    invoke-static {p2}, Lm9/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lokhttp3/b0;->x()I

    move-result v2

    sget-object v3, Lm9/f;->INSTANCE:Lm9/f;

    invoke-virtual {v3, p2}, Lm9/f;->c(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x133

    const/16 v6, 0x134

    if-nez v4, :cond_5

    if-eq v2, v6, :cond_5

    if-ne v2, v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, p2}, Lm9/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eq v2, v6, :cond_6

    if-eq v2, v5, :cond_6

    const-string p2, "GET"

    invoke-virtual {p0, p2, v1}, Lokhttp3/z$a;->e(Ljava/lang/String;Lokhttp3/a0;)Lokhttp3/z$a;

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lokhttp3/b0;->D0()Lokhttp3/z;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/z;->a()Lokhttp3/a0;

    move-result-object v1

    :cond_7
    invoke-virtual {p0, p2, v1}, Lokhttp3/z$a;->e(Ljava/lang/String;Lokhttp3/a0;)Lokhttp3/z$a;

    :goto_2
    if-nez v4, :cond_8

    const-string p2, "Transfer-Encoding"

    invoke-virtual {p0, p2}, Lokhttp3/z$a;->f(Ljava/lang/String;)Lokhttp3/z$a;

    const-string p2, "Content-Length"

    invoke-virtual {p0, p2}, Lokhttp3/z$a;->f(Ljava/lang/String;)Lokhttp3/z$a;

    const-string p2, "Content-Type"

    invoke-virtual {p0, p2}, Lokhttp3/z$a;->f(Ljava/lang/String;)Lokhttp3/z$a;

    :cond_8
    invoke-virtual {p1}, Lokhttp3/b0;->D0()Lokhttp3/z;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/z;->i()Lokhttp3/u;

    move-result-object p1

    invoke-static {p1, v0}, Li9/d;->j(Lokhttp3/u;Lokhttp3/u;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "Authorization"

    invoke-virtual {p0, p1}, Lokhttp3/z$a;->f(Ljava/lang/String;)Lokhttp3/z$a;

    :cond_9
    invoke-virtual {p0, v0}, Lokhttp3/z$a;->h(Lokhttp3/u;)Lokhttp3/z$a;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/z$a;->b()Lokhttp3/z;

    move-result-object p0

    return-object p0
.end method

.method private final c(Lokhttp3/b0;Lokhttp3/internal/connection/c;)Lokhttp3/z;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/f;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lokhttp3/internal/connection/f;->z()Lokhttp3/d0;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Lokhttp3/b0;->x()I

    move-result v2

    invoke-virtual {p1}, Lokhttp3/b0;->D0()Lokhttp3/z;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/z;->g()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x133

    if-eq v2, v4, :cond_10

    const/16 v4, 0x134

    if-eq v2, v4, :cond_10

    const/16 v4, 0x191

    if-eq v2, v4, :cond_f

    const/16 v4, 0x1a5

    if-eq v2, v4, :cond_b

    const/16 p2, 0x1f7

    if-eq v2, p2, :cond_8

    const/16 p2, 0x197

    if-eq v2, p2, :cond_6

    const/16 p2, 0x198

    if-eq v2, p2, :cond_1

    packed-switch v2, :pswitch_data_0

    return-object v0

    :cond_1
    iget-object v1, p0, Lm9/j;->a:Lokhttp3/x;

    invoke-virtual {v1}, Lokhttp3/x;->B()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lokhttp3/b0;->D0()Lokhttp3/z;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/z;->a()Lokhttp3/a0;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lokhttp3/a0;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p1}, Lokhttp3/b0;->q0()Lokhttp3/b0;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lokhttp3/b0;->x()I

    move-result v1

    if-ne v1, p2, :cond_4

    return-object v0

    :cond_4
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lm9/j;->g(Lokhttp3/b0;I)I

    move-result p0

    if-lez p0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p1}, Lokhttp3/b0;->D0()Lokhttp3/z;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lokhttp3/d0;->b()Ljava/net/Proxy;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p2

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p2, v0, :cond_7

    iget-object p0, p0, Lm9/j;->a:Lokhttp3/x;

    invoke-virtual {p0}, Lokhttp3/x;->y()Lokhttp3/b;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lokhttp3/b;->a(Lokhttp3/d0;Lokhttp3/b0;)Lokhttp3/z;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-virtual {p1}, Lokhttp3/b0;->q0()Lokhttp3/b0;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lokhttp3/b0;->x()I

    move-result v1

    if-ne v1, p2, :cond_9

    return-object v0

    :cond_9
    const p2, 0x7fffffff

    invoke-direct {p0, p1, p2}, Lm9/j;->g(Lokhttp3/b0;I)I

    move-result p0

    if-nez p0, :cond_a

    invoke-virtual {p1}, Lokhttp3/b0;->D0()Lokhttp3/z;

    move-result-object p0

    return-object p0

    :cond_a
    return-object v0

    :cond_b
    invoke-virtual {p1}, Lokhttp3/b0;->D0()Lokhttp3/z;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/z;->a()Lokhttp3/a0;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lokhttp3/a0;->d()Z

    move-result p0

    if-eqz p0, :cond_c

    return-object v0

    :cond_c
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lokhttp3/internal/connection/c;->l()Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_1

    :cond_d
    invoke-virtual {p2}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/f;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/internal/connection/f;->x()V

    invoke-virtual {p1}, Lokhttp3/b0;->D0()Lokhttp3/z;

    move-result-object p0

    return-object p0

    :cond_e
    :goto_1
    return-object v0

    :cond_f
    iget-object p0, p0, Lm9/j;->a:Lokhttp3/x;

    invoke-virtual {p0}, Lokhttp3/x;->d()Lokhttp3/b;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lokhttp3/b;->a(Lokhttp3/d0;Lokhttp3/b0;)Lokhttp3/z;

    move-result-object p0

    return-object p0

    :cond_10
    :pswitch_0
    invoke-direct {p0, p1, v3}, Lm9/j;->b(Lokhttp3/b0;Ljava/lang/String;)Lokhttp3/z;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final d(Ljava/io/IOException;Z)Z
    .locals 2

    instance-of p0, p1, Ljava/net/ProtocolException;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_1

    if-nez p2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    instance-of p0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/security/cert/CertificateException;

    if-eqz p0, :cond_3

    return v0

    :cond_3
    instance-of p0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p0, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method private final e(Ljava/io/IOException;Lokhttp3/internal/connection/e;Lokhttp3/z;Z)Z
    .locals 2

    iget-object v0, p0, Lm9/j;->a:Lokhttp3/x;

    invoke-virtual {v0}, Lokhttp3/x;->B()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p4, :cond_1

    invoke-direct {p0, p1, p3}, Lm9/j;->f(Ljava/io/IOException;Lokhttp3/z;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1, p4}, Lm9/j;->d(Ljava/io/IOException;Z)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p2}, Lokhttp3/internal/connection/e;->t()Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private final f(Ljava/io/IOException;Lokhttp3/z;)Z
    .locals 0

    invoke-virtual {p2}, Lokhttp3/z;->a()Lokhttp3/a0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/a0;->d()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    instance-of p0, p1, Ljava/io/FileNotFoundException;

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final g(Lokhttp3/b0;I)I
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x2

    const-string v1, "Retry-After"

    invoke-static {p1, v1, p0, v0, p0}, Lokhttp3/b0;->I(Lokhttp3/b0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    new-instance p1, Lkotlin/text/n;

    const-string p2, "\\d+"

    invoke-direct {p1, p2}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lkotlin/text/n;->matches(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "valueOf(header)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_1
    const p0, 0x7fffffff

    return p0
.end method


# virtual methods
.method public a(Lokhttp3/v$a;)Lokhttp3/b0;
    .locals 10

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lm9/g;

    invoke-virtual {p1}, Lm9/g;->i()Lokhttp3/z;

    move-result-object v0

    invoke-virtual {p1}, Lm9/g;->e()Lokhttp3/internal/connection/e;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v8, v3

    move-object v7, v4

    :goto_0
    move v6, v5

    :goto_1
    invoke-virtual {v1, v0, v6}, Lokhttp3/internal/connection/e;->h(Lokhttp3/z;Z)V

    :try_start_0
    invoke-virtual {v1}, Lokhttp3/internal/connection/e;->p()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_8

    :try_start_1
    invoke-virtual {p1, v0}, Lm9/g;->b(Lokhttp3/z;)Lokhttp3/b0;

    move-result-object v0
    :try_end_1
    .catch Lokhttp3/internal/connection/i; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lokhttp3/b0;->b0()Lokhttp3/b0$a;

    move-result-object v0

    invoke-virtual {v7}, Lokhttp3/b0;->b0()Lokhttp3/b0$a;

    move-result-object v6

    invoke-virtual {v6, v4}, Lokhttp3/b0$a;->b(Lokhttp3/c0;)Lokhttp3/b0$a;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/b0$a;->c()Lokhttp3/b0;

    move-result-object v6

    invoke-virtual {v0, v6}, Lokhttp3/b0$a;->o(Lokhttp3/b0;)Lokhttp3/b0$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/b0$a;->c()Lokhttp3/b0;

    move-result-object v0

    :cond_0
    move-object v7, v0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :goto_2
    invoke-virtual {v1}, Lokhttp3/internal/connection/e;->m()Lokhttp3/internal/connection/c;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lm9/j;->c(Lokhttp3/b0;Lokhttp3/internal/connection/c;)Lokhttp3/z;

    move-result-object v6

    if-nez v6, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->m()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lokhttp3/internal/connection/e;->v()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-virtual {v1, v3}, Lokhttp3/internal/connection/e;->i(Z)V

    return-object v7

    :cond_2
    :try_start_3
    invoke-virtual {v6}, Lokhttp3/z;->a()Lokhttp3/a0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lokhttp3/a0;->d()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v3}, Lokhttp3/internal/connection/e;->i(Z)V

    return-object v7

    :cond_3
    :try_start_4
    invoke-virtual {v7}, Lokhttp3/b0;->c()Lokhttp3/c0;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Li9/d;->l(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    add-int/lit8 v8, v8, 0x1

    const/16 v0, 0x14

    if-gt v8, v0, :cond_5

    invoke-virtual {v1, v5}, Lokhttp3/internal/connection/e;->i(Z)V

    move-object v0, v6

    goto :goto_0

    :cond_5
    :try_start_5
    new-instance p0, Ljava/net/ProtocolException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Too many follow-up requests: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception v6

    instance-of v9, v6, Lo9/a;

    xor-int/2addr v9, v5

    invoke-direct {p0, v6, v1, v0, v9}, Lm9/j;->e(Ljava/io/IOException;Lokhttp3/internal/connection/e;Lokhttp3/z;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v2, v6}, Lkotlin/collections/o;->h0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    invoke-virtual {v1, v5}, Lokhttp3/internal/connection/e;->i(Z)V

    move v6, v3

    goto/16 :goto_1

    :cond_6
    :try_start_6
    invoke-static {v6, v2}, Li9/d;->W(Ljava/lang/Exception;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Lokhttp3/internal/connection/i;->getLastConnectException()Ljava/io/IOException;

    move-result-object v9

    invoke-direct {p0, v9, v1, v0, v3}, Lm9/j;->e(Ljava/io/IOException;Lokhttp3/internal/connection/e;Lokhttp3/z;Z)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v6}, Lokhttp3/internal/connection/i;->getFirstConnectException()Ljava/io/IOException;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/collections/o;->h0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    :cond_7
    invoke-virtual {v6}, Lokhttp3/internal/connection/i;->getFirstConnectException()Ljava/io/IOException;

    move-result-object p0

    invoke-static {p0, v2}, Li9/d;->W(Ljava/lang/Exception;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Canceled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    invoke-virtual {v1, v5}, Lokhttp3/internal/connection/e;->i(Z)V

    throw p0
.end method
