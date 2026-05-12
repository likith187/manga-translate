.class public final Lcom/oplus/aisubsystem/core/client/AiClient$h;
.super Lkotlin/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aisubsystem/core/client/AiClient;->n(Lcom/oplus/aiunit/core/FramePackage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/oplus/aisubsystem/core/client/AiClient;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/z$a;Lcom/oplus/aisubsystem/core/client/AiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/oplus/aisubsystem/core/client/AiClient$h;->b:Lcom/oplus/aisubsystem/core/client/AiClient;

    iput-object p3, p0, Lcom/oplus/aisubsystem/core/client/AiClient$h;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lkotlin/coroutines/a;-><init>(Lkotlin/coroutines/g$c;)V

    return-void
.end method


# virtual methods
.method public b0(Lkotlin/coroutines/g;Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "AiClient"

    const-string v0, "onInferenceCallback"

    invoke-static {p1, v0, p2}, Lz5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$h;->b:Lcom/oplus/aisubsystem/core/client/AiClient;

    iget-object p2, p0, Lcom/oplus/aisubsystem/core/client/AiClient$h;->c:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$h;->c:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$removeFramePackageCache(Lcom/oplus/aisubsystem/core/client/AiClient;Ljava/lang/String;)V

    return-void
.end method
