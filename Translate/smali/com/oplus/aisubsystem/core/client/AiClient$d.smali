.class final Lcom/oplus/aisubsystem/core/client/AiClient$d;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aisubsystem/core/client/AiClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aisubsystem/core/client/AiSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/aisubsystem/core/client/AiClient;


# direct methods
.method public constructor <init>(Lcom/oplus/aisubsystem/core/client/AiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d;->this$0:Lcom/oplus/aisubsystem/core/client/AiClient;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/aisubsystem/core/client/AiClient$d$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d;->this$0:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-virtual {v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->getOapApi()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d;->this$0:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-direct {v1, p0, v0}, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;-><init>(Lcom/oplus/aisubsystem/core/client/AiClient;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/oplus/aisubsystem/core/client/AiClient$d;->invoke()Lcom/oplus/aisubsystem/core/client/AiClient$d$a;

    move-result-object p0

    return-object p0
.end method
