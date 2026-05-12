.class public final Lcom/oplus/aiunit/translation/model/TtsAudioForm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bitDepth:I

.field private format:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private sample:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBitDepth()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/translation/model/TtsAudioForm;->bitDepth:I

    return p0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/TtsAudioForm;->format:Ljava/lang/String;

    return-object p0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/TtsAudioForm;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSample()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/translation/model/TtsAudioForm;->sample:I

    return p0
.end method

.method public final setBitDepth(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/translation/model/TtsAudioForm;->bitDepth:I

    return-void
.end method

.method public final setFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/TtsAudioForm;->format:Ljava/lang/String;

    return-void
.end method

.method public final setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/model/TtsAudioForm;->requestId:Ljava/lang/String;

    return-void
.end method

.method public final setSample(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/translation/model/TtsAudioForm;->sample:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TtsAudioForm(bitDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/aiunit/translation/model/TtsAudioForm;->bitDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/model/TtsAudioForm;->format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/aiunit/translation/model/TtsAudioForm;->sample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/aiunit/translation/model/TtsAudioForm;->requestId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
