.class public final Lcom/oplus/aisubsystem/core/client/AiClient$c;
.super Lcom/oplus/aiunit/core/callback/IProcessCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aisubsystem/core/client/AiClient;->b(Lcom/oplus/aiunit/core/base/FrameInputSlot;)Lcom/oplus/aiunit/core/FramePackage;
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

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$c;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-direct {p0}, Lcom/oplus/aiunit/core/callback/IProcessCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 0

    const-string p0, "process_cancel_callback"

    return-object p0
.end method

.method public onCallback(Lcom/oplus/aiunit/core/ParamPackage;)I
    .locals 2

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$c;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isStopped$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process cancelling: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiClient"

    invoke-static {v1, v0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "package::process_cancelling"

    invoke-virtual {p1, v0, p0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
