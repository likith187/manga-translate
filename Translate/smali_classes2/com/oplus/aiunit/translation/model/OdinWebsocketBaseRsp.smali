.class public final Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bizType:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private code:I

.field private data:Lcom/google/gson/i;

.field private message:Ljava/lang/String;

.field private recordId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->bizType:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->channel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBizType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->bizType:Ljava/lang/String;

    return-object p0
.end method

.method public final getChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->code:I

    return p0
.end method

.method public final getData()Lcom/google/gson/i;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->data:Lcom/google/gson/i;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getRecordId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->recordId:Ljava/lang/String;

    return-object p0
.end method

.method public final setBizType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->bizType:Ljava/lang/String;

    return-void
.end method

.method public final setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->channel:Ljava/lang/String;

    return-void
.end method

.method public final setCode(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->code:I

    return-void
.end method

.method public final setData(Lcom/google/gson/i;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->data:Lcom/google/gson/i;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->message:Ljava/lang/String;

    return-void
.end method

.method public final setRecordId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->recordId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsrBaseRsp(code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messsage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', bizType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', channel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;->channel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
