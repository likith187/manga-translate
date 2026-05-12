.class public final Lcom/oplus/aiunit/translation/data/AsrStartRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/translation/data/AsrStartRequest$Companion;,
        Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;,
        Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;
    }
.end annotation


# static fields
.field private static final ACCENT:Ljava/lang/String;

.field private static final CHANNEL:Ljava/lang/String;

.field public static final Companion:Lcom/oplus/aiunit/translation/data/AsrStartRequest$Companion;

.field private static final ENABLE_MT:Ljava/lang/String;

.field private static final ENABLE_TTS:Ljava/lang/String;

.field private static final FORMAT:Ljava/lang/String;

.field private static final FRAME_SIZE:Ljava/lang/String;

.field private static final LANGUAGES:Ljava/lang/String;

.field private static final MODEL:Ljava/lang/String;

.field private static final PITCH:Ljava/lang/String;

.field private static final RECORDID:Ljava/lang/String;

.field private static final SAMPLE_BYTES:Ljava/lang/String;

.field private static final SAMPLE_REATE:Ljava/lang/String;

.field private static final SPEAKER:Ljava/lang/String;

.field private static final SPEED:Ljava/lang/String;

.field private static final SRC_LANGUAGE:Ljava/lang/String;

.field private static final TARGET_LANGUAGE:Ljava/lang/String;

.field private static final TTS_TYPE:Ljava/lang/String;


# instance fields
.field private isEnableLid:Z

.field private isEnableMt:Z

.field private isEnableTts:Z

.field private mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->Companion:Lcom/oplus/aiunit/translation/data/AsrStartRequest$Companion;

    const-string v0, "recordId"

    sput-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->RECORDID:Ljava/lang/String;

    const-string v0, "model"

    sput-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->MODEL:Ljava/lang/String;

    const-string v0, "accent"

    sput-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->ACCENT:Ljava/lang/String;

    const-string v0, "format"

    sput-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->FORMAT:Ljava/lang/String;

    const-string v0, "channel"

    sput-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->CHANNEL:Ljava/lang/String;

    const-string v0, "sampleBytes"

    sput-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->SAMPLE_BYTES:Ljava/lang/String;

    const-string v0, "sampleRate"

    sput-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->SAMPLE_REATE:Ljava/lang/String;

    const-string v0, "frameSize"

    sput-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->FRAME_SIZE:Ljava/lang/String;

    const-string v0, "enableMt"

    sput-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->ENABLE_MT:Ljava/lang/String;

    const-string v0, "sourceLanguage"

    sput-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->SRC_LANGUAGE:Ljava/lang/String;

    const-string v0, "targetLanguage"

    sput-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->TARGET_LANGUAGE:Ljava/lang/String;

    const-string v0, "enableTts"

    sput-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->ENABLE_TTS:Ljava/lang/String;

    const-string v0, "languages"

    sput-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->LANGUAGES:Ljava/lang/String;

    const-string v0, "speaker"

    sput-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->SPEAKER:Ljava/lang/String;

    const-string v0, "speed"

    sput-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->SPEED:Ljava/lang/String;

    const-string v0, "pitch"

    sput-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->PITCH:Ljava/lang/String;

    const-string v0, "ttsType"

    sput-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->TTS_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->isEnableTts:Z

    iput-boolean v0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->isEnableLid:Z

    return-void
.end method

.method public static final synthetic access$getACCENT$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->ACCENT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getCHANNEL$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->CHANNEL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getENABLE_MT$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->ENABLE_MT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getENABLE_TTS$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->ENABLE_TTS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getFORMAT$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->FORMAT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getFRAME_SIZE$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->FRAME_SIZE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getLANGUAGES$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->LANGUAGES:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMODEL$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPITCH$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->PITCH:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getRECORDID$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->RECORDID:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSAMPLE_BYTES$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->SAMPLE_BYTES:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSAMPLE_REATE$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->SAMPLE_REATE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSPEAKER$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->SPEAKER:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSPEED$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->SPEED:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSRC_LANGUAGE$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->SRC_LANGUAGE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTARGET_LANGUAGE$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->TARGET_LANGUAGE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTTS_TYPE$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->TTS_TYPE:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getAccent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->getAccent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAsrChannel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->getChannel()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getBizType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getBizType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEnableLLM()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->getEnableLLM()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final getEnableMt()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->isEnableMt:Z

    return p0
.end method

.method public final getEnableTts()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->isEnableTts:Z

    return p0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->getFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFrameSize()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->getFrameSize()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getModel()I
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->getModel()I

    move-result p0

    return p0
.end method

.method public final getRecordId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->getRecordId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSampleBytes()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->getSampleBytes()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getSampleRate()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->getSampleRate()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getSceneId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->getSceneId()Ljava/lang/Integer;

    move-result-object p0

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

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->getSourceLanguages()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getSpeedGrade()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->getSpeedGrade()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSrcLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->getSourceLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTargetLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->getTargetLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getVoiceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->getVoiceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getWsChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getChannel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getenableLid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->isEnableLid:Z

    return p0
.end method

.method public final setAccent(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->setAccent(Ljava/lang/String;)V

    return-void
.end method

.method public final setAsrChannel(I)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->setChannel(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setBizType(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->setBizType(Ljava/lang/String;)V

    return-void
.end method

.method public final setEnableLLM(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->setEnableLLM(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setEnableLid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->isEnableLid:Z

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->setEnableLid(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setEnableMt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->isEnableMt:Z

    iget-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p1

    iget-boolean p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->isEnableMt:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->setEnableMt(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setEnableTts(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->isEnableTts:Z

    iget-object p1, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p1

    iget-boolean p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->isEnableTts:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->setEnableTts(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setFormat(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->setFormat(Ljava/lang/String;)V

    return-void
.end method

.method public final setFrameSize(I)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->setFrameSize(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setModel(I)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->setModel(I)V

    return-void
.end method

.method public final setRecordId(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->setRecordId(Ljava/lang/String;)V

    return-void
.end method

.method public final setSampleBytes(I)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->setSampleBytes(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setSampleRate(I)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->setSampleRate(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setSceneId(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->setSceneId(Ljava/lang/Integer;)V

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

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->setSourceLanguages(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setSpeedGrade(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->setSpeedGrade(Ljava/lang/String;)V

    return-void
.end method

.method public final setSrcLanguage(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->setSourceLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public final setTargetLanguage(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->setTargetLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public final setVoiceName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_DATA;->setVoiceName(Ljava/lang/String;)V

    return-void
.end method

.method public final setWsChannel(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;->setChannel(Ljava/lang/String;)V

    return-void
.end method

.method public final toJson()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->mRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest$START_STRUCT;

    invoke-virtual {v0, p0}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    return-object p0
.end method
