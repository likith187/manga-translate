.class public final Lcom/oplus/aiunit/speech/asr/client/ASRClient$getTranslationConfig$1$run$1;
.super Lcom/oplus/aiunit/core/callback/IAIMessenger$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/speech/asr/client/ASRClient$getTranslationConfig$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

.field public final synthetic b:Lcom/oplus/aiunit/speech/asr/callback/RequestCallback;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;Lcom/oplus/aiunit/speech/asr/callback/RequestCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$getTranslationConfig$1$run$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    iput-object p2, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$getTranslationConfig$1$run$1;->b:Lcom/oplus/aiunit/speech/asr/callback/RequestCallback;

    invoke-direct {p0}, Lcom/oplus/aiunit/core/callback/IAIMessenger$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Lcom/oplus/aiunit/core/FramePackage;)I
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$getTranslationConfig$1$run$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    iget-object p0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$getTranslationConfig$1$run$1;->b:Lcom/oplus/aiunit/speech/asr/callback/RequestCallback;

    invoke-static {v0, p1, p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->access$handleTranslateConfigResult(Lcom/oplus/aiunit/speech/asr/client/ASRClient;Lcom/oplus/aiunit/core/FramePackage;Lcom/oplus/aiunit/speech/asr/callback/RequestCallback;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "IAIMessenger framePackage null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
