.class public final Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final callId:Ljava/lang/String;

.field private final isRemoveModalWord:Z

.field private final language:Ljava/lang/String;

.field private final speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

.field private final targetLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;Z)V
    .locals 1

    .line 1
    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetLanguage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->callId:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->language:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->targetLanguage:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    iput-boolean p5, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->isRemoveModalWord:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;ZILjava/lang/Object;)Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->callId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->language:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->targetLanguage:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->isRemoveModalWord:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;Z)Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->callId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->language:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->targetLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    return-object p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->isRemoveModalWord:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;Z)Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;
    .locals 6

    const-string p0, "callId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "language"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "targetLanguage"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->callId:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->callId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->language:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->targetLanguage:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->targetLanguage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->isRemoveModalWord:Z

    iget-boolean p1, p1, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->isRemoveModalWord:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCallId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->callId:Ljava/lang/String;

    return-object p0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->language:Ljava/lang/String;

    return-object p0
.end method

.method public final getSpeaker()Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    return-object p0
.end method

.method public final getTargetLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->targetLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->callId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->targetLanguage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->isRemoveModalWord:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isRemoveModalWord()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->isRemoveModalWord:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->callId:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->language:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->targetLanguage:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->speaker:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    iget-boolean p0, p0, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->isRemoveModalWord:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AsrInitData(callId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", language="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", targetLanguage="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", speaker="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isRemoveModalWord="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
