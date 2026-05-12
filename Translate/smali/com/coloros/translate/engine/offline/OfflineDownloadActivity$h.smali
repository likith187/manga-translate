.class Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field final synthetic b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic f(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;Landroid/view/View;Lcom/coloros/translate/engine/offline/f0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->r(Landroid/view/View;Lcom/coloros/translate/engine/offline/f0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic g(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;Lcom/coloros/translate/engine/offline/f0;Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->s(Lcom/coloros/translate/engine/offline/f0;Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->q(Landroid/view/View;)V

    return-void
.end method

.method private j(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;I)V
    .locals 6

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/engine/offline/f0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder packageData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OfflineDownloadActivity"

    invoke-static {v2, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    iget v4, v0, Lcom/coloros/translate/engine/offline/f0;->f:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/coloros/translate/engine/offline/f;->INSTANCE:Lcom/coloros/translate/engine/offline/f;

    iget-object v3, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v3}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->n0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coloros/translate/engine/offline/f;->a(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;->a:Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    const v4, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->m0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coui/appcompat/unitconversionutil/COUIUnitConversionUtils;

    move-result-object v1

    iget-wide v3, v0, Lcom/coloros/translate/engine/offline/f0;->l:J

    invoke-virtual {v1, v3, v4}, Lcom/coui/appcompat/unitconversionutil/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindViewHolder packageData.mTotalBytes : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/coloros/translate/engine/offline/f0;->l:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "30 MB"

    :goto_0
    iget-object v2, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p2, v1, :cond_1

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;->c:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    sget v1, Lcom/coloros/translate/engine/offline/R$drawable;->selector_item_all:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v1, v4}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->D0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;F)I

    move-result v1

    iget-object v5, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v5, v3}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->D0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;F)I

    move-result v3

    iget-object v5, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v5, v4}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->D0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;F)I

    move-result v4

    invoke-virtual {p2, v1, v3, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    if-ne p2, v5, :cond_3

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    sget v3, Lcom/coloros/translate/engine/offline/R$drawable;->selector_item_up:I

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v3, v4}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->D0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;F)I

    move-result v3

    iget-object v5, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v5, v1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->D0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;F)I

    move-result v1

    iget-object v5, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v5, v4}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->D0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;F)I

    move-result v4

    invoke-virtual {p2, v3, v1, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v5}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne p2, v5, :cond_4

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    sget v3, Lcom/coloros/translate/engine/offline/R$drawable;->selector_item_down:I

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v3, v4}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->D0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;F)I

    move-result v3

    iget-object v5, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v5, v4}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->D0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;F)I

    move-result v4

    iget-object v5, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v5, v1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->D0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;F)I

    move-result v1

    invoke-virtual {p2, v3, v2, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_4
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    sget v1, Lcom/coloros/translate/engine/offline/R$drawable;->selector_item:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v1, v4}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->D0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;F)I

    move-result v1

    iget-object v5, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v5, v3}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->D0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;F)I

    move-result v3

    iget-object v5, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v5, v4}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->D0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;F)I

    move-result v4

    invoke-virtual {p2, v1, v3, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/coloros/translate/engine/offline/q;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/coloros/translate/engine/offline/q;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;Lcom/coloros/translate/engine/offline/f0;Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private k(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configureViewHolder position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineDownloadActivity"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->w0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/engine/offline/f0;

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->u0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v0, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    iget v4, v0, Lcom/coloros/translate/engine/offline/f0;->f:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/coloros/translate/engine/offline/f;->INSTANCE:Lcom/coloros/translate/engine/offline/f;

    iget-object v3, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v3}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->n0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coloros/translate/engine/offline/f;->a(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->a:Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    const v4, 0x3f99999a    # 1.2f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :try_start_0
    iget-object v2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->m0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coui/appcompat/unitconversionutil/COUIUnitConversionUtils;

    move-result-object v2

    iget-wide v4, v0, Lcom/coloros/translate/engine/offline/f0;->l:J

    invoke-virtual {v2, v4, v5}, Lcom/coui/appcompat/unitconversionutil/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configureViewHolder packageData.mTotalBytes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/coloros/translate/engine/offline/f0;->l:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "30 MB"

    :goto_0
    invoke-direct {p0, p1, v0, v2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->v(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;Lcom/coloros/translate/engine/offline/f0;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    new-instance v5, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;

    iget-object v6, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-direct {v5, v6, p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$i;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configureViewHolder packageData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    sget-object v4, Lcom/coloros/translate/engine/offline/f0$a;->NOEXIST:Lcom/coloros/translate/engine/offline/f0$a;

    if-ne v1, v4, :cond_2

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    iget-object v4, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v4}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setText(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setProgress(I)V

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    iget-boolean v0, v0, Lcom/coloros/translate/engine/offline/f0;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->b:Landroid/widget/TextView;

    sget v1, Lcom/coloros/translate/engine/offline/R$string;->eto_resource_built_in:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_2
    sget-object v2, Lcom/coloros/translate/engine/offline/f0$a;->PENDING:Lcom/coloros/translate/engine/offline/f0$a;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->q0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/coloros/translate/engine/offline/f0;->e()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/offline/f0;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setProgress(I)V

    :cond_3
    iget-object v0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    sget-object v2, Lcom/coloros/translate/engine/offline/f0$a;->DOWNLOADING:Lcom/coloros/translate/engine/offline/f0$a;

    if-ne v1, v2, :cond_5

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/offline/f0;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setProgress(I)V

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/coloros/translate/engine/offline/f0;->e()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    sget-object v2, Lcom/coloros/translate/engine/offline/f0$a;->DOWNLOADFIALED:Lcom/coloros/translate/engine/offline/f0$a;

    if-eq v1, v2, :cond_a

    sget-object v2, Lcom/coloros/translate/engine/offline/f0$a;->PAUSE:Lcom/coloros/translate/engine/offline/f0$a;

    if-ne v1, v2, :cond_6

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/coloros/translate/engine/offline/f0$a;->COMPRESSING:Lcom/coloros/translate/engine/offline/f0$a;

    if-ne v1, v2, :cond_7

    iget-object v0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const-string v1, "100%"

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object v2, Lcom/coloros/translate/engine/offline/f0$a;->COMPRESSED:Lcom/coloros/translate/engine/offline/f0$a;

    const/4 v3, 0x4

    if-ne v1, v2, :cond_8

    iget-object v0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->b:Landroid/widget/TextView;

    sget v1, Lcom/coloros/translate/engine/offline/R$string;->download_Complete:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_8
    sget-object v2, Lcom/coloros/translate/engine/offline/f0$a;->NEEDUPDATE:Lcom/coloros/translate/engine/offline/f0$a;

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->r0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/y;

    move-result-object v1

    iget-object v0, v0, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/coloros/translate/engine/offline/y;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->b:Landroid/widget/TextView;

    sget v1, Lcom/coloros/translate/engine/offline/R$string;->download_Complete:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_9
    iget-object v0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->v0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    :goto_1
    iget-object v1, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/offline/f0;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setProgress(I)V

    iget-object v0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->y0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setText(Ljava/lang/String;)V

    :cond_b
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->p(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;I)V

    return-void
.end method

.method private p(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;I)V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->w0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_0

    iget-object v0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->f:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->w0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    sget v1, Lcom/coloros/translate/engine/offline/R$drawable;->bg_item_all_round:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->D0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;F)I

    move-result p0

    invoke-virtual {p1, v2, p0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-nez p2, :cond_2

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    sget v3, Lcom/coloros/translate/engine/offline/R$drawable;->bg_item_up:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0, v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->D0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;F)I

    move-result p0

    invoke-virtual {p1, v2, p0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v3}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->w0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne p2, v3, :cond_3

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    sget v3, Lcom/coloros/translate/engine/offline/R$drawable;->bg_item_down:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0, v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->D0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;F)I

    move-result p0

    invoke-virtual {p1, v2, v2, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    sget v0, Lcom/coloros/translate/engine/offline/R$drawable;->bg_item_normal:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method private static synthetic q(Landroid/view/View;)V
    .locals 2

    const-string v0, "OfflineDownloadActivity"

    const-string v1, "configureDownloadHolder popupListWindow setOnDismissListener"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private synthetic r(Landroid/view/View;Lcom/coloros/translate/engine/offline/f0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p3, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p3}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->x0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object p3

    invoke-virtual {p3}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0, p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->I0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Lcom/coloros/translate/engine/offline/f0;)V

    return-void
.end method

.method private synthetic s(Lcom/coloros/translate/engine/offline/f0;Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;ILandroid/view/View;)Z
    .locals 3

    const-string v0, "OfflineDownloadActivity"

    const-string v1, "configureDownloadHolder setOnLongClickListener"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->x0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    new-instance v1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->n0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->z0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->C0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->x0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setItemList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->x0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->setDismissTouchOutside(Z)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->x0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object v0

    new-instance v2, Lcom/coloros/translate/engine/offline/r;

    invoke-direct {v2, p4}, Lcom/coloros/translate/engine/offline/r;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->x0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object v0

    new-instance v2, Lcom/coloros/translate/engine/offline/s;

    invoke-direct {v2, p0, p4, p1}, Lcom/coloros/translate/engine/offline/s;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;Landroid/view/View;Lcom/coloros/translate/engine/offline/f0;)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->x0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setAnchorView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->x0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object p1

    iget-object p2, p2, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    shr-int/2addr p2, v1

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    shl-int/2addr p4, v1

    div-int/2addr p4, p3

    neg-int p3, p4

    invoke-virtual {p1, p2, p3}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setGlobalOffset(II)V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->x0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show()V

    return v1
.end method

.method private v(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;Lcom/coloros/translate/engine/offline/f0;Ljava/lang/String;)V
    .locals 0

    iget-boolean p0, p2, Lcom/coloros/translate/engine/offline/f0;->b:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->b:Landroid/widget/TextView;

    sget p2, Lcom/coloros/translate/engine/offline/R$string;->eto_resource_built_in:I

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadedPackageList.size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineDownloadActivity"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->w0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->w0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v2, p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getItemCount cnt : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public getItemViewType(I)I
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt p1, v0, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v2

    if-ne p1, p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v1
.end method

.method public i(Lcom/coloros/translate/engine/offline/f0;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->u0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->q0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[beginDownload] find "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OfflineDownloadActivity"

    invoke-static {p1, p0}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public l(Lcom/coloros/translate/engine/offline/f0;)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->u0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->o0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setText(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setProgress(I)V

    iget-object p1, v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[decompressFailed] find "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OfflineDownloadActivity"

    invoke-static {v0, p1}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    sget p1, Lcom/coloros/translate/engine/offline/R$string;->download_error:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public m(Lcom/coloros/translate/engine/offline/f0;)V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->u0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;

    sget-object v1, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    iget-object v3, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    iget v4, p1, Lcom/coloros/translate/engine/offline/f0;->n:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/coloros/translate/utils/l0$a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v1, "OfflineDownloadActivity"

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[decompressFinished] find "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "decompressFinished add packageData and notifyDataSetChanged"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->w0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->l0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public n(Lcom/coloros/translate/engine/offline/f0;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->u0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->y0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[downloadFailed] find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OfflineDownloadActivity"

    invoke-static {v0, p1}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    sget p1, Lcom/coloros/translate/engine/offline/R$string;->download_error:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public o(Lcom/coloros/translate/engine/offline/f0;)V
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->u0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/Map;

    move-result-object p0

    iget-object v0, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setProgress(I)V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const-string p1, "100%"

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[downloadFinished] find "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OfflineDownloadActivity"

    invoke-static {p1, p0}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineDownloadActivity"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->j(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;I)V

    goto :goto_3

    :cond_0
    instance-of v0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;

    iget-object v0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    :goto_0
    sub-int/2addr p2, v1

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->k(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;I)V

    goto :goto_3

    :cond_2
    instance-of v0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$m;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$m;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    if-lez p2, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    move p0, v1

    :goto_1
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz p0, :cond_4

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/coloros/translate/engine/offline/R$dimen;->dp_24:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2, v1, p0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_2
    iget-object p0, p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$m;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->a:Landroid/view/LayoutInflater;

    sget p2, Lcom/coloros/translate/engine/offline/R$layout;->offline_download_item:I

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;

    invoke-direct {p1, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->a:Landroid/view/LayoutInflater;

    sget p2, Lcom/coloros/translate/engine/offline/R$layout;->item_downloaded:I

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;

    invoke-direct {p1, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$j;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->a:Landroid/view/LayoutInflater;

    sget v4, Lcom/coloros/translate/engine/offline/R$layout;->item_title:I

    invoke-virtual {v3, v4, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v3, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v3}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->s0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    if-ne p2, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    new-instance v2, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$m;

    if-ne p2, v1, :cond_4

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    sget p2, Lcom/coloros/translate/engine/offline/R$string;->download_Complete:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    sget p2, Lcom/coloros/translate/engine/offline/R$string;->not_downloaded:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v2, p1, p0, p2}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$m;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v2
.end method

.method public t(Lcom/coloros/translate/engine/offline/f0;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->u0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->y0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[pauseDownload] find "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OfflineDownloadActivity"

    invoke-static {p1, p0}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public u(Lcom/coloros/translate/engine/offline/f0;)V
    .locals 2

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->b:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->u0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)Ljava/util/Map;

    move-result-object p0

    iget-object v0, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/offline/f0;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setProgress(I)V

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$k;->c:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/coloros/translate/engine/offline/f0;->e()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[updateDownload] find "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OfflineDownloadActivity"

    invoke-static {p1, p0}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
