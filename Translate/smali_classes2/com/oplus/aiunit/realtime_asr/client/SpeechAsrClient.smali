.class public final Lcom/oplus/aiunit/realtime_asr/client/SpeechAsrClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/realtime_asr/client/SpeechAsrClient$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/realtime_asr/client/SpeechAsrClient$Companion;

.field private static final TAG:Ljava/lang/String; = "SpeechAsrClient"


# instance fields
.field private textSmoothClient:Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/SpeechAsrClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/realtime_asr/client/SpeechAsrClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/SpeechAsrClient;->Companion:Lcom/oplus/aiunit/realtime_asr/client/SpeechAsrClient$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;-><init>(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/SpeechAsrClient;->textSmoothClient:Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;

    return-void
.end method


# virtual methods
.method public final turnToSmoothJsonText(Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;)Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;
    .locals 14

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->getData()Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->getOriginalText()Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnToSmoothJsonText text: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpeechAsrClient"

    invoke-static {v3, v2}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    if-nez v1, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    return-object p1

    :cond_3
    :try_start_0
    sget-object v4, Ln8/r;->Companion:Ln8/r$a;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "id"

    const-string v7, "key1"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "text"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "toString(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/SpeechAsrClient;->textSmoothClient:Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;->getTextSmoothResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_4
    move-object p0, v0

    :goto_3
    if-eqz p0, :cond_a

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_9

    const-string p0, "data"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_9

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "smoothed"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    if-nez p0, :cond_5

    move-object v5, v2

    goto :goto_4

    :cond_5
    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-object v5, p0

    :goto_4
    const/16 v12, 0x7e

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lcom/oplus/aiunit/realtime_asr/result/Sentence;-><init>(Ljava/lang/String;[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->getData()Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->getOriginalText()Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->getWordsPosList()[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    move-result-object p0

    goto :goto_5

    :cond_6
    move-object p0, v0

    :goto_5
    invoke-virtual {v1, p0}, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->setWordsPosList([Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;)V

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->getData()Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    move-result-object v0

    :cond_7
    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->setSmoothText(Lcom/oplus/aiunit/realtime_asr/result/Sentence;)V

    :goto_6
    return-object p1

    :cond_9
    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    :cond_a
    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :goto_7
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_8
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_9

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "textSmooth error :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-object p1
.end method
