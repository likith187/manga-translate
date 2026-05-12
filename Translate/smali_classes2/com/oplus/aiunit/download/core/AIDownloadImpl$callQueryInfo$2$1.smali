.class final Lcom/oplus/aiunit/download/core/AIDownloadImpl$callQueryInfo$2$1;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/download/core/AIDownloadImpl;->callQueryInfo(Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/s;",
        "Lw8/l;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/aiunit/download/core/AIDownloadImpl$callQueryInfo$2$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$callQueryInfo$2$1;

    invoke-direct {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$callQueryInfo$2$1;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$callQueryInfo$2$1;->INSTANCE:Lcom/oplus/aiunit/download/core/AIDownloadImpl$callQueryInfo$2$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/oplus/aiunit/download/core/ListenerInfo;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/oplus/aiunit/download/core/ListenerInfo;->getCommand()Lcom/oplus/aiunit/download/core/Command;

    move-result-object p0

    sget-object p1, Lcom/oplus/aiunit/download/core/Command;->QUERY:Lcom/oplus/aiunit/download/core/Command;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/oplus/aiunit/download/core/ListenerInfo;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$callQueryInfo$2$1;->invoke(Lcom/oplus/aiunit/download/core/ListenerInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
