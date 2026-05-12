.class public final Lokhttp3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/k$a;,
        Lokhttp3/k$b;
    }
.end annotation


# static fields
.field public static final e:Lokhttp3/k$b;

.field private static final f:[Lokhttp3/h;

.field private static final g:[Lokhttp3/h;

.field public static final h:Lokhttp3/k;

.field public static final i:Lokhttp3/k;

.field public static final j:Lokhttp3/k;

.field public static final k:Lokhttp3/k;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v0, Lokhttp3/k$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/k$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/k;->e:Lokhttp3/k$b;

    sget-object v0, Lokhttp3/h;->o1:Lokhttp3/h;

    sget-object v1, Lokhttp3/h;->p1:Lokhttp3/h;

    sget-object v11, Lokhttp3/h;->q1:Lokhttp3/h;

    sget-object v12, Lokhttp3/h;->a1:Lokhttp3/h;

    sget-object v13, Lokhttp3/h;->e1:Lokhttp3/h;

    sget-object v14, Lokhttp3/h;->b1:Lokhttp3/h;

    sget-object v15, Lokhttp3/h;->f1:Lokhttp3/h;

    sget-object v16, Lokhttp3/h;->l1:Lokhttp3/h;

    sget-object v17, Lokhttp3/h;->k1:Lokhttp3/h;

    move-object v2, v0

    move-object v3, v1

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    filled-new-array/range {v2 .. v10}, [Lokhttp3/h;

    move-result-object v10

    sput-object v10, Lokhttp3/k;->f:[Lokhttp3/h;

    sget-object v18, Lokhttp3/h;->L0:Lokhttp3/h;

    sget-object v19, Lokhttp3/h;->M0:Lokhttp3/h;

    sget-object v20, Lokhttp3/h;->j0:Lokhttp3/h;

    sget-object v21, Lokhttp3/h;->k0:Lokhttp3/h;

    sget-object v22, Lokhttp3/h;->H:Lokhttp3/h;

    sget-object v23, Lokhttp3/h;->L:Lokhttp3/h;

    sget-object v24, Lokhttp3/h;->l:Lokhttp3/h;

    move-object v0, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v15, v22

    move-object/from16 v16, v23

    move-object/from16 v17, v24

    filled-new-array/range {v2 .. v17}, [Lokhttp3/h;

    move-result-object v1

    sput-object v1, Lokhttp3/k;->g:[Lokhttp3/h;

    new-instance v2, Lokhttp3/k$a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lokhttp3/k$a;-><init>(Z)V

    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/h;

    invoke-virtual {v2, v0}, Lokhttp3/k$a;->c([Lokhttp3/h;)Lokhttp3/k$a;

    move-result-object v0

    sget-object v2, Lokhttp3/e0;->TLS_1_3:Lokhttp3/e0;

    sget-object v4, Lokhttp3/e0;->TLS_1_2:Lokhttp3/e0;

    filled-new-array {v2, v4}, [Lokhttp3/e0;

    move-result-object v5

    invoke-virtual {v0, v5}, Lokhttp3/k$a;->f([Lokhttp3/e0;)Lokhttp3/k$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lokhttp3/k$a;->d(Z)Lokhttp3/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/k$a;->a()Lokhttp3/k;

    move-result-object v0

    sput-object v0, Lokhttp3/k;->h:Lokhttp3/k;

    new-instance v0, Lokhttp3/k$a;

    invoke-direct {v0, v3}, Lokhttp3/k$a;-><init>(Z)V

    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lokhttp3/h;

    invoke-virtual {v0, v5}, Lokhttp3/k$a;->c([Lokhttp3/h;)Lokhttp3/k$a;

    move-result-object v0

    filled-new-array {v2, v4}, [Lokhttp3/e0;

    move-result-object v5

    invoke-virtual {v0, v5}, Lokhttp3/k$a;->f([Lokhttp3/e0;)Lokhttp3/k$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lokhttp3/k$a;->d(Z)Lokhttp3/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/k$a;->a()Lokhttp3/k;

    move-result-object v0

    sput-object v0, Lokhttp3/k;->i:Lokhttp3/k;

    new-instance v0, Lokhttp3/k$a;

    invoke-direct {v0, v3}, Lokhttp3/k$a;-><init>(Z)V

    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lokhttp3/h;

    invoke-virtual {v0, v1}, Lokhttp3/k$a;->c([Lokhttp3/h;)Lokhttp3/k$a;

    move-result-object v0

    sget-object v1, Lokhttp3/e0;->TLS_1_1:Lokhttp3/e0;

    sget-object v5, Lokhttp3/e0;->TLS_1_0:Lokhttp3/e0;

    filled-new-array {v2, v4, v1, v5}, [Lokhttp3/e0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/k$a;->f([Lokhttp3/e0;)Lokhttp3/k$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lokhttp3/k$a;->d(Z)Lokhttp3/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/k$a;->a()Lokhttp3/k;

    move-result-object v0

    sput-object v0, Lokhttp3/k;->j:Lokhttp3/k;

    new-instance v0, Lokhttp3/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/k$a;-><init>(Z)V

    invoke-virtual {v0}, Lokhttp3/k$a;->a()Lokhttp3/k;

    move-result-object v0

    sput-object v0, Lokhttp3/k;->k:Lokhttp3/k;

    return-void
.end method

.method public constructor <init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/k;->a:Z

    iput-boolean p2, p0, Lokhttp3/k;->b:Z

    iput-object p3, p0, Lokhttp3/k;->c:[Ljava/lang/String;

    iput-object p4, p0, Lokhttp3/k;->d:[Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lokhttp3/k;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokhttp3/k;->c:[Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic b(Lokhttp3/k;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokhttp3/k;->d:[Ljava/lang/String;

    return-object p0
.end method

.method private final g(Ljavax/net/ssl/SSLSocket;Z)Lokhttp3/k;
    .locals 4

    iget-object v0, p0, Lokhttp3/k;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "sslSocket.enabledCipherSuites"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/k;->c:[Ljava/lang/String;

    sget-object v2, Lokhttp3/h;->b:Lokhttp3/h$b;

    invoke-virtual {v2}, Lokhttp3/h$b;->c()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v1, v2}, Li9/d;->D([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lokhttp3/k;->d:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "sslSocket.enabledProtocols"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/k;->d:[Ljava/lang/String;

    invoke-static {}, Lq8/a;->b()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v1, v2, v3}, Li9/d;->D([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    const-string v2, "supportedCipherSuites"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lokhttp3/h;->b:Lokhttp3/h$b;

    invoke-virtual {v2}, Lokhttp3/h$b;->c()Ljava/util/Comparator;

    move-result-object v2

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {p1, v3, v2}, Li9/d;->w([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I

    move-result v2

    const-string v3, "cipherSuitesIntersection"

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    if-eq v2, p2, :cond_2

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object p1, p1, v2

    const-string p2, "supportedCipherSuites[indexOfFallbackScsv]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Li9/d;->n([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance p1, Lokhttp3/k$a;

    invoke-direct {p1, p0}, Lokhttp3/k$a;-><init>(Lokhttp3/k;)V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, v0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Lokhttp3/k$a;->b([Ljava/lang/String;)Lokhttp3/k$a;

    move-result-object p0

    const-string p1, "tlsVersionsIntersection"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lokhttp3/k$a;->e([Ljava/lang/String;)Lokhttp3/k$a;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/k$a;->a()Lokhttp3/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lokhttp3/k;->g(Ljavax/net/ssl/SSLSocket;Z)Lokhttp3/k;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/k;->i()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lokhttp3/k;->d:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lokhttp3/k;->d()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lokhttp3/k;->c:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 5

    iget-object p0, p0, Lokhttp3/k;->c:[Ljava/lang/String;

    if-eqz p0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    sget-object v4, Lokhttp3/h;->b:Lokhttp3/h$b;

    invoke-virtual {v4, v3}, Lokhttp3/h$b;->b(Ljava/lang/String;)Lokhttp3/h;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/o;->r0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final e(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    const-string v0, "socket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokhttp3/k;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lokhttp3/k;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lq8/a;->b()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v2, v3}, Li9/d;->t([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lokhttp3/k;->c:[Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lokhttp3/h;->b:Lokhttp3/h$b;

    invoke-virtual {v0}, Lokhttp3/h$b;->c()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, p1, v0}, Li9/d;->t([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lokhttp3/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    iget-boolean v2, p0, Lokhttp3/k;->a:Z

    check-cast p1, Lokhttp3/k;

    iget-boolean v3, p1, Lokhttp3/k;->a:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    iget-object v2, p0, Lokhttp3/k;->c:[Ljava/lang/String;

    iget-object v3, p1, Lokhttp3/k;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lokhttp3/k;->d:[Ljava/lang/String;

    iget-object v3, p1, Lokhttp3/k;->d:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-boolean p0, p0, Lokhttp3/k;->b:Z

    iget-boolean p1, p1, Lokhttp3/k;->b:Z

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/k;->a:Z

    return p0
.end method

.method public final h()Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/k;->b:Z

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lokhttp3/k;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokhttp3/k;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lokhttp3/k;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean p0, p0, Lokhttp3/k;->b:Z

    xor-int/lit8 p0, p0, 0x1

    add-int/2addr v2, p0

    goto :goto_1

    :cond_2
    const/16 v2, 0x11

    :goto_1
    return v2
.end method

.method public final i()Ljava/util/List;
    .locals 5

    iget-object p0, p0, Lokhttp3/k;->d:[Ljava/lang/String;

    if-eqz p0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    sget-object v4, Lokhttp3/e0;->Companion:Lokhttp3/e0$a;

    invoke-virtual {v4, v3}, Lokhttp3/e0$a;->a(Ljava/lang/String;)Lokhttp3/e0;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/o;->r0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lokhttp3/k;->a:Z

    if-nez v0, :cond_0

    const-string p0, "ConnectionSpec()"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionSpec(cipherSuites="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/k;->d()Ljava/util/List;

    move-result-object v1

    const-string v2, "[all enabled]"

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tlsVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/k;->i()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lokhttp3/k;->b:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
