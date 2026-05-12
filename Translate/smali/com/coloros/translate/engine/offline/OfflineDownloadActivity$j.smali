.class Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    sget v0, Lcom/coloros/translate/engine/offline/R$id;->package_item_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;->a:Landroid/widget/TextView;

    sget v0, Lcom/coloros/translate/engine/offline/R$id;->package_item_size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;->b:Landroid/widget/TextView;

    sget v0, Lcom/coloros/translate/engine/offline/R$id;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;->c:Landroid/view/View;

    return-void
.end method
