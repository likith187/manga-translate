.class public final Lcom/oplus/aiunit/translation/data/AsrBaseResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bizType:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private code:I

.field private message:Ljava/lang/String;

.field private recordId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 10
    const-string v4, ""

    const-string v5, ""

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "errorMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;-><init>()V

    .line 8
    iput p1, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->code:I

    .line 9
    iput-object p2, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->code:I

    .line 2
    iput-object p2, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->message:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->bizType:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->channel:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->recordId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    move v1, p1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getBizType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->bizType:Ljava/lang/String;

    return-object p0
.end method

.method public final getChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->code:I

    return p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getRecordId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->recordId:Ljava/lang/String;

    return-object p0
.end method

.method public final setBizType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->bizType:Ljava/lang/String;

    return-void
.end method

.method public final setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->channel:Ljava/lang/String;

    return-void
.end method

.method public final setCode(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->code:I

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public final setRecordId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->recordId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsrBaseRespone(code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messsage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', bizType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', channel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->channel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
