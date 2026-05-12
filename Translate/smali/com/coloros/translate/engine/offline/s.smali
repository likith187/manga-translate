.class public final synthetic Lcom/coloros/translate/engine/offline/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/coloros/translate/engine/offline/f0;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;Landroid/view/View;Lcom/coloros/translate/engine/offline/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/s;->a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    iput-object p2, p0, Lcom/coloros/translate/engine/offline/s;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/coloros/translate/engine/offline/s;->c:Lcom/coloros/translate/engine/offline/f0;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/s;->a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/s;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/s;->c:Lcom/coloros/translate/engine/offline/f0;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->f(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;Landroid/view/View;Lcom/coloros/translate/engine/offline/f0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
