.class public final Lokhttp3/internal/connection/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/j$a;,
        Lokhttp3/internal/connection/j$b;
    }
.end annotation


# static fields
.field public static final i:Lokhttp3/internal/connection/j$a;


# instance fields
.field private final a:Lokhttp3/a;

.field private final b:Lokhttp3/internal/connection/h;

.field private final c:Lokhttp3/e;

.field private final d:Lokhttp3/q;

.field private e:Ljava/util/List;

.field private f:I

.field private g:Ljava/util/List;

.field private final h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/connection/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/connection/j;->i:Lokhttp3/internal/connection/j$a;

    return-void
.end method

.method public constructor <init>(Lokhttp3/a;Lokhttp3/internal/connection/h;Lokhttp3/e;Lokhttp3/q;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routeDatabase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/j;->a:Lokhttp3/a;

    iput-object p2, p0, Lokhttp3/internal/connection/j;->b:Lokhttp3/internal/connection/h;

    iput-object p3, p0, Lokhttp3/internal/connection/j;->c:Lokhttp3/e;

    iput-object p4, p0, Lokhttp3/internal/connection/j;->d:Lokhttp3/q;

    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lokhttp3/internal/connection/j;->e:Ljava/util/List;

    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lokhttp3/internal/connection/j;->g:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/connection/j;->h:Ljava/util/List;

    invoke-virtual {p1}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object p2

    invoke-virtual {p1}, Lokhttp3/a;->g()Ljava/net/Proxy;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lokhttp3/internal/connection/j;->f(Lokhttp3/u;Ljava/net/Proxy;)V

    return-void
.end method

.method private final b()Z
    .locals 1

    iget v0, p0, Lokhttp3/internal/connection/j;->f:I

    iget-object p0, p0, Lokhttp3/internal/connection/j;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final d()Ljava/net/Proxy;
    .locals 3

    invoke-direct {p0}, Lokhttp3/internal/connection/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/connection/j;->e:Ljava/util/List;

    iget v1, p0, Lokhttp3/internal/connection/j;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/connection/j;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    invoke-direct {p0, v0}, Lokhttp3/internal/connection/j;->e(Ljava/net/Proxy;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokhttp3/internal/connection/j;->a:Lokhttp3/a;

    invoke-virtual {v2}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/internal/connection/j;->e:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final e(Ljava/net/Proxy;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/j;->g:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    instance-of v2, v1, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_1

    sget-object v2, Lokhttp3/internal/connection/j;->i:Lokhttp3/internal/connection/j$a;

    const-string v3, "proxyAddress"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v2, v1}, Lokhttp3/internal/connection/j$a;->a(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/connection/j;->a:Lokhttp3/a;

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lokhttp3/internal/connection/j;->a:Lokhttp3/a;

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/u;->m()I

    move-result v1

    :goto_1
    const/4 v3, 0x1

    if-gt v3, v1, :cond_7

    const/high16 v3, 0x10000

    if-ge v1, v3, :cond_7

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object v3, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne p1, v3, :cond_3

    invoke-static {v2, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    invoke-static {v2}, Li9/d;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lokhttp3/internal/connection/j;->d:Lokhttp3/q;

    iget-object v3, p0, Lokhttp3/internal/connection/j;->c:Lokhttp3/e;

    invoke-virtual {p1, v3, v2}, Lokhttp3/q;->m(Lokhttp3/e;Ljava/lang/String;)V

    iget-object p1, p0, Lokhttp3/internal/connection/j;->a:Lokhttp3/a;

    invoke-virtual {p1}, Lokhttp3/a;->c()Lokhttp3/p;

    move-result-object p1

    invoke-interface {p1, v2}, Lokhttp3/p;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lokhttp3/internal/connection/j;->d:Lokhttp3/q;

    iget-object p0, p0, Lokhttp3/internal/connection/j;->c:Lokhttp3/e;

    invoke-virtual {v3, p0, v2, p1}, Lokhttp3/q;->l(Lokhttp3/e;Ljava/lang/String;Ljava/util/List;)V

    move-object p0, p1

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    :goto_4
    return-void

    :cond_6
    new-instance p1, Ljava/net/UnknownHostException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lokhttp3/internal/connection/j;->a:Lokhttp3/a;

    invoke-virtual {p0}, Lokhttp3/a;->c()Lokhttp3/p;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " returned no addresses for "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p0, Ljava/net/SocketException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No route to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; port is out of range"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final f(Lokhttp3/u;Ljava/net/Proxy;)V
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/connection/j;->d:Lokhttp3/q;

    iget-object v1, p0, Lokhttp3/internal/connection/j;->c:Lokhttp3/e;

    invoke-virtual {v0, v1, p1}, Lokhttp3/q;->o(Lokhttp3/e;Lokhttp3/u;)V

    invoke-static {p2, p1, p0}, Lokhttp3/internal/connection/j;->g(Ljava/net/Proxy;Lokhttp3/u;Lokhttp3/internal/connection/j;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lokhttp3/internal/connection/j;->e:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/connection/j;->f:I

    iget-object v0, p0, Lokhttp3/internal/connection/j;->d:Lokhttp3/q;

    iget-object p0, p0, Lokhttp3/internal/connection/j;->c:Lokhttp3/e;

    invoke-virtual {v0, p0, p1, p2}, Lokhttp3/q;->n(Lokhttp3/e;Lokhttp3/u;Ljava/util/List;)V

    return-void
.end method

.method private static final g(Ljava/net/Proxy;Lokhttp3/u;Lokhttp3/internal/connection/j;)Ljava/util/List;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lokhttp3/u;->r()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    filled-new-array {p0}, [Ljava/net/Proxy;

    move-result-object p0

    invoke-static {p0}, Li9/d;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p2, Lokhttp3/internal/connection/j;->a:Lokhttp3/a;

    invoke-virtual {p1}, Lokhttp3/a;->i()Ljava/net/ProxySelector;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "proxiesOrNull"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li9/d;->Q(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    filled-new-array {p0}, [Ljava/net/Proxy;

    move-result-object p0

    invoke-static {p0}, Li9/d;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    invoke-direct {p0}, Lokhttp3/internal/connection/j;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lokhttp3/internal/connection/j;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final c()Lokhttp3/internal/connection/j$b;
    .locals 6

    invoke-virtual {p0}, Lokhttp3/internal/connection/j;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-direct {p0}, Lokhttp3/internal/connection/j;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lokhttp3/internal/connection/j;->d()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/connection/j;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    new-instance v4, Lokhttp3/d0;

    iget-object v5, p0, Lokhttp3/internal/connection/j;->a:Lokhttp3/a;

    invoke-direct {v4, v5, v1, v3}, Lokhttp3/d0;-><init>(Lokhttp3/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v3, p0, Lokhttp3/internal/connection/j;->b:Lokhttp3/internal/connection/h;

    invoke-virtual {v3, v4}, Lokhttp3/internal/connection/h;->c(Lokhttp3/d0;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lokhttp3/internal/connection/j;->h:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lokhttp3/internal/connection/j;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/collections/o;->v(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    iget-object p0, p0, Lokhttp3/internal/connection/j;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_4
    new-instance p0, Lokhttp3/internal/connection/j$b;

    invoke-direct {p0, v0}, Lokhttp3/internal/connection/j$b;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_5
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
