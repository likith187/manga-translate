.class public final Lcom/coloros/translate/engine/asr/voicetranslate/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/translation/callback/AsrRspCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/asr/voicetranslate/c;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/coloros/translate/engine/asr/voicetranslate/c;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/asr/voicetranslate/c;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lw8/a;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->f(Lw8/a;)V

    return-void
.end method

.method public static synthetic b(Lw8/a;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->e(Lw8/a;)V

    return-void
.end method

.method private final d(Lcom/oplus/aiunit/translation/data/AsrBaseResponse;)V
    .locals 11

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_NET_CONNECTED:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "]"

    const-string v4, ", "

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->f(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v5

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onResponseResult, ws socket connect must start asr task: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->g(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Lcom/coloros/translate/utils/v0;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->n(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Lw8/a;

    move-result-object v1

    new-instance v5, Lcom/coloros/translate/engine/asr/voicetranslate/e;

    invoke-direct {v5, v1}, Lcom/coloros/translate/engine/asr/voicetranslate/e;-><init>(Lw8/a;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v5, v6, v7}, Lcom/coloros/translate/utils/v0;->d(Ljava/lang/Runnable;J)V

    :cond_0
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getBizType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INIT_ASR_ASK"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v0

    sget-object v1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNoInternet:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->f(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v5

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onResponseResult, init asr error origin: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getBizType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "START_ASK"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->f(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResponseResult, start asr success origin: ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getBizType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "END_ASK"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v5

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResponseResult, stop asr success origin: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->f(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getBizType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SERVER_END_ASK"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->p(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Z

    move-result v0

    const-string v1, " in AiUnit, origin: ["

    const/4 v5, 0x2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    sget-object v6, Lcom/coloros/translate/utils/k;->ASR_SERVICE_END_TASK:Lcom/coloros/translate/utils/k;

    invoke-virtual {v6}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v7

    invoke-virtual {v6}, Lcom/coloros/translate/utils/k;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v8

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v7, v6}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->r(Lcom/coloros/translate/engine/asr/voicetranslate/c;IILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->f(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "onResponseResult, auto stop asr success reject"

    invoke-virtual {p1, p0, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v6, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v6}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "onResponseResult, auto stop asr success"

    invoke-virtual {v0, v6, v7}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->f(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    sget-object v0, Lcom/coloros/translate/utils/k;->ASR_SERVICE_END_TASK:Lcom/coloros/translate/utils/k;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/coloros/translate/utils/k;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v6

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v5, v2, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->r(Lcom/coloros/translate/engine/asr/voicetranslate/c;IILjava/lang/String;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->A(ILjava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_INIT_SUCCESS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResponseResult, ws socket on open success: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {p1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->g(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Lcom/coloros/translate/utils/v0;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->n(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Lw8/a;

    move-result-object p0

    new-instance v1, Lcom/coloros/translate/engine/asr/voicetranslate/f;

    invoke-direct {v1, p0}, Lcom/coloros/translate/engine/asr/voicetranslate/f;-><init>(Lw8/a;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/utils/v0;->e(Lcom/coloros/translate/utils/v0;Ljava/lang/Runnable;JILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method private static final e(Lw8/a;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final f(Lw8/a;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->a:Z

    return-void
.end method

.method public onAsr(Lcom/oplus/aiunit/translation/data/AsrAudioAck;)V
    .locals 10

    const-string v0, "ackMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/c0$a;->l()Z

    move-result v1

    const-string v2, " type:"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrAudioAck;->getStartOffset()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrAudioAck;->getEndOffset()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrAudioAck;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrAudioAck;->getType()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onAsr,  startOffset:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " endOffset:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " src:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrAudioAck;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FINAL"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "abandon final msg"

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrAudioAck;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->q(Lcom/coloros/translate/engine/asr/voicetranslate/c;Ljava/lang/String;)Z

    move-result v1

    iget-object v3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v3}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrAudioAck;->getMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrAudioAck;->getLid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrAudioAck;->getType()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onAsr,  isEnd:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "  msgId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " lid:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->a:Z

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onAsr, reject dispose"

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v2}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->j(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v2}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onAsr, reject no hasStartAsr"

    invoke-virtual {v0, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrAudioAck;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->e(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Lx1/p;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v9, Lcom/coloros/translate/engine/info/AsrResult;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/coloros/translate/engine/info/AsrResult;-><init>(Ljava/lang/String;IILandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrAudioAck;->getMsgId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_5
    move v2, v3

    :goto_0
    invoke-virtual {v9, v2}, Lcom/coloros/translate/engine/info/AsrResult;->f(I)V

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    goto :goto_1

    :cond_6
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v9, v1}, Lcom/coloros/translate/engine/info/AsrResult;->g(I)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrAudioAck;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, ""

    :cond_7
    invoke-virtual {v9, v1}, Lcom/coloros/translate/engine/info/AsrResult;->h(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "recordId"

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrAudioAck;->getRecordId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrAudioAck;->getStartOffset()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_8
    move v2, v3

    :goto_2
    const-string v4, "startOffset"

    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrAudioAck;->getEndOffset()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_9
    const-string v2, "endOffset"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrAudioAck;->getLid()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->l(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object p1

    :cond_a
    const-string p0, "asr_language"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Lcom/coloros/translate/engine/info/AsrResult;->e(Landroid/os/Bundle;)V

    invoke-interface {v0, v9}, Lx1/p;->onRtasrResult(Lcom/coloros/translate/engine/info/AsrResult;)V

    :cond_b
    return-void

    :cond_c
    :goto_3
    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->e(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Lx1/p;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lx1/p;->d()V

    :cond_d
    return-void
.end method

.method public onMt(Lcom/oplus/aiunit/translation/data/AsrMtAck;)V
    .locals 11

    const-string v0, "ackMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/c0$a;->l()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrMtAck;->getSrcText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrMtAck;->getTargetText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrMtAck;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrMtAck;->getExtend()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {v6}, Lcom/coloros/translate/utils/b0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMt srcText : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , targetText : "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , type : "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , extend : "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrMtAck;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FINAL"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "abandon final msg"

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrMtAck;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->q(Lcom/coloros/translate/engine/asr/voicetranslate/c;Ljava/lang/String;)Z

    move-result v1

    iget-object v3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v3}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrMtAck;->getMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrMtAck;->getSrcLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrMtAck;->getTargetLanguge()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMt, isEnd:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " msgId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " src:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " target:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->a:Z

    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onMt, reject dispose"

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v3}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->j(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v3}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onMt, reject no hasStartAsr"

    invoke-virtual {v0, v3, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->e(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Lx1/p;

    move-result-object v0

    if-eqz v0, :cond_d

    new-instance v10, Lcom/coloros/translate/engine/info/AsrTranslateResult;

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/coloros/translate/engine/info/AsrTranslateResult;-><init>(Ljava/lang/String;IILandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrMtAck;->getMsgId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v10, v3}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->f(I)V

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    goto :goto_2

    :cond_6
    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v10, v1}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->h(I)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrMtAck;->getTargetText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, ""

    :cond_7
    invoke-virtual {v10, v1}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->g(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "recordId"

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrMtAck;->getRecordId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrMtAck;->getSrcLanguage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->l(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object v3

    :cond_8
    const-string v4, "asr_language"

    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrMtAck;->getTargetLanguge()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->m(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object v3

    :cond_9
    const-string p0, "translate_language"

    invoke-virtual {v1, p0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrMtAck;->getExtend()Ljava/util/Map;

    move-result-object p0

    const-string v3, "is_content_safe"

    if-eqz p0, :cond_a

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    :cond_a
    move-object p0, v2

    :goto_3
    if-eqz p0, :cond_c

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrMtAck;->getExtend()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_b
    const-string p0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string p1, "translate_is_safe"

    invoke-virtual {v1, p1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c
    invoke-virtual {v10, v1}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->e(Landroid/os/Bundle;)V

    invoke-interface {v0, v10}, Lx1/p;->onTranslateResult(Lcom/coloros/translate/engine/info/AsrTranslateResult;)V

    :cond_d
    return-void
.end method

.method public onResult(Lcom/oplus/aiunit/translation/data/AsrBaseResponse;)V
    .locals 8

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/coloros/translate/utils/b0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResponseResult,  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->a:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onResponseResult, reject dispose"

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getBizType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASR_ASK"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "]"

    const-string v3, ", "

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResponseResult, asr task reject origin: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->k(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->k(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getBizType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "START_ASK"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->f(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResponseResult, start asr success origin: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DOUBAO_TONGCHUAN_02"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v4}, Lcom/coloros/translate/utils/q;->b(Z)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/coloros/translate/utils/q;->b(Z)V

    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->j(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v1

    sget-object v2, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_INIT_SUCCESS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v2

    if-eq v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v1

    sget-object v2, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_INIT_ERROR:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v2

    if-eq v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v1

    sget-object v2, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNoInternet:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v2}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v2

    if-eq v1, v2, :cond_4

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onResponseResult, reject no hasStartAsr"

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getBizType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUDIO"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->getCode()I

    move-result v1

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_5

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onResponseResult, audio channel not found"

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->d(Lcom/oplus/aiunit/translation/data/AsrBaseResponse;)V

    return-void
.end method

.method public onTts(Lcom/oplus/aiunit/translation/data/AsrTtsAck;)V
    .locals 8

    const-string v0, "ackMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onTts"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/translate/utils/t;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "simultaneous_auto_play"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->f(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->i(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Lcom/coloros/translate/engine/tts/k;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    new-instance v1, Lcom/coloros/translate/engine/tts/k;

    iget-object v2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {v2}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->h(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coloros/translate/engine/tts/k;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->s(Lcom/coloros/translate/engine/asr/voicetranslate/c;Lcom/coloros/translate/engine/tts/k;)V

    :cond_1
    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->getPayload()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw9/a;->n(Ljava/lang/String;)[B

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->i(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Lcom/coloros/translate/engine/tts/k;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/data/AsrTtsAck;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/engine/tts/k;->h([BLjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "don\'t play tts"

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public taskComplete(I)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$c;->b:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->o(Lcom/coloros/translate/engine/asr/voicetranslate/c;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskComplete, errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
