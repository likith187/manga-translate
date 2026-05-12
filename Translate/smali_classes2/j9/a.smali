.class public final Lj9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj9/a$a;
    }
.end annotation


# instance fields
.field private final d:Lokhttp3/p;


# direct methods
.method public constructor <init>(Lokhttp3/p;)V
    .locals 1

    const-string v0, "defaultDns"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj9/a;->d:Lokhttp3/p;

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/p;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2
    sget-object p1, Lokhttp3/p;->b:Lokhttp3/p;

    :cond_0
    invoke-direct {p0, p1}, Lj9/a;-><init>(Lokhttp3/p;)V

    return-void
.end method

.method private final b(Ljava/net/Proxy;Lokhttp3/u;Lokhttp3/p;)Ljava/net/InetAddress;
    .locals 1

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lj9/a$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    invoke-virtual {p2}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lokhttp3/p;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/o;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type java.net.InetSocketAddress"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    const-string p1, "address() as InetSocketAddress).address"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method


# virtual methods
.method public a(Lokhttp3/d0;Lokhttp3/b0;)Lokhttp3/z;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "response"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lokhttp3/b0;->v()Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lokhttp3/b0;->D0()Lokhttp3/z;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/z;->i()Lokhttp3/u;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lokhttp3/b0;->x()I

    move-result v2

    const/16 v5, 0x197

    const/4 v6, 0x1

    if-ne v2, v5, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lokhttp3/d0;->b()Ljava/net/Proxy;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokhttp3/g;

    invoke-virtual {v7}, Lokhttp3/g;->c()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Basic"

    invoke-static {v9, v8, v6}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lokhttp3/a;->c()Lokhttp3/p;

    move-result-object v8

    if-nez v8, :cond_6

    :cond_5
    iget-object v8, v0, Lj9/a;->d:Lokhttp3/p;

    :cond_6
    const-string v9, "proxy"

    if-eqz v2, :cond_7

    invoke-virtual {v5}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v10

    const-string v11, "null cannot be cast to non-null type java.net.InetSocketAddress"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/net/InetSocketAddress;

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v5, v4, v8}, Lj9/a;->b(Ljava/net/Proxy;Lokhttp3/u;Lokhttp3/p;)Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v13

    invoke-virtual {v4}, Lokhttp3/u;->q()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Lokhttp3/g;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7}, Lokhttp3/g;->c()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v4}, Lokhttp3/u;->s()Ljava/net/URL;

    move-result-object v17

    sget-object v18, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    invoke-static/range {v11 .. v18}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v8

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v5, v4, v8}, Lj9/a;->b(Ljava/net/Proxy;Lokhttp3/u;Lokhttp3/p;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v4}, Lokhttp3/u;->m()I

    move-result v11

    invoke-virtual {v4}, Lokhttp3/u;->q()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lokhttp3/g;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lokhttp3/g;->c()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lokhttp3/u;->s()Ljava/net/URL;

    move-result-object v15

    sget-object v16, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    move-object v9, v10

    move-object v10, v8

    invoke-static/range {v9 .. v16}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v8

    :goto_2
    if-eqz v8, :cond_3

    if-eqz v2, :cond_8

    const-string v0, "Proxy-Authorization"

    goto :goto_3

    :cond_8
    const-string v0, "Authorization"

    :goto_3
    invoke-virtual {v8}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auth.userName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v2

    const-string v4, "auth.password"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Lokhttp3/g;->a()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lokhttp3/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lokhttp3/z;->h()Lokhttp3/z$a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lokhttp3/z$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/z$a;->b()Lokhttp3/z;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method
