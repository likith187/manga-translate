.class Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;->b(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g$a;->a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .locals 1

    const-string p0, "OfflineDownloadActivity"

    const-string v0, "onWindowAttached"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowDetached()V
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g$a;->a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;->a(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;Landroid/content/DialogInterface$OnClickListener;)V

    const-string p0, "OfflineDownloadActivity"

    const-string v0, "onWindowDetached"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
