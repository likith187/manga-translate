.class final Lcom/oplus/aiunit/download/core/AIDownloadImpl$clientHandler$2;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/download/core/AIDownloadImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/s;",
        "Lw8/a;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$clientHandler$2;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/aiunit/download/core/AIDownloadImpl$clientHandler$2$1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$clientHandler$2;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLooper(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/oplus/aiunit/download/core/AIDownloadImpl$clientHandler$2$1;

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$clientHandler$2;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-direct {v1, p0, v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$clientHandler$2$1;-><init>(Lcom/oplus/aiunit/download/core/AIDownloadImpl;Landroid/os/Looper;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$clientHandler$2;->invoke()Lcom/oplus/aiunit/download/core/AIDownloadImpl$clientHandler$2$1;

    move-result-object p0

    return-object p0
.end method
