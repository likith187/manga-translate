.class public final Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$initRealtimeAsr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->initRealtimeAsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/translation/callback/AsrRspCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $listener:Lcom/oplus/aiunit/translation/callback/AsrRspCallback;


# direct methods
.method constructor <init>(Lcom/oplus/aiunit/translation/callback/AsrRspCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$initRealtimeAsr$1;->$listener:Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;-><init>()V

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->setCode(I)V

    invoke-virtual {v0, p2}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->setMessage(Ljava/lang/String;)V

    const-string p1, "INIT_ASR_ASK"

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/translation/data/AsrBaseResponse;->setBizType(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$initRealtimeAsr$1;->$listener:Lcom/oplus/aiunit/translation/callback/AsrRspCallback;

    invoke-interface {p0, v0}, Lcom/oplus/aiunit/translation/callback/AsrRspCallback;->onResult(Lcom/oplus/aiunit/translation/data/AsrBaseResponse;)V

    return-void
.end method
