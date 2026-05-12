.class final Lcom/oplus/aisubsystem/core/client/AiClient$i;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aisubsystem/core/client/AiClient;->n(Lcom/oplus/aiunit/core/FramePackage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $framePackage:Lcom/oplus/aiunit/core/FramePackage;

.field final synthetic $requestId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/oplus/aisubsystem/core/client/AiClient;


# direct methods
.method public constructor <init>(Lcom/oplus/aisubsystem/core/client/AiClient;Ljava/lang/String;Lcom/oplus/aiunit/core/FramePackage;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/aisubsystem/core/client/AiClient;",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/core/FramePackage;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$i;->this$0:Lcom/oplus/aisubsystem/core/client/AiClient;

    iput-object p2, p0, Lcom/oplus/aisubsystem/core/client/AiClient$i;->$requestId:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/aisubsystem/core/client/AiClient$i;->$framePackage:Lcom/oplus/aiunit/core/FramePackage;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance p1, Lcom/oplus/aisubsystem/core/client/AiClient$i;

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$i;->this$0:Lcom/oplus/aisubsystem/core/client/AiClient;

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$i;->$requestId:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$i;->$framePackage:Lcom/oplus/aiunit/core/FramePackage;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/oplus/aisubsystem/core/client/AiClient$i;-><init>(Lcom/oplus/aisubsystem/core/client/AiClient;Ljava/lang/String;Lcom/oplus/aiunit/core/FramePackage;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aisubsystem/core/client/AiClient$i;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/c0;",
            "Lkotlin/coroutines/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aisubsystem/core/client/AiClient$i;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/aisubsystem/core/client/AiClient$i;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/oplus/aisubsystem/core/client/AiClient$i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$i;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$i;->this$0:Lcom/oplus/aisubsystem/core/client/AiClient;

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$i;->$requestId:Ljava/lang/String;

    const-string v1, "$requestId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$getClientInferenceCallback(Lcom/oplus/aisubsystem/core/client/AiClient;Ljava/lang/String;)Lcom/oplus/aiunit/core/callback/IInferenceCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$i;->$framePackage:Lcom/oplus/aiunit/core/FramePackage;

    invoke-interface {p1, v0}, Lcom/oplus/aiunit/core/callback/IInferenceCallback;->onInferenceCallback(Lcom/oplus/aiunit/core/FramePackage;)V

    :cond_0
    iget-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$i;->$framePackage:Lcom/oplus/aiunit/core/FramePackage;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getIntErrorCode()I

    move-result p1

    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorBusy:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v0

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onInferenceCallback: errCode="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", removeFramePackageCache="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$i;->$requestId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AiClient"

    invoke-static {v0, p1}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$i;->this$0:Lcom/oplus/aisubsystem/core/client/AiClient;

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$i;->$requestId:Ljava/lang/String;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$removeFramePackageCache(Lcom/oplus/aisubsystem/core/client/AiClient;Ljava/lang/String;)V

    :cond_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
