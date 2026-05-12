.class public final Lcom/oplus/aiunit/translation/utils/DecryptUtilKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AES_BLOCK_SIZE:I = 0x10


# direct methods
.method public static final decrypt(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3

    const-string v0, "ciphertextB64"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Lkotlin/collections/i;->o([BII)[B

    move-result-object v0

    array-length v2, p0

    invoke-static {p0, v1, v2}, Lkotlin/collections/i;->o([BII)[B

    move-result-object p0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p1, "AES/CBC/PKCS5Padding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method
