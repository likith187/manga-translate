.class public final Lcom/oplus/aiunit/translation/data/AsrTtsAck;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dataType:Ljava/lang/String;

.field private duration:Ljava/lang/Long;

.field private extend:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private format:Ljava/lang/String;

.field private frameNo:J

.field private msgId:Ljava/lang/String;

.field private payload:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private sampleRate:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->sampleRate:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->duration:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final getDataType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->dataType:Ljava/lang/String;

    return-object p0
.end method

.method public final getDuration()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->duration:Ljava/lang/Long;

    return-object p0
.end method

.method public final getExtend()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->extend:Ljava/util/Map;

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->format:Ljava/lang/String;

    return-object p0
.end method

.method public final getFrameNo()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->frameNo:J

    return-wide v0
.end method

.method public final getMsgId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->msgId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPayload()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->payload:Ljava/lang/String;

    return-object p0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSampleRate()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->sampleRate:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setDataType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->dataType:Ljava/lang/String;

    return-void
.end method

.method public final setDuration(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->duration:Ljava/lang/Long;

    return-void
.end method

.method public final setExtend(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->extend:Ljava/util/Map;

    return-void
.end method

.method public final setFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->format:Ljava/lang/String;

    return-void
.end method

.method public final setFrameNo(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->frameNo:J

    return-void
.end method

.method public final setMsgId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->msgId:Ljava/lang/String;

    return-void
.end method

.method public final setPayload(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->payload:Ljava/lang/String;

    return-void
.end method

.method public final setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->requestId:Ljava/lang/String;

    return-void
.end method

.method public final setSampleRate(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->sampleRate:Ljava/lang/Integer;

    return-void
.end method
