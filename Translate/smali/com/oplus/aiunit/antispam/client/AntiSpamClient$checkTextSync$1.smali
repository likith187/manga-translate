.class public final Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aisubsystem/core/client/AiClient$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/antispam/client/AntiSpamClient;->checkTextSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oplus/aiunit/antispam/client/AntiSpamCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/aisubsystem/core/client/AiClient$a;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;

.field final synthetic $content:Ljava/lang/String;

.field final synthetic $sample:Z

.field final synthetic $sceneId:Ljava/lang/String;

.field final synthetic $sessionId:Ljava/lang/String;

.field final synthetic this$0:Lcom/oplus/aiunit/antispam/client/AntiSpamClient;


# direct methods
.method constructor <init>(Lcom/oplus/aiunit/antispam/client/AntiSpamClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oplus/aiunit/antispam/client/AntiSpamCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->this$0:Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

    iput-object p2, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->$content:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->$sceneId:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->$sessionId:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->$sample:Z

    iput-object p6, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->$callback:Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkTextSync failure: errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AntiSpamClient"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->$callback:Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->run()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/String;
    .locals 11

    .line 2
    const-string v0, "antispam sdk version = 1001"

    const-string v1, "AntiSpamClient"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->this$0:Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

    invoke-static {v0}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;->access$createInputSlot(Lcom/oplus/aiunit/antispam/client/AntiSpamClient;)Lcom/oplus/aiunit/core/base/FrameInputSlot;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->this$0:Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

    invoke-static {v2}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;->access$createOutputSlot(Lcom/oplus/aiunit/antispam/client/AntiSpamClient;)Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    move-result-object v2

    .line 5
    sget-object v3, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest;->Companion:Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Companion;

    iget-object v3, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->$content:Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->$sceneId:Ljava/lang/String;

    iget-object v5, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->$sessionId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->$sample:Z

    iget-object v7, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->this$0:Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

    iget-object v8, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->$callback:Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;

    .line 6
    new-instance v9, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;

    invoke-direct {v9}, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;-><init>()V

    .line 7
    const-string v10, "method_check_text"

    invoke-virtual {v9, v10}, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;->setMethod(Ljava/lang/String;)Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;

    .line 8
    invoke-virtual {v9, v3}, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;->setContent(Ljava/lang/String;)Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;

    .line 9
    invoke-virtual {v9, v4}, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;->setSceneId(Ljava/lang/String;)Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;

    .line 10
    invoke-virtual {v9, v5}, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;->setSessionId(Ljava/lang/String;)Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;

    .line 11
    invoke-virtual {v9, v6}, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;->setSample(Z)Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;

    .line 12
    const-string v3, "1001"

    invoke-virtual {v9, v3}, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;->setSDKVersionNo(Ljava/lang/String;)Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;

    .line 13
    const-string v3, "AISDK"

    invoke-virtual {v9, v3}, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;->setSDKType(Ljava/lang/String;)Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;

    .line 14
    new-instance v3, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamProcessCallback;

    invoke-direct {v3, v7, v8}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamProcessCallback;-><init>(Lcom/oplus/aiunit/antispam/client/AntiSpamClient;Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;)V

    invoke-virtual {v9, v3}, Lcom/oplus/aisubsystem/core/client/a$b;->addProcessCallback(Lcom/oplus/aiunit/core/callback/IProcessCallback;)Lcom/oplus/aisubsystem/core/client/a$b;

    .line 15
    new-instance v3, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamFinishCallback;

    invoke-direct {v3, v7, v8}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$AntiSpamFinishCallback;-><init>(Lcom/oplus/aiunit/antispam/client/AntiSpamClient;Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;)V

    invoke-virtual {v9, v3}, Lcom/oplus/aisubsystem/core/client/a$b;->setInferenceCallback(Lcom/oplus/aiunit/core/callback/IInferenceCallback;)Lcom/oplus/aisubsystem/core/client/a$b;

    .line 16
    invoke-virtual {v9}, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;->build()Lcom/oplus/aiunit/antispam/client/AntiSpamRequest;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lcom/oplus/aisubsystem/core/client/a;->getFramePackage()Lcom/oplus/aiunit/core/FramePackage;

    move-result-object v3

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run: content = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->$content:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", sceneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->$sceneId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->this$0:Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

    invoke-virtual {v1, v0, v2, v3}, Lcom/oplus/aisubsystem/core/client/AiClient;->infer(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;)V

    .line 20
    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$checkTextSync$1;->$sessionId:Ljava/lang/String;

    return-object p0
.end method
