.class public final Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder$Companion;

.field public static final EXPAND_APPID:Ljava/lang/String; = "appid"

.field public static final EXPAND_INIT_ASR_WITH_START:Ljava/lang/String; = "init_asr_with_start"

.field public static final EXPAND_INIT_ASR_WITH_START_PARAMS:Ljava/lang/String; = "init_asr_with_start_params"

.field public static final EXPAND_MULTY_TRANLATION_LANGUAGE:Ljava/lang/String; = "mtTargetLanguage"

.field public static final REALTIME_ASR_APPID_CALL:Ljava/lang/String; = "call"

.field public static final REALTIME_ASR_APPID_VOICEBOX:Ljava/lang/String; = "voicebox"


# instance fields
.field private appId:Ljava/lang/String;

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;->Companion:Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;->appId:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;->params:Ljava/util/Map;

    const-string v0, "appid"

    iget-object p0, p0, Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;->appId:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addCustomParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final addCustomParams(Ljava/util/Map;)Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;"
        }
    .end annotation

    const-string v0, "paramMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public final build()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/e;->e()Lcom/google/gson/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/e;->b()Lcom/google/gson/d;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;->params:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "InitAsrExpandParamsBuilder"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;->params:Ljava/util/Map;

    invoke-virtual {v0, p0}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final setAppid(Ljava/lang/String;)Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;
    .locals 2

    const-string v0, "appid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;->params:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final setEnableStart(Z)Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;
    .locals 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;->params:Ljava/util/Map;

    const-string v1, "init_asr_with_start"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setStartParams(Lcom/oplus/aiunit/translation/request/StartAsrRequest;)Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;
    .locals 2

    const-string v0, "startParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/translation/data/AsrStartRequest;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;-><init>()V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getWsChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setWsChannel(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getRecordId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setRecordId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getEnableLLM()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setEnableLLM(Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getSceneId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setSceneId(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getModel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setModel(I)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getAccent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setAccent(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setFormat(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getAsrAudioTrack()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setAsrChannel(I)V

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setSampleBytes(I)V

    const/16 v1, 0x3e80

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setSampleRate(I)V

    const/16 v1, 0x280

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setFrameSize(I)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getenableLid()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setEnableLid(Z)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getSourceLanguages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setSourceLanguages(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getEnableMt()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setEnableMt(Z)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getSrcLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setSrcLanguage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getTargetLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setTargetLanguage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getEnableTts()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setEnableTts(Z)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getVoiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setVoiceName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->getSpeedGrade()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/translation/data/AsrStartRequest;->setSpeedGrade(Ljava/lang/String;)V

    new-instance p1, Lcom/google/gson/e;

    invoke-direct {p1}, Lcom/google/gson/e;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/e;->e()Lcom/google/gson/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/e;->b()Lcom/google/gson/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/aiunit/translation/extend/expandparams/InitAsrExpandParamsBuilder;->params:Ljava/util/Map;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const-string v1, "init_asr_with_start_params"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
