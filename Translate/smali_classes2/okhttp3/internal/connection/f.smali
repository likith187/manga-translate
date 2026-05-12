.class public final Lokhttp3/internal/connection/f;
.super Lo9/f$c;
.source "SourceFile"

# interfaces
.implements Lokhttp3/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/f$a;,
        Lokhttp3/internal/connection/f$b;
    }
.end annotation


# static fields
.field public static final t:Lokhttp3/internal/connection/f$a;


# instance fields
.field private final c:Lokhttp3/internal/connection/g;

.field private final d:Lokhttp3/d0;

.field private e:Ljava/net/Socket;

.field private f:Ljava/net/Socket;

.field private g:Lokhttp3/s;

.field private h:Lokhttp3/y;

.field private i:Lo9/f;

.field private j:Lt9/f;

.field private k:Lt9/e;

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private final r:Ljava/util/List;

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/connection/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/connection/f;->t:Lokhttp3/internal/connection/f$a;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/connection/g;Lokhttp3/d0;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "route"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lo9/f$c;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/internal/connection/g;

    iput-object p2, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    const/4 p1, 0x1

    iput p1, p0, Lokhttp3/internal/connection/f;->q:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/f;->r:Ljava/util/List;

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lokhttp3/internal/connection/f;->s:J

    return-void
.end method

.method private final A(Ljava/util/List;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/d0;

    invoke-virtual {v1}, Lokhttp3/d0;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v2}, Lokhttp3/d0;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v2}, Lokhttp3/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1}, Lokhttp3/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private final E(I)V
    .locals 7

    iget-object v0, p0, Lokhttp3/internal/connection/f;->f:Ljava/net/Socket;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lokhttp3/internal/connection/f;->j:Lt9/f;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lokhttp3/internal/connection/f;->k:Lt9/e;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v4, Lo9/f$a;

    const/4 v5, 0x1

    sget-object v6, Ll9/e;->INSTANCE:Ll9/e;

    invoke-direct {v4, v5, v6}, Lo9/f$a;-><init>(ZLl9/e;)V

    iget-object v5, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v5}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5, v1, v2}, Lo9/f$a;->q(Ljava/net/Socket;Ljava/lang/String;Lt9/f;Lt9/e;)Lo9/f$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo9/f$a;->k(Lo9/f$c;)Lo9/f$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo9/f$a;->l(I)Lo9/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lo9/f$a;->a()Lo9/f;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/f;->i:Lo9/f;

    sget-object v0, Lo9/f;->F:Lo9/f$b;

    invoke-virtual {v0}, Lo9/f$b;->a()Lo9/m;

    move-result-object v0

    invoke-virtual {v0}, Lo9/m;->d()I

    move-result v0

    iput v0, p0, Lokhttp3/internal/connection/f;->q:I

    const/4 p0, 0x0

    const/4 v0, 0x3

    invoke-static {p1, v3, p0, v0, p0}, Lo9/f;->g1(Lo9/f;ZLl9/e;ILjava/lang/Object;)V

    return-void
.end method

.method private final F(Lokhttp3/u;)Z
    .locals 4

    sget-boolean v0, Li9/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v0}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/u;->m()I

    move-result v1

    invoke-virtual {v0}, Lokhttp3/u;->m()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p1}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Lokhttp3/internal/connection/f;->m:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lokhttp3/internal/connection/f;->g:Lokhttp3/s;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/connection/f;->e(Lokhttp3/u;Lokhttp3/s;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v3, v1

    :cond_4
    return v3
.end method

.method public static final synthetic c(Lokhttp3/internal/connection/f;)Lokhttp3/s;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/f;->g:Lokhttp3/s;

    return-object p0
.end method

.method private final e(Lokhttp3/u;Lokhttp3/s;)Z
    .locals 2

    invoke-virtual {p2}, Lokhttp3/s;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget-object p2, Ls9/d;->INSTANCE:Ls9/d;

    invoke-virtual {p1}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p2, p1, p0}, Ls9/d;->e(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final h(IILokhttp3/e;Lokhttp3/q;)V
    .locals 4

    iget-object v0, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v0}, Lokhttp3/d0;->b()Ljava/net/Proxy;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v1}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lokhttp3/internal/connection/f$b;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lokhttp3/a;->j()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    :goto_1
    iput-object v1, p0, Lokhttp3/internal/connection/f;->e:Ljava/net/Socket;

    iget-object v2, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v2}, Lokhttp3/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {p4, p3, v2, v0}, Lokhttp3/q;->i(Lokhttp3/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    invoke-virtual {v1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    sget-object p2, Lp9/h;->a:Lp9/h$a;

    invoke-virtual {p2}, Lp9/h$a;->g()Lp9/h;

    move-result-object p2

    iget-object p3, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {p3}, Lokhttp3/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object p3

    invoke-virtual {p2, v1, p3, p1}, Lp9/h;->f(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v1}, Lt9/n;->f(Ljava/net/Socket;)Lt9/a0;

    move-result-object p1

    invoke-static {p1}, Lt9/n;->b(Lt9/a0;)Lt9/f;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/f;->j:Lt9/f;

    invoke-static {v1}, Lt9/n;->d(Ljava/net/Socket;)Lt9/y;

    move-result-object p1

    invoke-static {p1}, Lt9/n;->a(Lt9/y;)Lt9/e;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/f;->k:Lt9/e;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "throw with null exception"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_2
    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to connect to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {p0}, Lokhttp3/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method private final i(Lokhttp3/internal/connection/b;)V
    .locals 10

    iget-object v0, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v0}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lokhttp3/internal/connection/f;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/u;->m()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v1}, Lokhttp3/internal/connection/b;->a(Ljavax/net/ssl/SSLSocket;)Lokhttp3/k;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/k;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lp9/h;->a:Lp9/h$a;

    invoke-virtual {v3}, Lp9/h$a;->g()Lp9/h;

    move-result-object v3

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/a;->f()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lp9/h;->e(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v1

    goto/16 :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    sget-object v4, Lokhttp3/s;->e:Lokhttp3/s$a;

    const-string v5, "sslSocketSession"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lokhttp3/s$a;->a(Ljavax/net/ssl/SSLSession;)Lokhttp3/s;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v4}, Lokhttp3/s;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/security/cert/X509Certificate;

    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n              |Hostname "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n              |    certificate: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lokhttp3/f;->c:Lokhttp3/f$b;

    invoke-virtual {v0, p0}, Lokhttp3/f$b;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    DN: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    subjectAltNames: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ls9/d;->INSTANCE:Ls9/d;

    invoke-virtual {v0, p0}, Ls9/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n              "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2, v6, v2}, Lkotlin/text/r;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hostname "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified (no certificates)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {v0}, Lokhttp3/a;->a()Lokhttp3/f;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    new-instance v5, Lokhttp3/s;

    invoke-virtual {v4}, Lokhttp3/s;->e()Lokhttp3/e0;

    move-result-object v6

    invoke-virtual {v4}, Lokhttp3/s;->a()Lokhttp3/h;

    move-result-object v7

    invoke-virtual {v4}, Lokhttp3/s;->c()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lokhttp3/internal/connection/f$c;

    invoke-direct {v9, v3, v4, v0}, Lokhttp3/internal/connection/f$c;-><init>(Lokhttp3/f;Lokhttp3/s;Lokhttp3/a;)V

    invoke-direct {v5, v6, v7, v8, v9}, Lokhttp3/s;-><init>(Lokhttp3/e0;Lokhttp3/h;Ljava/util/List;Lw8/a;)V

    iput-object v5, p0, Lokhttp3/internal/connection/f;->g:Lokhttp3/s;

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lokhttp3/internal/connection/f$d;

    invoke-direct {v4, p0}, Lokhttp3/internal/connection/f$d;-><init>(Lokhttp3/internal/connection/f;)V

    invoke-virtual {v3, v0, v4}, Lokhttp3/f;->b(Ljava/lang/String;Lw8/a;)V

    invoke-virtual {p1}, Lokhttp3/k;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lp9/h;->a:Lp9/h$a;

    invoke-virtual {p1}, Lp9/h$a;->g()Lp9/h;

    move-result-object p1

    invoke-virtual {p1, v1}, Lp9/h;->g(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    iput-object v1, p0, Lokhttp3/internal/connection/f;->f:Ljava/net/Socket;

    invoke-static {v1}, Lt9/n;->f(Ljava/net/Socket;)Lt9/a0;

    move-result-object p1

    invoke-static {p1}, Lt9/n;->b(Lt9/a0;)Lt9/f;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/f;->j:Lt9/f;

    invoke-static {v1}, Lt9/n;->d(Ljava/net/Socket;)Lt9/y;

    move-result-object p1

    invoke-static {p1}, Lt9/n;->a(Lt9/y;)Lt9/e;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/f;->k:Lt9/e;

    if-eqz v2, :cond_4

    sget-object p1, Lokhttp3/y;->Companion:Lokhttp3/y$a;

    invoke-virtual {p1, v2}, Lokhttp3/y$a;->a(Ljava/lang/String;)Lokhttp3/y;

    move-result-object p1

    goto :goto_1

    :cond_4
    sget-object p1, Lokhttp3/y;->HTTP_1_1:Lokhttp3/y;

    :goto_1
    iput-object p1, p0, Lokhttp3/internal/connection/f;->h:Lokhttp3/y;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p0, Lp9/h;->a:Lp9/h$a;

    invoke-virtual {p0}, Lp9/h$a;->g()Lp9/h;

    move-result-object p0

    invoke-virtual {p0, v1}, Lp9/h;->b(Ljavax/net/ssl/SSLSocket;)V

    return-void

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v2, :cond_5

    sget-object p1, Lp9/h;->a:Lp9/h$a;

    invoke-virtual {p1}, Lp9/h$a;->g()Lp9/h;

    move-result-object p1

    invoke-virtual {p1, v2}, Lp9/h;->b(Ljavax/net/ssl/SSLSocket;)V

    :cond_5
    if-eqz v2, :cond_6

    invoke-static {v2}, Li9/d;->m(Ljava/net/Socket;)V

    :cond_6
    throw p0
.end method

.method private final j(IIILokhttp3/e;Lokhttp3/q;)V
    .locals 6

    invoke-direct {p0}, Lokhttp3/internal/connection/f;->l()Lokhttp3/z;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/z;->i()Lokhttp3/u;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_2

    invoke-direct {p0, p1, p2, p4, p5}, Lokhttp3/internal/connection/f;->h(IILokhttp3/e;Lokhttp3/q;)V

    invoke-direct {p0, p2, p3, v0, v1}, Lokhttp3/internal/connection/f;->k(IILokhttp3/z;Lokhttp3/u;)Lokhttp3/z;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lokhttp3/internal/connection/f;->e:Ljava/net/Socket;

    if-eqz v3, :cond_1

    invoke-static {v3}, Li9/d;->m(Ljava/net/Socket;)V

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lokhttp3/internal/connection/f;->e:Ljava/net/Socket;

    iput-object v3, p0, Lokhttp3/internal/connection/f;->k:Lt9/e;

    iput-object v3, p0, Lokhttp3/internal/connection/f;->j:Lt9/f;

    iget-object v4, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v4}, Lokhttp3/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v5}, Lokhttp3/d0;->b()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {p5, p4, v4, v5, v3}, Lokhttp3/q;->g(Lokhttp3/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/y;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private final k(IILokhttp3/z;Lokhttp3/u;)Lokhttp3/z;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Li9/d;->O(Lokhttp3/u;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/f;->j:Lt9/f;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lokhttp3/internal/connection/f;->k:Lt9/e;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    new-instance v3, Ln9/b;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0, v0, v2}, Ln9/b;-><init>(Lokhttp3/x;Lokhttp3/internal/connection/f;Lt9/f;Lt9/e;)V

    invoke-interface {v0}, Lt9/a0;->f()Lt9/b0;

    move-result-object v5

    int-to-long v6, p1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Lt9/b0;->g(JLjava/util/concurrent/TimeUnit;)Lt9/b0;

    invoke-interface {v2}, Lt9/y;->f()Lt9/b0;

    move-result-object v5

    int-to-long v6, p2

    invoke-virtual {v5, v6, v7, v8}, Lt9/b0;->g(JLjava/util/concurrent/TimeUnit;)Lt9/b0;

    invoke-virtual {p3}, Lokhttp3/z;->e()Lokhttp3/t;

    move-result-object v5

    invoke-virtual {v3, v5, p4}, Ln9/b;->A(Lokhttp3/t;Ljava/lang/String;)V

    invoke-virtual {v3}, Ln9/b;->a()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ln9/b;->g(Z)Lokhttp3/b0$a;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v5, p3}, Lokhttp3/b0$a;->r(Lokhttp3/z;)Lokhttp3/b0$a;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp3/b0$a;->c()Lokhttp3/b0;

    move-result-object p3

    invoke-virtual {v3, p3}, Ln9/b;->z(Lokhttp3/b0;)V

    invoke-virtual {p3}, Lokhttp3/b0;->x()I

    move-result v3

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_3

    const/16 v0, 0x197

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v0}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->h()Lokhttp3/b;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-interface {v0, v2, p3}, Lokhttp3/b;->a(Lokhttp3/d0;Lokhttp3/b0;)Lokhttp3/z;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "Connection"

    const/4 v3, 0x2

    invoke-static {p3, v2, v4, v3, v4}, Lokhttp3/b0;->I(Lokhttp3/b0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "close"

    invoke-static {v2, p3, v1}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object v0

    :cond_0
    move-object p3, v0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to authenticate with proxy"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected response code for CONNECT: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lokhttp3/b0;->x()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-interface {v0}, Lt9/f;->d()Lt9/d;

    move-result-object p0

    invoke-virtual {p0}, Lt9/d;->S()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {v2}, Lt9/e;->d()Lt9/d;

    move-result-object p0

    invoke-virtual {p0}, Lt9/d;->S()Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v4

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TLS tunnel buffered too many bytes!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final l()Lokhttp3/z;
    .locals 4

    new-instance v0, Lokhttp3/z$a;

    invoke-direct {v0}, Lokhttp3/z$a;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v1}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/z$a;->h(Lokhttp3/u;)Lokhttp3/z$a;

    move-result-object v0

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lokhttp3/z$a;->e(Ljava/lang/String;Lokhttp3/a0;)Lokhttp3/z$a;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v1}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Li9/d;->O(Lokhttp3/u;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lokhttp3/z$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/z$a;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lokhttp3/z$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/z$a;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "okhttp/4.12.0"

    invoke-virtual {v0, v1, v2}, Lokhttp3/z$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/z$a;->b()Lokhttp3/z;

    move-result-object v0

    new-instance v1, Lokhttp3/b0$a;

    invoke-direct {v1}, Lokhttp3/b0$a;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp3/b0$a;->r(Lokhttp3/z;)Lokhttp3/b0$a;

    move-result-object v1

    sget-object v2, Lokhttp3/y;->HTTP_1_1:Lokhttp3/y;

    invoke-virtual {v1, v2}, Lokhttp3/b0$a;->p(Lokhttp3/y;)Lokhttp3/b0$a;

    move-result-object v1

    const/16 v2, 0x197

    invoke-virtual {v1, v2}, Lokhttp3/b0$a;->g(I)Lokhttp3/b0$a;

    move-result-object v1

    const-string v2, "Preemptive Authenticate"

    invoke-virtual {v1, v2}, Lokhttp3/b0$a;->m(Ljava/lang/String;)Lokhttp3/b0$a;

    move-result-object v1

    sget-object v2, Li9/d;->c:Lokhttp3/c0;

    invoke-virtual {v1, v2}, Lokhttp3/b0$a;->b(Lokhttp3/c0;)Lokhttp3/b0$a;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lokhttp3/b0$a;->s(J)Lokhttp3/b0$a;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lokhttp3/b0$a;->q(J)Lokhttp3/b0$a;

    move-result-object v1

    const-string v2, "Proxy-Authenticate"

    const-string v3, "OkHttp-Preemptive"

    invoke-virtual {v1, v2, v3}, Lokhttp3/b0$a;->j(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/b0$a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/b0$a;->c()Lokhttp3/b0;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v2}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/a;->h()Lokhttp3/b;

    move-result-object v2

    iget-object p0, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-interface {v2, p0, v1}, Lokhttp3/b;->a(Lokhttp3/d0;Lokhttp3/b0;)Lokhttp3/z;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private final m(Lokhttp3/internal/connection/b;ILokhttp3/e;Lokhttp3/q;)V
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v0}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {p1}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/a;->f()Ljava/util/List;

    move-result-object p1

    sget-object p3, Lokhttp3/y;->H2_PRIOR_KNOWLEDGE:Lokhttp3/y;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lokhttp3/internal/connection/f;->e:Ljava/net/Socket;

    iput-object p1, p0, Lokhttp3/internal/connection/f;->f:Ljava/net/Socket;

    iput-object p3, p0, Lokhttp3/internal/connection/f;->h:Lokhttp3/y;

    invoke-direct {p0, p2}, Lokhttp3/internal/connection/f;->E(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lokhttp3/internal/connection/f;->e:Ljava/net/Socket;

    iput-object p1, p0, Lokhttp3/internal/connection/f;->f:Ljava/net/Socket;

    sget-object p1, Lokhttp3/y;->HTTP_1_1:Lokhttp3/y;

    iput-object p1, p0, Lokhttp3/internal/connection/f;->h:Lokhttp3/y;

    return-void

    :cond_1
    invoke-virtual {p4, p3}, Lokhttp3/q;->B(Lokhttp3/e;)V

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/f;->i(Lokhttp3/internal/connection/b;)V

    iget-object p1, p0, Lokhttp3/internal/connection/f;->g:Lokhttp3/s;

    invoke-virtual {p4, p3, p1}, Lokhttp3/q;->A(Lokhttp3/e;Lokhttp3/s;)V

    iget-object p1, p0, Lokhttp3/internal/connection/f;->h:Lokhttp3/y;

    sget-object p3, Lokhttp3/y;->HTTP_2:Lokhttp3/y;

    if-ne p1, p3, :cond_2

    invoke-direct {p0, p2}, Lokhttp3/internal/connection/f;->E(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final B(J)V
    .locals 0

    iput-wide p1, p0, Lokhttp3/internal/connection/f;->s:J

    return-void
.end method

.method public final C(Z)V
    .locals 0

    iput-boolean p1, p0, Lokhttp3/internal/connection/f;->l:Z

    return-void
.end method

.method public D()Ljava/net/Socket;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/f;->f:Ljava/net/Socket;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final declared-synchronized G(Lokhttp3/internal/connection/e;Ljava/io/IOException;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lo9/n;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lo9/n;

    iget-object v0, v0, Lo9/n;->errorCode:Lo9/b;

    sget-object v2, Lo9/b;->REFUSED_STREAM:Lo9/b;

    if-ne v0, v2, :cond_0

    iget p1, p0, Lokhttp3/internal/connection/f;->p:I

    add-int/2addr p1, v1

    iput p1, p0, Lokhttp3/internal/connection/f;->p:I

    if-le p1, v1, :cond_5

    iput-boolean v1, p0, Lokhttp3/internal/connection/f;->l:Z

    iget p1, p0, Lokhttp3/internal/connection/f;->n:I

    add-int/2addr p1, v1

    iput p1, p0, Lokhttp3/internal/connection/f;->n:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    check-cast p2, Lo9/n;

    iget-object p2, p2, Lo9/n;->errorCode:Lo9/b;

    sget-object v0, Lo9/b;->CANCEL:Lo9/b;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lokhttp3/internal/connection/e;->p()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_1
    iput-boolean v1, p0, Lokhttp3/internal/connection/f;->l:Z

    iget p1, p0, Lokhttp3/internal/connection/f;->n:I

    add-int/2addr p1, v1

    iput p1, p0, Lokhttp3/internal/connection/f;->n:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lokhttp3/internal/connection/f;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Lo9/a;

    if-eqz v0, :cond_5

    :cond_3
    iput-boolean v1, p0, Lokhttp3/internal/connection/f;->l:Z

    iget v0, p0, Lokhttp3/internal/connection/f;->o:I

    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lokhttp3/internal/connection/e;->j()Lokhttp3/x;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {p0, p1, v0, p2}, Lokhttp3/internal/connection/f;->g(Lokhttp3/x;Lokhttp3/d0;Ljava/io/IOException;)V

    :cond_4
    iget p1, p0, Lokhttp3/internal/connection/f;->n:I

    add-int/2addr p1, v1

    iput p1, p0, Lokhttp3/internal/connection/f;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lo9/f;Lo9/m;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settings"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lo9/m;->d()I

    move-result p1

    iput p1, p0, Lokhttp3/internal/connection/f;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Lo9/i;)V
    .locals 1

    const-string p0, "stream"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lo9/b;->REFUSED_STREAM:Lo9/b;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lo9/i;->d(Lo9/b;Ljava/io/IOException;)V

    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/f;->e:Ljava/net/Socket;

    if-eqz p0, :cond_0

    invoke-static {p0}, Li9/d;->m(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public final f(IIIIZLokhttp3/e;Lokhttp3/q;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    const-string v0, "call"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v7, Lokhttp3/internal/connection/f;->h:Lokhttp3/y;

    if-nez v0, :cond_c

    iget-object v0, v7, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v0}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->b()Ljava/util/List;

    move-result-object v0

    new-instance v10, Lokhttp3/internal/connection/b;

    invoke-direct {v10, v0}, Lokhttp3/internal/connection/b;-><init>(Ljava/util/List;)V

    iget-object v1, v7, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v1}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lokhttp3/k;->k:Lokhttp3/k;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v0}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lp9/h;->a:Lp9/h$a;

    invoke-virtual {v1}, Lp9/h$a;->g()Lp9/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lp9/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lokhttp3/internal/connection/i;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEARTEXT communication to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not permitted by network security policy"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokhttp3/internal/connection/i;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_1
    new-instance v0, Lokhttp3/internal/connection/i;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/i;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_2
    iget-object v0, v7, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v0}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->f()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lokhttp3/y;->H2_PRIOR_KNOWLEDGE:Lokhttp3/y;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_0
    const/4 v11, 0x0

    move-object v12, v11

    :goto_1
    :try_start_0
    iget-object v0, v7, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v0}, Lokhttp3/d0;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/connection/f;->j(IIILokhttp3/e;Lokhttp3/q;)V

    iget-object v0, v7, Lokhttp3/internal/connection/f;->e:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    goto :goto_5

    :cond_3
    move/from16 v13, p1

    move/from16 v14, p2

    :goto_2
    move/from16 v15, p4

    goto :goto_4

    :catch_0
    move-exception v0

    move/from16 v13, p1

    move/from16 v14, p2

    :goto_3
    move/from16 v15, p4

    goto :goto_7

    :cond_4
    move/from16 v13, p1

    move/from16 v14, p2

    :try_start_1
    invoke-direct {v7, v13, v14, v8, v9}, Lokhttp3/internal/connection/f;->h(IILokhttp3/e;Lokhttp3/q;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :goto_4
    :try_start_2
    invoke-direct {v7, v10, v15, v8, v9}, Lokhttp3/internal/connection/f;->m(Lokhttp3/internal/connection/b;ILokhttp3/e;Lokhttp3/q;)V

    iget-object v0, v7, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v0}, Lokhttp3/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v1, v7, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v1}, Lokhttp3/d0;->b()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, v7, Lokhttp3/internal/connection/f;->h:Lokhttp3/y;

    invoke-virtual {v9, v8, v0, v1, v2}, Lokhttp3/q;->g(Lokhttp3/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/y;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    iget-object v0, v7, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v0}, Lokhttp3/d0;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lokhttp3/internal/connection/f;->e:Ljava/net/Socket;

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    new-instance v0, Lokhttp3/internal/connection/i;

    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Too many tunnel connections attempted: 21"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/i;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_6
    :goto_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, v7, Lokhttp3/internal/connection/f;->s:J

    return-void

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_3

    :goto_7
    iget-object v1, v7, Lokhttp3/internal/connection/f;->f:Ljava/net/Socket;

    if-eqz v1, :cond_7

    invoke-static {v1}, Li9/d;->m(Ljava/net/Socket;)V

    :cond_7
    iget-object v1, v7, Lokhttp3/internal/connection/f;->e:Ljava/net/Socket;

    if-eqz v1, :cond_8

    invoke-static {v1}, Li9/d;->m(Ljava/net/Socket;)V

    :cond_8
    iput-object v11, v7, Lokhttp3/internal/connection/f;->f:Ljava/net/Socket;

    iput-object v11, v7, Lokhttp3/internal/connection/f;->e:Ljava/net/Socket;

    iput-object v11, v7, Lokhttp3/internal/connection/f;->j:Lt9/f;

    iput-object v11, v7, Lokhttp3/internal/connection/f;->k:Lt9/e;

    iput-object v11, v7, Lokhttp3/internal/connection/f;->g:Lokhttp3/s;

    iput-object v11, v7, Lokhttp3/internal/connection/f;->h:Lokhttp3/y;

    iput-object v11, v7, Lokhttp3/internal/connection/f;->i:Lo9/f;

    const/4 v1, 0x1

    iput v1, v7, Lokhttp3/internal/connection/f;->q:I

    iget-object v1, v7, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v1}, Lokhttp3/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v1, v7, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v1}, Lokhttp3/d0;->b()Ljava/net/Proxy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lokhttp3/q;->h(Lokhttp3/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/y;Ljava/io/IOException;)V

    if-nez v12, :cond_9

    new-instance v12, Lokhttp3/internal/connection/i;

    invoke-direct {v12, v0}, Lokhttp3/internal/connection/i;-><init>(Ljava/io/IOException;)V

    goto :goto_8

    :cond_9
    invoke-virtual {v12, v0}, Lokhttp3/internal/connection/i;->addConnectException(Ljava/io/IOException;)V

    :goto_8
    if-eqz p5, :cond_a

    invoke-virtual {v10, v0}, Lokhttp3/internal/connection/b;->b(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_1

    :cond_a
    throw v12

    :cond_b
    new-instance v0, Lokhttp3/internal/connection/i;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/i;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(Lokhttp3/x;Lokhttp3/d0;Ljava/io/IOException;)V
    .locals 2

    const-string p0, "client"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "failedRoute"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "failure"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/d0;->b()Ljava/net/Proxy;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p0

    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq p0, v0, :cond_0

    invoke-virtual {p2}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/a;->i()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/u;->r()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p2}, Lokhttp3/d0;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    invoke-virtual {p1}, Lokhttp3/x;->q()Lokhttp3/internal/connection/h;

    move-result-object p0

    invoke-virtual {p0, p2}, Lokhttp3/internal/connection/h;->b(Lokhttp3/d0;)V

    return-void
.end method

.method public final n()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/f;->r:Ljava/util/List;

    return-object p0
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/internal/connection/f;->s:J

    return-wide v0
.end method

.method public final p()Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/internal/connection/f;->l:Z

    return p0
.end method

.method public final q()I
    .locals 0

    iget p0, p0, Lokhttp3/internal/connection/f;->n:I

    return p0
.end method

.method public r()Lokhttp3/s;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/f;->g:Lokhttp3/s;

    return-object p0
.end method

.method public final declared-synchronized s()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/internal/connection/f;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/connection/f;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final t(Lokhttp3/a;Ljava/util/List;)Z
    .locals 3

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Li9/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Thread "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MUST hold lock on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/f;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lokhttp3/internal/connection/f;->q:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_9

    iget-boolean v0, p0, Lokhttp3/internal/connection/f;->l:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v0}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/a;->d(Lokhttp3/a;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/internal/connection/f;->z()Lokhttp3/d0;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lokhttp3/internal/connection/f;->i:Lo9/f;

    if-nez v0, :cond_5

    return v2

    :cond_5
    if-eqz p2, :cond_9

    invoke-direct {p0, p2}, Lokhttp3/internal/connection/f;->A(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lokhttp3/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Ls9/d;->INSTANCE:Ls9/d;

    if-eq p2, v0, :cond_7

    return v2

    :cond_7
    invoke-virtual {p1}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object p2

    invoke-direct {p0, p2}, Lokhttp3/internal/connection/f;->F(Lokhttp3/u;)Z

    move-result p2

    if-nez p2, :cond_8

    return v2

    :cond_8
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/a;->a()Lokhttp3/f;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lokhttp3/internal/connection/f;->r()Lokhttp3/s;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lokhttp3/s;->d()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lokhttp3/f;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_9
    :goto_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v1}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v1}, Lokhttp3/d0;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/u;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v1}, Lokhttp3/d0;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    invoke-virtual {v1}, Lokhttp3/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/connection/f;->g:Lokhttp3/s;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lokhttp3/s;->a()Lokhttp3/h;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "none"

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/internal/connection/f;->h:Lokhttp3/y;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Z)Z
    .locals 7

    sget-boolean v0, Li9/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST NOT hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lokhttp3/internal/connection/f;->e:Ljava/net/Socket;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lokhttp3/internal/connection/f;->f:Ljava/net/Socket;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v4, p0, Lokhttp3/internal/connection/f;->j:Lt9/f;

    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lokhttp3/internal/connection/f;->i:Lo9/f;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0, v1}, Lo9/f;->S0(J)Z

    move-result p0

    return p0

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-wide v5, p0, Lokhttp3/internal/connection/f;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v5

    monitor-exit p0

    const-wide v5, 0x2540be400L

    cmp-long p0, v0, v5

    if-ltz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-static {v3, v4}, Li9/d;->E(Ljava/net/Socket;Lt9/f;)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final v()Z
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/f;->i:Lo9/f;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final w(Lokhttp3/x;Lm9/g;)Lm9/d;
    .locals 6

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/connection/f;->f:Ljava/net/Socket;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lokhttp3/internal/connection/f;->j:Lt9/f;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lokhttp3/internal/connection/f;->k:Lt9/e;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lokhttp3/internal/connection/f;->i:Lo9/f;

    if-eqz v3, :cond_0

    new-instance v0, Lo9/g;

    invoke-direct {v0, p1, p0, p2, v3}, Lo9/g;-><init>(Lokhttp3/x;Lokhttp3/internal/connection/f;Lm9/g;Lo9/f;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lm9/g;->k()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-interface {v1}, Lt9/a0;->f()Lt9/b0;

    move-result-object v0

    invoke-virtual {p2}, Lm9/g;->h()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Lt9/b0;->g(JLjava/util/concurrent/TimeUnit;)Lt9/b0;

    invoke-interface {v2}, Lt9/y;->f()Lt9/b0;

    move-result-object v0

    invoke-virtual {p2}, Lm9/g;->j()I

    move-result p2

    int-to-long v3, p2

    invoke-virtual {v0, v3, v4, v5}, Lt9/b0;->g(JLjava/util/concurrent/TimeUnit;)Lt9/b0;

    new-instance v0, Ln9/b;

    invoke-direct {v0, p1, p0, v1, v2}, Ln9/b;-><init>(Lokhttp3/x;Lokhttp3/internal/connection/f;Lt9/f;Lt9/e;)V

    :goto_0
    return-object v0
.end method

.method public final declared-synchronized x()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/connection/f;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized y()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/connection/f;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public z()Lokhttp3/d0;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/d0;

    return-object p0
.end method
