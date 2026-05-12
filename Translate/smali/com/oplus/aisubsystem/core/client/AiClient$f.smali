.class final Lcom/oplus/aisubsystem/core/client/AiClient$f;
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

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$f;->this$0:Lcom/oplus/aisubsystem/core/client/AiClient;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/aisubsystem/core/client/AiClient$f$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/oplus/aisubsystem/core/client/AiClient$f$a;

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$f;->this$0:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-direct {v0, p0}, Lcom/oplus/aisubsystem/core/client/AiClient$f$a;-><init>(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/oplus/aisubsystem/core/client/AiClient$f;->invoke()Lcom/oplus/aisubsystem/core/client/AiClient$f$a;

    move-result-object p0

    return-object p0
.end method
