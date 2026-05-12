.class public final Lcom/oplus/aiunit/translation/RealTimeAsrHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/translation/RealTimeAsrHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/translation/RealTimeAsrHelper$Companion;

.field public static final EXPAND_APPID:Ljava/lang/String; = "appid"

.field public static final EXPAND_INIT_ASR_WITH_START:Ljava/lang/String; = "init_asr_with_start"

.field public static final EXPAND_INIT_ASR_WITH_START_PARAMS:Ljava/lang/String; = "init_asr_with_start_params"

.field public static final EXPAND_MULTY_TRANLATION_LANGUAGE:Ljava/lang/String; = "mtTargetLanguage"

.field public static final REALTIME_ASR_APPID_CALL:Ljava/lang/String; = "call"

.field public static final REALTIME_ASR_APPID_VOICEBOX:Ljava/lang/String; = "voicebox"

.field public static final TAG:Ljava/lang/String; = "RealTimeAsrHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHashCode:Ljava/lang/String;

.field private mPkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/translation/RealTimeAsrHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/translation/RealTimeAsrHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->Companion:Lcom/oplus/aiunit/translation/RealTimeAsrHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->mHashCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->mPkgName:Ljava/lang/String;

    iput-object p1, p0, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;->INSTANCE:Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;->setContext(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->getInstance()Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->init(Landroid/content/Context;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Context not initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic initAsr$default(Lcom/oplus/aiunit/translation/RealTimeAsrHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;ILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->initAsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;)V

    return-void
.end method

.method public static synthetic processAudio$default(Lcom/oplus/aiunit/translation/RealTimeAsrHelper;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->processAudio(Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final abandon(Ljava/lang/String;)V
    .locals 2

    const-string v0, "recordId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;->INSTANCE:Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;

    iget-object p0, p0, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->mHashCode:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;->abandonAsrAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final endAsr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recordId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;->INSTANCE:Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;

    iget-object p0, p0, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->mHashCode:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;->endAsrAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final initAsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;)V
    .locals 12

    move-object v0, p0

    const-string v1, "language"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "targetLanguage"

    move-object v4, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "listener"

    move-object/from16 v11, p8

    invoke-static {v11, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p3

    iput-object v1, v0, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->mPkgName:Ljava/lang/String;

    sget-object v2, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;->INSTANCE:Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;

    iget-object v5, v0, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->mHashCode:Ljava/lang/String;

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v11}, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;->initRealtimeAsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;)V

    return-void
.end method

.method public final initOmniPlugin()V
    .locals 2

    sget-object v0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;->INSTANCE:Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;

    iget-object p0, p0, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->mHashCode:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;->initOmniPlugin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final processAudio(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audio"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;->INSTANCE:Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;

    iget-object p0, p0, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->mHashCode:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;->sendAsrAudio(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method public final releaseAsr(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;->INSTANCE:Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;

    iget-object p0, p0, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->mHashCode:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;->releaseAsr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setRecognizeFeature(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;->INSTANCE:Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;

    iget-object v2, p0, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->mHashCode:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;->setRecognizeFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final startAsr(Lcom/oplus/aiunit/translation/request/StartAsrRequest;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->mHashCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->setHashcode(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/translation/RealTimeAsrHelper;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->setPkgName(Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;->INSTANCE:Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrManager;->startRealtimeAsr(Lcom/oplus/aiunit/translation/request/StartAsrRequest;)V

    return-void
.end method
