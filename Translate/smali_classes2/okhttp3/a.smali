.class public final Lokhttp3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lokhttp3/p;

.field private final b:Ljavax/net/SocketFactory;

.field private final c:Ljavax/net/ssl/SSLSocketFactory;

.field private final d:Ljavax/net/ssl/HostnameVerifier;

.field private final e:Lokhttp3/f;

.field private final f:Lokhttp3/b;

.field private final g:Ljava/net/Proxy;

.field private final h:Ljava/net/ProxySelector;

.field private final i:Lokhttp3/u;

.field private final j:Ljava/util/List;

.field private final k:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILokhttp3/p;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/f;Lokhttp3/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 1

    const-string v0, "uriHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dns"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socketFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyAuthenticator"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocols"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionSpecs"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxySelector"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lokhttp3/a;->a:Lokhttp3/p;

    iput-object p4, p0, Lokhttp3/a;->b:Ljavax/net/SocketFactory;

    iput-object p5, p0, Lokhttp3/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p6, p0, Lokhttp3/a;->d:Ljavax/net/ssl/HostnameVerifier;

    iput-object p7, p0, Lokhttp3/a;->e:Lokhttp3/f;

    iput-object p8, p0, Lokhttp3/a;->f:Lokhttp3/b;

    iput-object p9, p0, Lokhttp3/a;->g:Ljava/net/Proxy;

    iput-object p12, p0, Lokhttp3/a;->h:Ljava/net/ProxySelector;

    new-instance p3, Lokhttp3/u$a;

    invoke-direct {p3}, Lokhttp3/u$a;-><init>()V

    if-eqz p5, :cond_0

    const-string p4, "https"

    goto :goto_0

    :cond_0
    const-string p4, "http"

    :goto_0
    invoke-virtual {p3, p4}, Lokhttp3/u$a;->p(Ljava/lang/String;)Lokhttp3/u$a;

    move-result-object p3

    invoke-virtual {p3, p1}, Lokhttp3/u$a;->f(Ljava/lang/String;)Lokhttp3/u$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/u$a;->l(I)Lokhttp3/u$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/u$a;->b()Lokhttp3/u;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/a;->i:Lokhttp3/u;

    invoke-static {p10}, Li9/d;->Q(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/a;->j:Ljava/util/List;

    invoke-static {p11}, Li9/d;->Q(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/a;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/f;
    .locals 0

    iget-object p0, p0, Lokhttp3/a;->e:Lokhttp3/f;

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lokhttp3/a;->k:Ljava/util/List;

    return-object p0
.end method

.method public final c()Lokhttp3/p;
    .locals 0

    iget-object p0, p0, Lokhttp3/a;->a:Lokhttp3/p;

    return-object p0
.end method

.method public final d(Lokhttp3/a;)Z
    .locals 2

    const-string v0, "that"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/a;->a:Lokhttp3/p;

    iget-object v1, p1, Lokhttp3/a;->a:Lokhttp3/p;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/a;->f:Lokhttp3/b;

    iget-object v1, p1, Lokhttp3/a;->f:Lokhttp3/b;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/a;->j:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/a;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/a;->k:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/a;->k:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/a;->h:Ljava/net/ProxySelector;

    iget-object v1, p1, Lokhttp3/a;->h:Ljava/net/ProxySelector;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/a;->g:Ljava/net/Proxy;

    iget-object v1, p1, Lokhttp3/a;->g:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lokhttp3/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/a;->d:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lokhttp3/a;->d:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/a;->e:Lokhttp3/f;

    iget-object v1, p1, Lokhttp3/a;->e:Lokhttp3/f;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/a;->i:Lokhttp3/u;

    invoke-virtual {p0}, Lokhttp3/u;->m()I

    move-result p0

    iget-object p1, p1, Lokhttp3/a;->i:Lokhttp3/u;

    invoke-virtual {p1}, Lokhttp3/u;->m()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e()Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    iget-object p0, p0, Lokhttp3/a;->d:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lokhttp3/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/a;->i:Lokhttp3/u;

    check-cast p1, Lokhttp3/a;

    iget-object v1, p1, Lokhttp3/a;->i:Lokhttp3/u;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lokhttp3/a;->d(Lokhttp3/a;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lokhttp3/a;->j:Ljava/util/List;

    return-object p0
.end method

.method public final g()Ljava/net/Proxy;
    .locals 0

    iget-object p0, p0, Lokhttp3/a;->g:Ljava/net/Proxy;

    return-object p0
.end method

.method public final h()Lokhttp3/b;
    .locals 0

    iget-object p0, p0, Lokhttp3/a;->f:Lokhttp3/b;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lokhttp3/a;->i:Lokhttp3/u;

    invoke-virtual {v0}, Lokhttp3/u;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp3/a;->a:Lokhttp3/p;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp3/a;->f:Lokhttp3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp3/a;->j:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp3/a;->k:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp3/a;->h:Ljava/net/ProxySelector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp3/a;->g:Ljava/net/Proxy;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp3/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp3/a;->d:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lokhttp3/a;->e:Lokhttp3/f;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public final i()Ljava/net/ProxySelector;
    .locals 0

    iget-object p0, p0, Lokhttp3/a;->h:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public final j()Ljavax/net/SocketFactory;
    .locals 0

    iget-object p0, p0, Lokhttp3/a;->b:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public final k()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    iget-object p0, p0, Lokhttp3/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public final l()Lokhttp3/u;
    .locals 0

    iget-object p0, p0, Lokhttp3/a;->i:Lokhttp3/u;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/a;->i:Lokhttp3/u;

    invoke-virtual {v1}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/a;->i:Lokhttp3/u;

    invoke-virtual {v1}, Lokhttp3/u;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/a;->g:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proxy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/a;->g:Ljava/net/Proxy;

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proxySelector="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/a;->h:Ljava/net/ProxySelector;

    goto :goto_0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
