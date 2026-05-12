.class public final Ls9/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field public static final INSTANCE:Ls9/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls9/d;

    invoke-direct {v0}, Ls9/d;-><init>()V

    sput-object v0, Ls9/d;->INSTANCE:Ls9/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Ls9/d;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "US"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p0, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private final c(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return-object p1

    :catch_0
    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final d(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lt9/c0;->b(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide v0

    long-to-int p1, v0

    if-ne p0, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "."

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lkotlin/text/r;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, ".."

    invoke-static {p1, v4, v0, v2, v3}, Lkotlin/text/r;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-static {p2, v1, v0, v2, v3}, Lkotlin/text/r;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {p2, v4, v0, v2, v3}, Lkotlin/text/r;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-static {p1, v1, v0, v2, v3}, Lkotlin/text/r;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x2e

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    move-object v6, p1

    invoke-static {p2, v1, v0, v2, v3}, Lkotlin/text/r;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_5
    invoke-direct {p0, p2}, Ls9/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "*"

    invoke-static {p0, p1, v0, v2, v3}, Lkotlin/text/r;->K(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {v6, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    const-string p1, "*."

    invoke-static {p0, p1, v0, v2, v3}, Lkotlin/text/r;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/16 v8, 0x2a

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Lkotlin/text/r;->V(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_8

    return v0

    :cond_8
    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return v0

    :cond_9
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, p0, v0, v2, v3}, Lkotlin/text/r;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    return v0

    :cond_a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p2, p0

    if-lez p2, :cond_b

    add-int/lit8 v8, p2, -0x1

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/16 v7, 0x2e

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/r;->b0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p0

    if-eq p0, v1, :cond_b

    return v0

    :cond_b
    return p1

    :cond_c
    :goto_0
    return v0
.end method

.method private final g(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 2

    invoke-direct {p0, p1}, Ls9/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Ls9/d;->c(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ls9/d;->INSTANCE:Ls9/d;

    invoke-direct {v1, p1, v0}, Ls9/d;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    :cond_2
    :goto_0
    return p2
.end method

.method private final h(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 1

    invoke-static {p1}, Li9/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x7

    invoke-direct {p0, p2, v0}, Ls9/d;->c(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Li9/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    :cond_2
    :goto_0
    return p2
.end method


# virtual methods
.method public final a(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 2

    const-string v0, "certificate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Ls9/d;->c(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Ls9/d;->c(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/collections/o;->g0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "certificate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Li9/d;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Ls9/d;->h(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Ls9/d;->g(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ls9/d;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    aget-object p2, p2, v1

    const-string v0, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, p2}, Ls9/d;->e(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v1
.end method
