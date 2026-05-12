.class public final Lcom/oplus/aiunit/translation/common/BaseClient$processEvent$1$run$messenger$1;
.super Lcom/oplus/aiunit/core/callback/IAIMessenger$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/translation/common/BaseClient$processEvent$1;->run()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic $methods:Ljava/lang/String;

.field final synthetic this$0:Lcom/oplus/aiunit/translation/common/BaseClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/aiunit/translation/common/BaseClient<",
            "TIP;TOP;TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oplus/aiunit/translation/common/BaseClient;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/aiunit/translation/common/BaseClient<",
            "TIP;TOP;TD;>;TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/translation/common/BaseClient$processEvent$1$run$messenger$1;->this$0:Lcom/oplus/aiunit/translation/common/BaseClient;

    iput-object p2, p0, Lcom/oplus/aiunit/translation/common/BaseClient$processEvent$1$run$messenger$1;->$callback:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oplus/aiunit/translation/common/BaseClient$processEvent$1$run$messenger$1;->$methods:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oplus/aiunit/core/callback/IAIMessenger$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Lcom/oplus/aiunit/core/FramePackage;)I
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oplus/aiunit/translation/common/BaseClient$processEvent$1$run$messenger$1;->this$0:Lcom/oplus/aiunit/translation/common/BaseClient;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/common/BaseClient$processEvent$1$run$messenger$1;->$callback:Ljava/lang/Object;

    iget-object v2, p0, Lcom/oplus/aiunit/translation/common/BaseClient$processEvent$1$run$messenger$1;->$methods:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/oplus/aiunit/translation/common/BaseClient;->handleResult(Lcom/oplus/aiunit/core/FramePackage;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/oplus/aiunit/translation/common/BaseClient$processEvent$1$run$messenger$1;->this$0:Lcom/oplus/aiunit/translation/common/BaseClient;

    sget-object p1, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    invoke-static {p0}, Lcom/oplus/aiunit/translation/common/BaseClient;->access$getTAG(Lcom/oplus/aiunit/translation/common/BaseClient;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "IAIMessenger framePackage null"

    invoke-virtual {p1, p0, v0}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
