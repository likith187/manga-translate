.class public final Lokhttp3/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/s$a;-><init>()V

    return-void
.end method

.method private final b([Ljava/security/cert/Certificate;)Ljava/util/List;
    .locals 0

    if-eqz p1, :cond_0

    array-length p0, p1

    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Li9/d;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSession;)Lokhttp3/s;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "TLS_NULL_WITH_NULL_NULL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "SSL_NULL_WITH_NULL_NULL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_3

    sget-object v1, Lokhttp3/h;->b:Lokhttp3/h$b;

    invoke-virtual {v1, v0}, Lokhttp3/h$b;->b(Ljava/lang/String;)Lokhttp3/h;

    move-result-object v0

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "NONE"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lokhttp3/e0;->Companion:Lokhttp3/e0$a;

    invoke-virtual {v2, v1}, Lokhttp3/e0$a;->a(Ljava/lang/String;)Lokhttp3/e0;

    move-result-object v1

    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-direct {p0, v2}, Lokhttp3/s$a;->b([Ljava/security/cert/Certificate;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object v2

    :goto_1
    new-instance v3, Lokhttp3/s;

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-direct {p0, p1}, Lokhttp3/s$a;->b([Ljava/security/cert/Certificate;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lokhttp3/s$a$a;

    invoke-direct {p1, v2}, Lokhttp3/s$a$a;-><init>(Ljava/util/List;)V

    invoke-direct {v3, v1, v0, p0, p1}, Lokhttp3/s;-><init>(Lokhttp3/e0;Lokhttp3/h;Ljava/util/List;Lw8/a;)V

    return-object v3

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "tlsVersion == NONE"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "tlsVersion == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cipherSuite == "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cipherSuite == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
