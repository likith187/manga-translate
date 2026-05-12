.class public abstract Lk7/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a([BLjava/lang/String;)Ljava/security/PublicKey;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "convertPublicKey get exception - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lk7/d;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static b()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Li7/b;

    invoke-direct {v1}, Li7/b;-><init>()V

    const-string v2, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEvE0DoqARwzQKOb/b0cx7B0BQ4Ux8mTdND8rX9KHproZAuOP/M049VdcJ53sjVujUF1URD4IGMtkId2QYwXoDHw=="

    invoke-virtual {v1, v2}, Li7/b;->c(Ljava/lang/String;)V

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Li7/b;->d(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;[BI[B[B[B)[B
    .locals 2

    invoke-static {p0, p1}, Lk7/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lk7/b;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    array-length p1, p0

    add-int/2addr p1, p3

    add-int/lit8 p1, p1, 0xa

    new-array p1, p1, [B

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, p1, v0, v1}, Lk7/h;->a(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p4, v0, p1, v1, v1}, Lk7/h;->a(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p0

    const/4 p4, 0x2

    invoke-static {p0, v0, p1, p4, p2}, Lk7/h;->a(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p0

    add-int/2addr p2, p4

    const/4 p4, 0x4

    invoke-static {p5, v0, p1, p2, p4}, Lk7/h;->a(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p0

    add-int/lit8 p2, p2, 0x6

    invoke-static {p6, v0, p1, p2, p3}, Lk7/h;->a(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p3}, Lk7/h;->d(I)[B

    move-result-object p2

    array-length p0, p0

    add-int/2addr p0, p3

    add-int/lit8 p0, p0, 0x6

    invoke-static {p2, v0, p1, p0, p4}, Lk7/h;->a(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static d(Ljava/lang/String;Ljava/security/Signature;[B[B)Z
    .locals 1

    invoke-static {p0}, Lk7/a;->a(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "EC"

    invoke-static {p0, v0}, Lk7/g;->a([BLjava/lang/String;)Ljava/security/PublicKey;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p1, p2}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p1, p3}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;[BI[B[B[B[B)Z
    .locals 0

    invoke-static/range {p0 .. p6}, Lk7/g;->c(Landroid/content/Context;Ljava/lang/String;[BI[B[B[B)[B

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    const-string p2, "SHA256withECDSA"

    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    invoke-static {}, Lk7/g;->b()Ljava/util/List;

    move-result-object p3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move p4, p1

    :goto_0
    :try_start_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    if-ge p1, p5, :cond_1

    const-string p5, "OK"

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Li7/b;

    invoke-virtual {p6}, Li7/b;->b()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Li7/b;

    invoke-virtual {p5}, Li7/b;->a()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, p2, p0, p7}, Lk7/g;->d(Ljava/lang/String;Ljava/security/Signature;[B[B)Z

    move-result p4
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p4, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    move p1, p4

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Verify signing get an exception is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lk7/d;->c(Ljava/lang/String;)V

    move p4, p1

    :cond_1
    return p4
.end method
