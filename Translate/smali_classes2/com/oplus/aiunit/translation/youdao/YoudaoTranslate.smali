.class public Lcom/oplus/aiunit/translation/youdao/YoudaoTranslate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "YoudaoTranslate"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static printLongLog(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YoudaoTranslate"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "=== Start of long log ==="

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    add-int/lit16 v2, v0, 0x7d0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", chunk = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_1
    const-string p0, "=== End of long log ==="

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static printStackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static responseError(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    instance-of v0, p0, Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;

    invoke-interface {p0, p1, p2}, Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;->onError(ILjava/lang/String;)V

    invoke-static {}, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->getInstance()Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;

    move-result-object v0

    const-string v3, "generateImageTranslate_sdk"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "TEXT_TRANSLATION_AND_TO_SPEECH_INTERFACE"

    move-object v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->trackEventCommon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;

    invoke-interface {p0, p1, p2}, Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;->onError(ILjava/lang/String;)V

    invoke-static {}, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->getInstance()Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;

    move-result-object v0

    const-string v3, "generatePhotoTranslate_sdk"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "TEXT_TRANSLATION_AND_TO_SPEECH_INTERFACE"

    move-object v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->trackEventCommon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static translate(ILcom/oplus/aiunit/translation/model/YoudaoInfo;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/oplus/aiunit/translation/model/YoudaoInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    const-string v2, "lanTo"

    const-string v3, "lanFrom"

    const-string v4, "render_image"

    const-string v5, "textAngle"

    const-string v6, "salt = "

    const-string v9, "YoudaoTranslate"

    const v10, 0xc3503

    :try_start_0
    const-string v11, "addAuthParams"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/aiunit/translation/model/YoudaoInfo;->getAppKey()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/aiunit/translation/model/YoudaoInfo;->getPrivate()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v12

    invoke-static {v11, v12}, Lcom/oplus/aiunit/translation/utils/DecryptUtilKt;->decrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/aiunit/translation/model/YoudaoInfo;->getAppSecret()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/aiunit/translation/model/YoudaoInfo;->getPrivate()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v13

    invoke-static {v12, v13}, Lcom/oplus/aiunit/translation/utils/DecryptUtilKt;->decrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/aiunit/translation/model/YoudaoInfo;->getUrl()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/aiunit/translation/model/YoudaoInfo;->getPrivate()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v14

    invoke-static {v13, v14}, Lcom/oplus/aiunit/translation/utils/DecryptUtilKt;->decrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v1, v7}, Lcom/oplus/aiunit/translation/youdao/utils/AuthV3Util;->addAuthParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", doPost"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v11, p3

    invoke-static {v13, v11, v1}, Lcom/oplus/aiunit/translation/youdao/utils/HttpUtil;->doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/b0;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/b0;->x()I

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", finish"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lokhttp3/b0;->c()Lokhttp3/c0;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v6, "response body is not null"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1}, Lokhttp3/c0;->c()[B

    move-result-object v1

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v1, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v6}, Lcom/google/gson/n;->d(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/i;->e()Lcom/google/gson/l;

    move-result-object v1

    const-string v6, "errorCode"

    invoke-virtual {v1, v6}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/i;->c()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v6, v1, v7}, Lcom/oplus/aiunit/translation/youdao/YoudaoTranslate;->responseError(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v1, v5}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, v5}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/i;->b()D

    move-result-wide v5

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v11
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, ""

    if-eqz v11, :cond_2

    :try_start_1
    invoke-virtual {v1, v4}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v12

    :goto_1
    invoke-virtual {v1, v3}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v1, v3}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v12

    :goto_2
    invoke-virtual {v1, v2}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v1, v2}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v12

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "render_image = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v2, v8, Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, "tranContent"

    const-string v13, "context"

    const/4 v14, 0x0

    const-string v15, "resRegions"

    const/16 v16, 0x3

    if-eqz v2, :cond_6

    :try_start_2
    new-instance v2, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;

    invoke-direct {v2, v5, v6}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;-><init>(D)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->setAlgorithmModel(Ljava/lang/Integer;)V

    invoke-virtual {v2, v3}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->setFrom(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->setTo(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Lcom/google/gson/l;->q(Ljava/lang/String;)Lcom/google/gson/f;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-virtual {v1}, Lcom/google/gson/f;->size()I

    move-result v5

    if-ge v14, v5, :cond_5

    invoke-virtual {v1, v14}, Lcom/google/gson/f;->n(I)Lcom/google/gson/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/i;->e()Lcom/google/gson/l;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v11}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v5

    new-instance v12, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;

    invoke-direct {v12, v6, v5}, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v12, v14}, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;->setParagraphNo(I)V

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v2, v3}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->setTranslate(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->setRenderImage(Ljava/lang/String;)V

    move-object v1, v8

    check-cast v1, Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;

    invoke-interface {v1, v2}, Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;->onTranslated(Lcom/oplus/aiunit/translation/model/ImageTranslateResult;)V

    invoke-static {}, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->getInstance()Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;

    move-result-object v1

    const-string v2, "TEXT_TRANSLATION_AND_TO_SPEECH_INTERFACE"

    const-string v4, "generateImageTranslate_sdk"

    const-string v5, "0"

    const-string v6, "success"

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->trackEventCommon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_6
    instance-of v2, v8, Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;

    if-eqz v2, :cond_a

    new-instance v2, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;

    invoke-direct {v2, v5, v6}, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;-><init>(D)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->setAlgorithmModel(Ljava/lang/Integer;)V

    invoke-virtual {v2, v4}, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->setRenderImage(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->setFrom(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->setTo(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Lcom/google/gson/l;->q(Ljava/lang/String;)Lcom/google/gson/f;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    invoke-virtual {v1}, Lcom/google/gson/f;->size()I

    move-result v4

    if-ge v14, v4, :cond_7

    invoke-virtual {v1, v14}, Lcom/google/gson/f;->n(I)Lcom/google/gson/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/i;->e()Lcom/google/gson/l;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v11}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;

    invoke-direct {v6, v5, v4}, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v6, v14}, Lcom/oplus/aiunit/translation/model/PhotoTranslateItem;->setParagraphNo(I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v3}, Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;->setTranslate(Ljava/util/List;)V

    move-object v1, v8

    check-cast v1, Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;

    invoke-interface {v1, v2}, Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;->onTranslated(Lcom/oplus/aiunit/translation/model/PhotoTranslateResult;)V

    invoke-static {}, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->getInstance()Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;

    move-result-object v1

    const-string v2, "TEXT_TRANSLATION_AND_TO_SPEECH_INTERFACE"

    const-string v4, "generatePhotoTranslate_sdk"

    const-string v5, "0"

    const-string v6, "success"

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->trackEventCommon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    const-string v1, "response body is null"

    invoke-static {v8, v10, v1, v7}, Lcom/oplus/aiunit/translation/youdao/YoudaoTranslate;->responseError(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request failed, salt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", http code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/b0;->x()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request failed, http code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/b0;->x()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v10, v1, v7}, Lcom/oplus/aiunit/translation/youdao/YoudaoTranslate;->responseError(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :goto_5
    invoke-static {v1}, Lcom/oplus/aiunit/translation/youdao/YoudaoTranslate;->printStackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "internal error: parse json failed"

    invoke-static {v8, v10, v1, v7}, Lcom/oplus/aiunit/translation/youdao/YoudaoTranslate;->responseError(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :goto_6
    invoke-static {v1}, Lcom/oplus/aiunit/translation/youdao/YoudaoTranslate;->printStackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0xc3506

    const-string v2, "okhttp error"

    invoke-static {v8, v1, v2, v7}, Lcom/oplus/aiunit/translation/youdao/YoudaoTranslate;->responseError(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    invoke-static {v1}, Lcom/oplus/aiunit/translation/youdao/YoudaoTranslate;->printStackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0xc3502

    const-string v2, "internal error: network unreachable"

    invoke-static {v8, v1, v2, v7}, Lcom/oplus/aiunit/translation/youdao/YoudaoTranslate;->responseError(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_8
    return-void
.end method
