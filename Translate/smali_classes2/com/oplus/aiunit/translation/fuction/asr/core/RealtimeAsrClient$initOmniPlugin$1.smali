.class public final Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$initOmniPlugin$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->initOmniPlugin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;


# direct methods
.method constructor <init>(Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$initOmniPlugin$1;->this$0:Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)V
    .locals 3

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient$initOmniPlugin$1;->this$0:Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;

    invoke-static {p0}, Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;->access$getTAG(Lcom/oplus/aiunit/translation/fuction/asr/core/RealtimeAsrClient;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initOmniPlugin error: ErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", msg = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
