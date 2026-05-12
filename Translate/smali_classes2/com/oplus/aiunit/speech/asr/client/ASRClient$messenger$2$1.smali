.class public final Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2$1;
.super Lcom/oplus/aiunit/core/callback/IAIMessenger$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2;->invoke()Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/speech/asr/client/ASRClient;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-direct {p0}, Lcom/oplus/aiunit/core/callback/IAIMessenger$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Lcom/oplus/aiunit/core/FramePackage;)I
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0

    :cond_1
    const-string v0, "asr_status"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-static {v1}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->access$getTAG(Lcom/oplus/aiunit/speech/asr/client/ASRClient;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on Send, status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "asr_cache"

    const-string v2, "asr_result"

    const-string v3, "getParamStr(...)"

    if-eqz v0, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-virtual {p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->getFileASRExternalCallback()Lcom/oplus/aiunit/speech/asr/client/ASRClient$FileASRExternalCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p1

    const-string v0, "asr_remain_count"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$FileASRExternalCallback;->onRemainCount(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-virtual {p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->getFileASRExternalCallback()Lcom/oplus/aiunit/speech/asr/client/ASRClient$FileASRExternalCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v0

    const-string v1, "asr_file_status"

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/core/ParamPackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p1

    const-string v1, "asr_file_message"

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/ParamPackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0, p1}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$FileASRExternalCallback;->onFileDealStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-virtual {p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->getFileASRExternalCallback()Lcom/oplus/aiunit/speech/asr/client/ASRClient$FileASRExternalCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$FileASRExternalCallback;->onFileHeart()V

    goto/16 :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-virtual {p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->getAsrExternalCallback()Lcom/oplus/aiunit/speech/asr/client/ASRClient$ASRExternalCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$ASRExternalCallback;->dropOfflineData()V

    goto/16 :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-virtual {p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->getAsrExternalCallback()Lcom/oplus/aiunit/speech/asr/client/ASRClient$ASRExternalCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, v2}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/ParamPackage;->getParamBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, v0, v2, p1}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$ASRExternalCallback;->onHistory(ILjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    iget-object p0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    invoke-virtual {p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->getAsrExternalCallback()Lcom/oplus/aiunit/speech/asr/client/ASRClient$ASRExternalCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "asr_task_complete_result"

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$ASRExternalCallback;->taskComplete(I)V

    goto/16 :goto_0

    :cond_3
    const-string v4, "asr_result_type"

    invoke-virtual {p1, v4}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "asr_result_file"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    iget-object p0, p0, Lcom/oplus/aiunit/speech/asr/client/ASRClient$messenger$2$1;->a:Lcom/oplus/aiunit/speech/asr/client/ASRClient;

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->getFileASRExternalCallback()Lcom/oplus/aiunit/speech/asr/client/ASRClient$FileASRExternalCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, v2}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$FileASRExternalCallback;->onFileResult(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/oplus/aiunit/speech/asr/client/ASRClient;->getAsrExternalCallback()Lcom/oplus/aiunit/speech/asr/client/ASRClient$ASRExternalCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, v2}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/ParamPackage;->getParamBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, v0, v2, p1}, Lcom/oplus/aiunit/speech/asr/client/ASRClient$ASRExternalCallback;->onResult(ILjava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
