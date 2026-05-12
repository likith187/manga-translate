.class public final Lcom/oplus/aiunit/translation/data/RealtimeInitAsrExpandParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appid:Ljava/lang/String;

.field private isStartAsr:Z

.field private startRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/RealtimeInitAsrExpandParams;->appid:Ljava/lang/String;

    return-object p0
.end method

.method public final getStartRequest()Lcom/oplus/aiunit/translation/data/AsrStartRequest;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/RealtimeInitAsrExpandParams;->startRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest;

    return-object p0
.end method

.method public final isStartAsr()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/translation/data/RealtimeInitAsrExpandParams;->isStartAsr:Z

    return p0
.end method

.method public final setAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/RealtimeInitAsrExpandParams;->appid:Ljava/lang/String;

    return-void
.end method

.method public final setStartAsr(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/translation/data/RealtimeInitAsrExpandParams;->isStartAsr:Z

    return-void
.end method

.method public final setStartRequest(Lcom/oplus/aiunit/translation/data/AsrStartRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/RealtimeInitAsrExpandParams;->startRequest:Lcom/oplus/aiunit/translation/data/AsrStartRequest;

    return-void
.end method

.method public final toJsonString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toJson(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
