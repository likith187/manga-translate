.class public final Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;
.super Lcom/oplus/aiunit/core/AIConnector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;,
        Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AudioTextCallback;,
        Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Companion;,
        Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;,
        Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/aiunit/core/AIConnector<",
        "Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrInputSlot;",
        "Lcom/oplus/aiunit/realtime_asr/slot/RealTimeAsrOutputSlot;",
        ">;"
    }
.end annotation


# static fields
.field public static final CALLBACK_METHOD_ONERROR:Ljava/lang/String; = "callback_method_onerror"

.field public static final CALLBACK_METHOD_ONSUCCESS:Ljava/lang/String; = "callback_method_onsuccess"

.field public static final Companion:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Companion;

.field public static final KEY_TRANSLATION_CALLBACK_TYPE:Ljava/lang/String; = "custom::translation_callback_type"

.field public static final KEY_TRANSLATION_METHOD:Ljava/lang/String; = "custom::translation_method"

.field public static final PARAM_ASR_STRING:Ljava/lang/String; = "param_asr_string"

.field private static final PARAM_KEY_AUDIO_RESULT:Ljava/lang/String; = "audio_text_result"

.field public static final PARAM_KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final PARAM_KEY_ERROR_REASON:Ljava/lang/String; = "errorReason"

.field private static final PARAM_KEY_STATUS_CODE:Ljava/lang/String; = "rtAsrStatusCode"

.field private static final PARAM_KEY_STATUS_DESC:Ljava/lang/String; = "rtAsrStatusDesc"

.field public static final PARAM_MT_STRING:Ljava/lang/String; = "param_mt_string"

.field public static final PARAM_TTS_STRING:Ljava/lang/String; = "param_tts_string"

.field public static final TAG:Ljava/lang/String; = "RealTimeASRClient"


# instance fields
.field private appState:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

.field private asrInitData:Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;

.field private final asrStartDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/realtime_asr/data/AsrStartData;",
            ">;"
        }
    .end annotation
.end field

.field private audioTextCallback:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AudioTextCallback;

.field private isEndAsr:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final messenger$delegate:Ln8/j;

.field private removeModalWord:Z

.field private setCheckFinalTimerTask:Ljava/util/TimerTask;

.field private final speechAsrClient$delegate:Ln8/j;

.field private timer:Ljava/util/Timer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->Companion:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/detector/RealTimeAsrDetector;

    invoke-direct {v0, p1, p2}, Lcom/oplus/aiunit/realtime_asr/detector/RealTimeAsrDetector;-><init>(Landroid/content/Context;Z)V

    const-string p2, "RealTimeASRClient"

    invoke-direct {p0, p1, v0, p2}, Lcom/oplus/aiunit/core/AIConnector;-><init>(Landroid/content/Context;Lcom/oplus/aiunit/core/base/FrameDetector;Ljava/lang/String;)V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->isEndAsr:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object p2, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;->NOT_INIT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    iput-object p2, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->appState:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->asrStartDataList:Ljava/util/List;

    new-instance p2, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$speechAsrClient$2;

    invoke-direct {p2, p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$speechAsrClient$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->speechAsrClient$delegate:Ln8/j;

    new-instance p1, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2;

    invoke-direct {p1, p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$messenger$2;-><init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->messenger$delegate:Ln8/j;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetector()Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object p1

    invoke-direct {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->getMessenger()Lcom/oplus/aiunit/core/callback/IAIMessenger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/aiunit/core/base/FrameDetector;->setMessenger(Lcom/oplus/aiunit/core/callback/IAIMessenger;)V

    sget-object p1, Lcom/oplus/aiunit/core/utils/AILog;->INSTANCE:Lcom/oplus/aiunit/core/utils/AILog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/oplus/aiunit/core/utils/AILog;->setDebugMode(Z)V

    new-instance p1, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$1;

    invoke-direct {p1, p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$1;-><init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)V

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/AIConnector;->add(Lcom/oplus/aiunit/core/callback/AICallback;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final synthetic access$addAsrStartData(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Lcom/oplus/aiunit/realtime_asr/data/AsrStartData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->addAsrStartData(Lcom/oplus/aiunit/realtime_asr/data/AsrStartData;)V

    return-void
.end method

.method public static final synthetic access$getAppState$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->appState:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    return-object p0
.end method

.method public static final synthetic access$getAsrStartDataList$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->asrStartDataList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getDetector(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Lcom/oplus/aiunit/core/base/FrameDetector;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetector()Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRemoveModalWord$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->removeModalWord:Z

    return p0
.end method

.method public static final synthetic access$getSetCheckFinalTimerTask$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/util/TimerTask;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->setCheckFinalTimerTask:Ljava/util/TimerTask;

    return-object p0
.end method

.method public static final synthetic access$getSpeechAsrClient(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Lcom/oplus/aiunit/realtime_asr/client/SpeechAsrClient;
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->getSpeechAsrClient()Lcom/oplus/aiunit/realtime_asr/client/SpeechAsrClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTimer$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method public static final synthetic access$isEndAsr$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->isEndAsr:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$setAppState$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->appState:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AppState;

    return-void
.end method

.method public static final synthetic access$setAsrInitData$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->asrInitData:Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;

    return-void
.end method

.method public static final synthetic access$setRemoveModalWord$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->removeModalWord:Z

    return-void
.end method

.method public static final synthetic access$setSetCheckFinalTimerTask$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/util/TimerTask;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->setCheckFinalTimerTask:Ljava/util/TimerTask;

    return-void
.end method

.method public static final synthetic access$setTimer$p(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->timer:Ljava/util/Timer;

    return-void
.end method

.method private final addAsrStartData(Lcom/oplus/aiunit/realtime_asr/data/AsrStartData;)V
    .locals 4

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAsrStartData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->asrStartDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/oplus/aiunit/realtime_asr/data/AsrStartData;

    invoke-virtual {v2}, Lcom/oplus/aiunit/realtime_asr/data/AsrStartData;->getSpeaker()Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/aiunit/realtime_asr/data/AsrStartData;->getSpeaker()Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/oplus/aiunit/realtime_asr/data/AsrStartData;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->asrStartDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->asrStartDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final getMessenger()Lcom/oplus/aiunit/core/callback/IAIMessenger;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->messenger$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/callback/IAIMessenger;

    return-object p0
.end method

.method private final getSpeechAsrClient()Lcom/oplus/aiunit/realtime_asr/client/SpeechAsrClient;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->speechAsrClient$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/realtime_asr/client/SpeechAsrClient;

    return-object p0
.end method

.method public static synthetic initAsr$default(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;ZILjava/lang/Object;)V
    .locals 6

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

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->initAsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;Z)V

    return-void
.end method

.method public static synthetic processDownAudioFrame$default(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/lang/String;JLjava/lang/String;[BILcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;ILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->OTHER_SIDE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->processDownAudioFrame(Ljava/lang/String;JLjava/lang/String;[BILcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;)V

    return-void
.end method

.method public static synthetic reconnect$default(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->reconnect(Ljava/lang/String;Z)V

    return-void
.end method

.method private final reinitializeAndStartAsr()V
    .locals 7

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->asrInitData:Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->getSpeaker()Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->asrStartDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[reinitializeAndStartAsr] asrInitData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", asrStartDataList: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->asrInitData:Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->getTargetLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->getSpeaker()Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    move-result-object v5

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/data/AsrInitData;->isRemoveModalWord()Z

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->initAsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;Z)V

    :cond_1
    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->asrStartDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/realtime_asr/data/AsrStartData;

    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/data/AsrStartData;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/data/AsrStartData;->getSpeaker()Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->startAsrData(Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static synthetic retryOnFailure$default(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/lang/Long;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->retryOnFailure(Ljava/lang/Long;)V

    return-void
.end method

.method private final sendStatus(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;Ljava/lang/String;)V
    .locals 8

    :try_start_0
    new-instance v7, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;

    invoke-virtual {p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getStatusDesc()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v2, p2

    :goto_0
    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/AudioText;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->audioTextCallback:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AudioTextCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, v7}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AudioTextCallback;->onResult(Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message send error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public static synthetic sendStatus$default(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->sendStatus(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;Ljava/lang/String;)V

    return-void
.end method

.method private final startAsrData(Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;Z)V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$startAsrData$1;-><init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;Z)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic startAsrData$default(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->startAsrData(Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;Z)V

    return-void
.end method


# virtual methods
.method public final abandon(Ljava/lang/String;)V
    .locals 1

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$abandon$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$abandon$1;-><init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method public final aiRelease(Ljava/lang/String;)V
    .locals 1

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$aiRelease$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$aiRelease$1;-><init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method public final endAsr(Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;)V
    .locals 1

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "speaker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$endAsr$1;-><init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method public final getAppState()Ljava/lang/Integer;
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$getAppState$1;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$getAppState$1;-><init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public final getAudioTextCallback()Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AudioTextCallback;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->audioTextCallback:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AudioTextCallback;

    return-object p0
.end method

.method public final getTranslationConfig(Lcom/oplus/aiunit/realtime_asr/request/TranslateConfigRequest;Lcom/oplus/aiunit/realtime_asr/callback/TranslateConfigCallback;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$getTranslationConfig$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$getTranslationConfig$1;-><init>(Lcom/oplus/aiunit/realtime_asr/callback/TranslateConfigCallback;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Lcom/oplus/aiunit/realtime_asr/request/TranslateConfigRequest;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method public final handleResult(Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/realtime_asr/callback/TranslateConfigCallback;)V
    .locals 3

    const-string v0, "resultCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v0, "custom::translation_callback_type"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback_method_onsuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "param_asr_string"

    invoke-virtual {p1, p0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "param_mt_string"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "param_tts_string"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p2, p0, v0, p1}, Lcom/oplus/aiunit/realtime_asr/callback/TranslateConfigCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "errorReason"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "errorCode"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getParamStr(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetOnlineResult onError errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",errorString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1, v0}, Lcom/oplus/aiunit/realtime_asr/callback/TranslateConfigCallback;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final initAsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;Z)V
    .locals 8

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetLanguage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$initAsr$1;

    move-object v1, v0

    move-object v2, p0

    move v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$initAsr$1;-><init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method public final processDownAudioFrame(Ljava/lang/String;JLjava/lang/String;[BILcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;)V
    .locals 10

    const-string v0, "callId"

    move-object v3, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeStamp"

    move-object v6, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioData"

    move-object v7, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "speaker"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetector()Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->checkActive()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[processDownAudioFrame] active false, need restart"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->reinitializeAndStartAsr()V

    :cond_0
    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processDownAudioFrame$1;-><init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/lang/String;JLjava/lang/String;[BILcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;)V

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method public final processUpAudioFrame(Ljava/lang/String;JLjava/lang/String;[BI)V
    .locals 9

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeStamp"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioData"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetector()Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->checkActive()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[processUpAudioFrame] active false, need restart"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->reinitializeAndStartAsr()V

    :cond_0
    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processUpAudioFrame$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$processUpAudioFrame$1;-><init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/lang/String;JLjava/lang/String;[BI)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method public final reconnect(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$reconnect$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$reconnect$1;-><init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method public final retryOnFailure(Ljava/lang/Long;)V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$retryOnFailure$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$retryOnFailure$1;-><init>(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    return-void
.end method

.method public final setAudioTextCallback(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AudioTextCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->audioTextCallback:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$AudioTextCallback;

    return-void
.end method

.method public final startAsr(Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;)V
    .locals 7

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "speaker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;->startAsrData$default(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;ZILjava/lang/Object;)V

    return-void
.end method
