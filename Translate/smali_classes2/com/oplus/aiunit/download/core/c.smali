.class public final synthetic Lcom/oplus/aiunit/download/core/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/os/IBinder;

.field public final synthetic b:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

.field public final synthetic c:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;Lcom/oplus/aiunit/download/core/AIDownloadImpl;Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/download/core/c;->a:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/oplus/aiunit/download/core/c;->b:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    iput-object p3, p0, Lcom/oplus/aiunit/download/core/c;->c:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/c;->a:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/oplus/aiunit/download/core/c;->b:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/c;->c:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

    invoke-static {v0, v1, p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->a(Landroid/os/IBinder;Lcom/oplus/aiunit/download/core/AIDownloadImpl;Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;)V

    return-void
.end method
