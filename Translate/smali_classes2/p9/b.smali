.class public final Lp9/b;
.super Lp9/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp9/b$a;,
        Lp9/b$b;
    }
.end annotation


# static fields
.field public static final f:Lp9/b$a;

.field private static final g:Z


# instance fields
.field private final d:Ljava/util/List;

.field private final e:Lq9/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp9/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp9/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lp9/b;->f:Lp9/b$a;

    sget-object v0, Lp9/h;->a:Lp9/h$a;

    invoke-virtual {v0}, Lp9/h$a;->h()Z

    const/4 v0, 0x0

    sput-boolean v0, Lp9/b;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lp9/h;-><init>()V

    sget-object v0, Lq9/l;->j:Lq9/l$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lq9/l$a;->b(Lq9/l$a;Ljava/lang/String;ILjava/lang/Object;)Lq9/k;

    move-result-object v0

    new-instance v1, Lq9/j;

    sget-object v3, Lq9/f;->f:Lq9/f$a;

    invoke-virtual {v3}, Lq9/f$a;->d()Lq9/j$a;

    move-result-object v3

    invoke-direct {v1, v3}, Lq9/j;-><init>(Lq9/j$a;)V

    new-instance v3, Lq9/j;

    sget-object v4, Lq9/i;->a:Lq9/i$b;

    invoke-virtual {v4}, Lq9/i$b;->a()Lq9/j$a;

    move-result-object v4

    invoke-direct {v3, v4}, Lq9/j;-><init>(Lq9/j$a;)V

    new-instance v4, Lq9/j;

    sget-object v5, Lq9/g;->a:Lq9/g$b;

    invoke-virtual {v5}, Lq9/g$b;->a()Lq9/j$a;

    move-result-object v5

    invoke-direct {v4, v5}, Lq9/j;-><init>(Lq9/j$a;)V

    const/4 v5, 0x4

    new-array v5, v5, [Lq9/k;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v1, v5, v2

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    invoke-static {v5}, Lkotlin/collections/o;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lq9/k;

    invoke-interface {v3}, Lq9/k;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lp9/b;->d:Ljava/util/List;

    sget-object v0, Lq9/h;->d:Lq9/h$a;

    invoke-virtual {v0}, Lq9/h$a;->a()Lq9/h;

    move-result-object v0

    iput-object v0, p0, Lp9/b;->e:Lq9/h;

    return-void
.end method

.method public static final synthetic p()Z
    .locals 1

    sget-boolean v0, Lp9/b;->g:Z

    return v0
.end method


# virtual methods
.method public c(Ljavax/net/ssl/X509TrustManager;)Ls9/c;
    .locals 1

    const-string v0, "trustManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lq9/b;->d:Lq9/b$a;

    invoke-virtual {v0, p1}, Lq9/b$a;->a(Ljavax/net/ssl/X509TrustManager;)Lq9/b;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lp9/h;->c(Ljavax/net/ssl/X509TrustManager;)Ls9/c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public d(Ljavax/net/ssl/X509TrustManager;)Ls9/e;
    .locals 3

    const-string v0, "trustManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findTrustAnchorByIssuerAndSignature"

    const-class v2, Ljava/security/cert/X509Certificate;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v1, Lp9/b$b;

    const-string v2, "method"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Lp9/b$b;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-super {p0, p1}, Lp9/h;->d(Ljavax/net/ssl/X509TrustManager;)Ls9/e;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public e(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocols"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lp9/b;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lq9/k;

    invoke-interface {v1, p1}, Lq9/k;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lq9/k;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3}, Lq9/k;->c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public f(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0

    const-string p0, "socket"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "address"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public g(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lp9/b;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lq9/k;

    invoke-interface {v2, p1}, Lq9/k;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lq9/k;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lq9/k;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public h(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "closer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lp9/b;->e:Lq9/h;

    invoke-virtual {p0, p1}, Lq9/h;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "hostname"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public l(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lp9/b;->e:Lq9/h;

    invoke-virtual {v0, p2}, Lq9/h;->b(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lp9/h;->k(Lp9/h;Ljava/lang/String;ILjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
