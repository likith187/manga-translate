.class public final Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/translation/data/AsrStartRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "START_DATA"
.end annotation


# instance fields
.field private accent:Ljava/lang/String;

.field private channel:Ljava/lang/Integer;

.field private enableLLM:Ljava/lang/Boolean;

.field private enableLid:Ljava/lang/Boolean;

.field private enableMt:Ljava/lang/Boolean;

.field private enableTts:Ljava/lang/Boolean;

.field private format:Ljava/lang/String;

.field private frameSize:Ljava/lang/Integer;

.field private model:I

.field private recordId:Ljava/lang/String;

.field private sampleBytes:Ljava/lang/Integer;

.field private sampleRate:Ljava/lang/Integer;

.field private sceneId:Ljava/lang/Integer;

.field private sourceLanguage:Ljava/lang/String;

.field private sourceLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private speedGrade:Ljava/lang/String;

.field private targetLanguage:Ljava/lang/String;

.field private voiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->recordId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAccent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->accent:Ljava/lang/String;

    return-object p0
.end method

.method public final getChannel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->channel:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getEnableLLM()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->enableLLM:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getEnableLid()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->enableLid:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getEnableMt()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->enableMt:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getEnableTts()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->enableTts:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->format:Ljava/lang/String;

    return-object p0
.end method

.method public final getFrameSize()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->frameSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getModel()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->model:I

    return p0
.end method

.method public final getRecordId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->recordId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSampleBytes()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->sampleBytes:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getSampleRate()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->sampleRate:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getSceneId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->sceneId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getSourceLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->sourceLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getSourceLanguages()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->sourceLanguages:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getSpeedGrade()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->speedGrade:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->targetLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getVoiceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->voiceName:Ljava/lang/String;

    return-object p0
.end method

.method public final setAccent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->accent:Ljava/lang/String;

    return-void
.end method

.method public final setChannel(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->channel:Ljava/lang/Integer;

    return-void
.end method

.method public final setEnableLLM(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->enableLLM:Ljava/lang/Boolean;

    return-void
.end method

.method public final setEnableLid(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->enableLid:Ljava/lang/Boolean;

    return-void
.end method

.method public final setEnableMt(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->enableMt:Ljava/lang/Boolean;

    return-void
.end method

.method public final setEnableTts(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->enableTts:Ljava/lang/Boolean;

    return-void
.end method

.method public final setFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->format:Ljava/lang/String;

    return-void
.end method

.method public final setFrameSize(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->frameSize:Ljava/lang/Integer;

    return-void
.end method

.method public final setModel(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->model:I

    return-void
.end method

.method public final setRecordId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->recordId:Ljava/lang/String;

    return-void
.end method

.method public final setSampleBytes(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->sampleBytes:Ljava/lang/Integer;

    return-void
.end method

.method public final setSampleRate(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->sampleRate:Ljava/lang/Integer;

    return-void
.end method

.method public final setSceneId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->sceneId:Ljava/lang/Integer;

    return-void
.end method

.method public final setSourceLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->sourceLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setSourceLanguages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->sourceLanguages:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSpeedGrade(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->speedGrade:Ljava/lang/String;

    return-void
.end method

.method public final setTargetLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->targetLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setVoiceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->voiceName:Ljava/lang/String;

    return-void
.end method
