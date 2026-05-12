.class public final Lcom/oplus/aisubsystem/core/client/AiClient$f$a;
.super Lcom/oplus/aiunit/core/callback/IInferenceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aisubsystem/core/client/AiClient$f;->invoke()Lcom/oplus/aisubsystem/core/client/AiClient$f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/aisubsystem/core/client/AiClient;


# direct methods
.method public constructor <init>(Lcom/oplus/aisubsystem/core/client/AiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$f$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-direct {p0}, Lcom/oplus/aiunit/core/callback/IInferenceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInferenceCallback(Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInferenceCallback: oap api = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$f$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-virtual {v1}, Lcom/oplus/aisubsystem/core/client/AiClient;->getOapApi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiClient"

    invoke-static {v1, v0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$f$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {p0, p1}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$onInferenceCallback(Lcom/oplus/aisubsystem/core/client/AiClient;Lcom/oplus/aiunit/core/FramePackage;)V

    :cond_0
    return-void
.end method
