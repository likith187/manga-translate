.class public final synthetic Lcom/coloros/translate/engine/offline/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

.field public final synthetic b:Lcom/coloros/translate/engine/offline/f0;

.field public final synthetic c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;Lcom/coloros/translate/engine/offline/f0;Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/q;->a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    iput-object p2, p0, Lcom/coloros/translate/engine/offline/q;->b:Lcom/coloros/translate/engine/offline/f0;

    iput-object p3, p0, Lcom/coloros/translate/engine/offline/q;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;

    iput p4, p0, Lcom/coloros/translate/engine/offline/q;->f:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/q;->a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/q;->b:Lcom/coloros/translate/engine/offline/f0;

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/q;->c:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;

    iget p0, p0, Lcom/coloros/translate/engine/offline/q;->f:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->g(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;Lcom/coloros/translate/engine/offline/f0;Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method
