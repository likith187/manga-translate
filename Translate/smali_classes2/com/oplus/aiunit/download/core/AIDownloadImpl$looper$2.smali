.class final Lcom/oplus/aiunit/download/core/AIDownloadImpl$looper$2;
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


# static fields
.field public static final INSTANCE:Lcom/oplus/aiunit/download/core/AIDownloadImpl$looper$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$looper$2;

    invoke-direct {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$looper$2;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$looper$2;->INSTANCE:Lcom/oplus/aiunit/download/core/AIDownloadImpl$looper$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/os/Looper;
    .locals 1

    .line 1
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "AI_Download_Client"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$looper$2;->invoke()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method
