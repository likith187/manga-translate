.class public final Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$InitAsrReqParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitAsrReqParam"
.end annotation


# instance fields
.field private channel:Ljava/lang/String;

.field private expandParams:Ljava/lang/String;

.field private hashcode:Ljava/lang/String;

.field private isStoreAudio:Ljava/lang/Boolean;

.field private language:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private targetLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$InitAsrReqParam;->hashcode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$InitAsrReqParam;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public final getExpandParams()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$InitAsrReqParam;->expandParams:Ljava/lang/String;

    return-object p0
.end method

.method public final getHashcode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$InitAsrReqParam;->hashcode:Ljava/lang/String;

    return-object p0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$InitAsrReqParam;->language:Ljava/lang/String;

    return-object p0
.end method

.method public final getPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$InitAsrReqParam;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$InitAsrReqParam;->targetLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final isStoreAudio()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$InitAsrReqParam;->isStoreAudio:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$InitAsrReqParam;->channel:Ljava/lang/String;

    return-void
.end method

.method public final setExpandParams(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$InitAsrReqParam;->expandParams:Ljava/lang/String;

    return-void
.end method

.method public final setHashcode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$InitAsrReqParam;->hashcode:Ljava/lang/String;

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$InitAsrReqParam;->language:Ljava/lang/String;

    return-void
.end method

.method public final setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$InitAsrReqParam;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public final setStoreAudio(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$InitAsrReqParam;->isStoreAudio:Ljava/lang/Boolean;

    return-void
.end method

.method public final setTargetLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$InitAsrReqParam;->targetLanguage:Ljava/lang/String;

    return-void
.end method
