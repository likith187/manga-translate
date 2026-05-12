.class public final Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$processEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aisubsystem/core/client/DynamicAiClient$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;->processEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/aisubsystem/core/client/DynamicAiClient$Action<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic $listener:Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;

.field final synthetic $methods:Ljava/lang/String;

.field final synthetic $request:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;


# direct methods
.method constructor <init>(Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;",
            "TT;TT;",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$processEvent$1;->this$0:Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;

    iput-object p2, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$processEvent$1;->$request:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$processEvent$1;->$callback:Ljava/lang/Object;

    iput-object p4, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$processEvent$1;->$methods:Ljava/lang/String;

    iput-object p5, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$processEvent$1;->$listener:Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$processEvent$1;->failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$processEvent$1;->$listener:Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;->onError(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$processEvent$1;->run()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/String;
    .locals 4

    .line 2
    new-instance v0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$processEvent$1$run$messenger$1;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$processEvent$1;->this$0:Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;

    iget-object v2, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$processEvent$1;->$callback:Ljava/lang/Object;

    iget-object v3, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$processEvent$1;->$methods:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$processEvent$1$run$messenger$1;-><init>(Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$processEvent$1;->this$0:Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;

    iget-object v2, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$processEvent$1;->$request:Ljava/lang/Object;

    iget-object v3, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$processEvent$1;->$callback:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$processEvent$1;->$methods:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p0, v0}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;->handleInput(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/core/callback/IAIMessenger;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
