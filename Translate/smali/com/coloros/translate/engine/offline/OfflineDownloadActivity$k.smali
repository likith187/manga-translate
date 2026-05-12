.class Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

.field f:Landroid/view/View;

.field h:Landroid/widget/RelativeLayout;

.field i:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    sget v0, Lcom/coloros/translate/engine/offline/R$id;->package_item_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->a:Landroid/widget/TextView;

    sget v0, Lcom/coloros/translate/engine/offline/R$id;->package_item_size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->b:Landroid/widget/TextView;

    sget v0, Lcom/coloros/translate/engine/offline/R$id;->btn_download:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    sget v0, Lcom/coloros/translate/engine/offline/R$id;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->f:Landroid/view/View;

    sget v0, Lcom/coloros/translate/engine/offline/R$id;->download_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->h:Landroid/widget/RelativeLayout;

    sget v0, Lcom/coloros/translate/engine/offline/R$id;->rl_item_rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->i:Landroid/widget/RelativeLayout;

    return-void
.end method
