.class final Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamProcessCallback;
.super Lcom/oplus/aiunit/core/callback/IProcessCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/antispam/client/AntiSpamClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AntiSpamProcessCallback"
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

    iput-object p1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamProcessCallback;->this$0:Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

    invoke-direct {p0}, Lcom/oplus/aiunit/core/callback/IProcessCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamProcessCallback;->callback:Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 0

    const-string p0, "antispam_process_callback"

    return-object p0
.end method

.method public onCallback(Lcom/oplus/aiunit/core/ParamPackage;)I
    .locals 4

    const-string v0, "AntiSpamClient"

    if-nez p1, :cond_0

    const-string p0, "onCallback: paramPackage is null"

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorProcessFail:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0

    :cond_0
    const-string v1, "custom::antispam_json_result"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/ParamPackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "onCallback: jsonResult is null"

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorProcessFail:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0

    :cond_1
    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamProcessCallback;->this$0:Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallback: jsonResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;->access$getAntiSpamFinalResult(Lcom/oplus/aiunit/antispam/client/AntiSpamClient;Ljava/lang/String;)Lcom/oplus/aiunit/antispam/client/AntiSpamResult;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallback: final result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->getStatus()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorProcessFail:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamProcessCallback;->callback:Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;->onProcess(Lcom/oplus/aiunit/antispam/client/AntiSpamResult;)V

    :cond_4
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0
.end method
