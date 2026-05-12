.class public final Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBizPkgName:Ljava/lang/String;

.field private mCallback:Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

.field private mChannel:Ljava/lang/String;

.field private mHashCode:Ljava/lang/String;

.field private mRealtimeAsrClient:Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;)V
    .locals 1

    const-string v0, "bizPkgName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hashCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mRealtimeAsrClient:Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mBizPkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mHashCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mChannel:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mCallback:Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    return-void
.end method

.method public static synthetic abandonAsrAudio$default(Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->abandonAsrAudio(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic endAsrAudio$default(Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->endAsrAudio(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic initRealtimeAsr$default(Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, p5

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->initRealtimeAsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic sendAsrAudio$default(Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->sendAsrAudio(Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final abandonAsrAudio(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mRealtimeAsrClient:Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mBizPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mHashCode:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->endAsrAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final endAsrAudio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mRealtimeAsrClient:Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mBizPkgName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mHashCode:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->endAsrAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getMBizPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mBizPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public final getMCallback()Lcom/oplus/aiunit/translation/callback/AsrRspCallback;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mCallback:Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    return-object p0
.end method

.method public final getMChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mChannel:Ljava/lang/String;

    return-object p0
.end method

.method public final getMHashCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mHashCode:Ljava/lang/String;

    return-object p0
.end method

.method public final initOmniPlugin()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mRealtimeAsrClient:Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->initOmniPlugin()V

    :cond_0
    return-void
.end method

.method public final initRealtimeAsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    const-string v1, "language"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "targetLanguage"

    move-object v4, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mRealtimeAsrClient:Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;

    if-eqz v2, :cond_0

    iget-object v5, v0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mHashCode:Ljava/lang/String;

    iget-object v6, v0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mBizPkgName:Ljava/lang/String;

    iget-object v7, v0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mChannel:Ljava/lang/String;

    iget-object v11, v0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mCallback:Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v2 .. v11}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->initRealtimeAsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;)V

    :cond_0
    return-void
.end method

.method public final releaseAsr(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mRealtimeAsrClient:Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mBizPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mHashCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mChannel:Ljava/lang/String;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->endAsrAudio$default(Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final sendAsrAudio(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 7

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audio"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mRealtimeAsrClient:Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mBizPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mHashCode:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->sendAsrAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setMBizPkgName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mBizPkgName:Ljava/lang/String;

    return-void
.end method

.method public final setMCallback(Lcom/oplus/aiunit/translation/callback/AsrRspCallback;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mCallback:Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    return-void
.end method

.method public final setMChannel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mChannel:Ljava/lang/String;

    return-void
.end method

.method public final setMHashCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mHashCode:Ljava/lang/String;

    return-void
.end method

.method public final setRecognizeFeature(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    const-string v1, "channel"

    move-object v5, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mRealtimeAsrClient:Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mBizPkgName:Ljava/lang/String;

    iget-object v4, v0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mHashCode:Ljava/lang/String;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v2 .. v10}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->setRecognizeFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final startRealtimeAsr(Lcom/oplus/aiunit/translation/request/StartAsrRequest;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mBizPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->setPkgName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mHashCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/translation/request/StartAsrRequest;->setHashcode(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/management/RealtimeAsrController;->mRealtimeAsrClient:Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->startRealtimeAsr(Lcom/oplus/aiunit/translation/request/StartAsrRequest;)V

    :cond_0
    return-void
.end method
