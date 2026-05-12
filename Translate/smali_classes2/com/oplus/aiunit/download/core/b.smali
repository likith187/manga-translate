.class public final synthetic Lcom/oplus/aiunit/download/core/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

.field public final synthetic b:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/aiunit/download/core/AIDownloadImpl;Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/download/core/b;->a:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    iput-object p2, p0, Lcom/oplus/aiunit/download/core/b;->b:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/b;->a:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/b;->b:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

    invoke-static {v0, p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->b(Lcom/oplus/aiunit/download/core/AIDownloadImpl;Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;)V

    return-void
.end method
