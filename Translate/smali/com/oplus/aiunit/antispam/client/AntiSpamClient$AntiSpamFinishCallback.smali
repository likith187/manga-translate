.class final Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamFinishCallback;
.super Lcom/oplus/aiunit/core/callback/IInferenceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/antispam/client/AntiSpamClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AntiSpamFinishCallback"
.end annotation


# instance fields
.field private final callback:Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;

.field final synthetic this$0:Lcom/oplus/aiunit/antispam/client/AntiSpamClient;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/antispam/client/AntiSpamClient;Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamFinishCallback;->this$0:Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

    invoke-direct {p0}, Lcom/oplus/aiunit/core/callback/IInferenceCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamFinishCallback;->callback:Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;

    return-void
.end method

.method private final onInferenceFailure(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInferenceFailure: err = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AntiSpamClient"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamFinishCallback;->callback:Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final onInferenceSuccess(Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 3

    const-string v0, "custom::antispam_json_result"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInferenceSuccess: jsonResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AntiSpamClient"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamFinishCallback;->this$0:Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;->access$getAntiSpamFinalResult(Lcom/oplus/aiunit/antispam/client/AntiSpamClient;Ljava/lang/String;)Lcom/oplus/aiunit/antispam/client/AntiSpamResult;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInferenceSuccess: final result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->getStatus()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamFinishCallback;->callback:Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;

    if-eqz p0, :cond_1

    sget-object p1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorProcessFail:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p1

    const-string v0, "AntiSpamResult is null"

    invoke-interface {p0, p1, v0}, Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;->onFailure(ILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamFinishCallback;->callback:Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;->onSuccess(Lcom/oplus/aiunit/antispam/client/AntiSpamResult;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onInferenceCallback(Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorProcessFail:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p1

    const-string v0, "framePackage is null"

    invoke-direct {p0, p1, v0}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamFinishCallback;->onInferenceFailure(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getIntErrorCode()I

    move-result v0

    sget-object v1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamFinishCallback;->onInferenceSuccess(Lcom/oplus/aiunit/core/FramePackage;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamFinishCallback;->onInferenceFailure(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
