.class public final Lcom/oplus/aiunit/translation/request/StartAsrRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;,
        Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;
    }
.end annotation


# instance fields
.field private hashcode:Ljava/lang/String;

.field private isEnableLid:Z

.field private isEnableMt:Z

.field private isEnableTts:Z

.field private mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

.field private pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->hashcode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAccent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->getAccent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAsrAudioTrack()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->getAudioTrack()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getBizType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getBizType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEnableLLM()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->getEnableLLM()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final getEnableMt()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->isEnableMt:Z

    return p0
.end method

.method public final getEnableTts()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->isEnableTts:Z

    return p0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->getFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getHashcode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->hashcode:Ljava/lang/String;

    return-object p0
.end method

.method public final getModel()I
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->getModel()I

    move-result p0

    return p0
.end method

.method public final getPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method public final getRecordId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->getRecordId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSceneId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->getSceneId()Ljava/lang/Integer;

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

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->getSourceLanguages()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getSpeedGrade()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->getSpeedGrade()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSrcLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->getSourceLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTargetLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->getTargetLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getVoiceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->getVoiceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getWsChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getChannel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getenableLid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->isEnableLid:Z

    return p0
.end method

.method public final setAccent(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->setAccent(Ljava/lang/String;)V

    return-void
.end method

.method public final setAsrAudioTrack(I)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->setAudioTrack(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setBizType(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->setBizType(Ljava/lang/String;)V

    return-void
.end method

.method public final setEnableLLM(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->setEnableLLM(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setEnableLid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->isEnableLid:Z

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->setEnableLid(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setEnableMt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->isEnableMt:Z

    iget-object p1, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p1

    iget-boolean p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->isEnableMt:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->setEnableMt(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setEnableTts(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->isEnableTts:Z

    iget-object p1, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p1

    iget-boolean p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->isEnableTts:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->setEnableTts(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setFormat(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->setFormat(Ljava/lang/String;)V

    return-void
.end method

.method public final setHashcode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->hashcode:Ljava/lang/String;

    return-void
.end method

.method public final setModel(I)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->setModel(I)V

    return-void
.end method

.method public final setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public final setRecordId(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->setRecordId(Ljava/lang/String;)V

    return-void
.end method

.method public final setSceneId(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->setSceneId(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setSourceLanguages(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "srcLanguages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->setSourceLanguages(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setSpeedGrade(Ljava/lang/String;)V
    .locals 1

    const-string v0, "speedGrade"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->setSpeedGrade(Ljava/lang/String;)V

    return-void
.end method

.method public final setSrcLanguage(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->setSourceLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public final setTargetLanguage(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->setTargetLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public final setVoiceName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "voiceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->getData()Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_DATA;->setVoiceName(Ljava/lang/String;)V

    return-void
.end method

.method public final setWsChannel(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;->setChannel(Ljava/lang/String;)V

    return-void
.end method

.method public final toJson()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->mRequest:Lcom/oplus/aiunit/translation/request/StartAsrRequest$START_STRUCT;

    invoke-virtual {v0, p0}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    return-object p0
.end method
