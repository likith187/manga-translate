.class public final Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private channel:Ljava/lang/String;

.field private enableMt:Ljava/lang/Boolean;

.field private enableTts:Ljava/lang/Boolean;

.field private expandParams:Ljava/lang/String;

.field private hashcode:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private speed:Ljava/lang/String;

.field private voiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->pkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->hashcode:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->channel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public final getEnableMt()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->enableMt:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getEnableTts()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->enableTts:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getExpandParams()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->expandParams:Ljava/lang/String;

    return-object p0
.end method

.method public final getHashcode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->hashcode:Ljava/lang/String;

    return-object p0
.end method

.method public final getPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSpeed()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->speed:Ljava/lang/String;

    return-object p0
.end method

.method public final getVoiceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->voiceName:Ljava/lang/String;

    return-object p0
.end method

.method public final setChannel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->channel:Ljava/lang/String;

    return-void
.end method

.method public final setEnableMt(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->enableMt:Ljava/lang/Boolean;

    return-void
.end method

.method public final setEnableTts(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->enableTts:Ljava/lang/Boolean;

    return-void
.end method

.method public final setExpandParams(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->expandParams:Ljava/lang/String;

    return-void
.end method

.method public final setHashcode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->hashcode:Ljava/lang/String;

    return-void
.end method

.method public final setPkgName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public final setSpeed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->speed:Ljava/lang/String;

    return-void
.end method

.method public final setVoiceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/SetFeatureEnableRequest;->voiceName:Ljava/lang/String;

    return-void
.end method
