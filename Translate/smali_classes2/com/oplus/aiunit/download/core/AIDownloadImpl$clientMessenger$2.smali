.class final Lcom/oplus/aiunit/download/core/AIDownloadImpl$clientMessenger$2;
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

    iput-object p1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$clientMessenger$2;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/os/Messenger;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Messenger;

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$clientMessenger$2;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getClientHandler(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$clientMessenger$2;->invoke()Landroid/os/Messenger;

    move-result-object p0

    return-object p0
.end method
