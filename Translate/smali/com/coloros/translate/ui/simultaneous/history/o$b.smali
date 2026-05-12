.class public final Lcom/coloros/translate/ui/simultaneous/history/o$b;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/ui/simultaneous/history/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final h:Landroid/view/View;

.field private final i:Landroid/widget/ImageView;

.field private final j:Landroid/widget/TextView;

.field private final k:Lcom/coui/appcompat/checkbox/COUICheckBox;

.field final synthetic l:Lcom/coloros/translate/ui/simultaneous/history/o;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/o;Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->l:Lcom/coloros/translate/ui/simultaneous/history/o;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    sget p1, Lcom/coloros/translate/R$id;->history_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->a:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    sget p1, Lcom/coloros/translate/R$id;->tx_history_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->b:Landroid/widget/TextView;

    sget p1, Lcom/coloros/translate/R$id;->tx_history_content:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->c:Landroid/widget/TextView;

    sget p1, Lcom/coloros/translate/R$id;->tx_history_date:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->f:Landroid/widget/TextView;

    sget p1, Lcom/coloros/translate/R$id;->divider_line:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->h:Landroid/view/View;

    sget p1, Lcom/coloros/translate/R$id;->iv_audio_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->i:Landroid/widget/ImageView;

    sget p1, Lcom/coloros/translate/R$id;->tx_audio_time:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->j:Landroid/widget/TextView;

    sget p1, Lcom/coloros/translate/R$id;->cb_select:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/coui/appcompat/checkbox/COUICheckBox;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->k:Lcom/coui/appcompat/checkbox/COUICheckBox;

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/ui/simultaneous/history/o$b;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/o$b;->f(Lcom/coloros/translate/ui/simultaneous/history/o$b;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/coloros/translate/ui/simultaneous/history/o;Lcom/coloros/translate/ui/simultaneous/history/o$b;Lcom/coloros/translate/ui/simultaneous/history/n0;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/translate/ui/simultaneous/history/o$b;->g(Lcom/coloros/translate/ui/simultaneous/history/o;Lcom/coloros/translate/ui/simultaneous/history/o$b;Lcom/coloros/translate/ui/simultaneous/history/n0;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/coloros/translate/ui/simultaneous/history/o;Lcom/coloros/translate/ui/simultaneous/history/o$b;Lcom/coloros/translate/ui/simultaneous/history/n0;ILandroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/translate/ui/simultaneous/history/o$b;->h(Lcom/coloros/translate/ui/simultaneous/history/o;Lcom/coloros/translate/ui/simultaneous/history/o$b;Lcom/coloros/translate/ui/simultaneous/history/n0;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static final f(Lcom/coloros/translate/ui/simultaneous/history/o$b;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->k:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setChecked(Z)V

    return-void
.end method

.method private static final g(Lcom/coloros/translate/ui/simultaneous/history/o;Lcom/coloros/translate/ui/simultaneous/history/o$b;Lcom/coloros/translate/ui/simultaneous/history/n0;ILandroid/view/View;)V
    .locals 3

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "this$1"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$info"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->k()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p1, Lcom/coloros/translate/ui/simultaneous/history/o$b;->k:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Lcom/coloros/translate/ui/simultaneous/history/n0;->c()Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Lcom/coloros/translate/ui/simultaneous/history/n0;->c()Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Lcom/coloros/translate/ui/simultaneous/history/n0;->c()Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p4, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setChecked(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->g()Lcom/coloros/translate/ui/simultaneous/history/o$c;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p1, p1, Lcom/coloros/translate/ui/simultaneous/history/o$b;->a:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    invoke-interface {p0, p1, p3, p2}, Lcom/coloros/translate/ui/simultaneous/history/o$c;->b(Landroid/view/View;ILcom/coloros/translate/ui/simultaneous/history/n0;)V

    :cond_2
    return-void
.end method

.method private static final h(Lcom/coloros/translate/ui/simultaneous/history/o;Lcom/coloros/translate/ui/simultaneous/history/o$b;Lcom/coloros/translate/ui/simultaneous/history/n0;ILandroid/view/View;)Z
    .locals 3

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "this$1"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$info"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->k()Z

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/ui/simultaneous/history/o;->p(Z)V

    iget-object p4, p1, Lcom/coloros/translate/ui/simultaneous/history/o$b;->k:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p4}, Lcom/coui/appcompat/checkbox/COUICheckBox;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p4, v1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object p4

    invoke-virtual {p2}, Lcom/coloros/translate/ui/simultaneous/history/n0;->c()Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o;->g()Lcom/coloros/translate/ui/simultaneous/history/o$c;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/coloros/translate/ui/simultaneous/history/o$b;->a:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    invoke-interface {p0, p1, p3, p2}, Lcom/coloros/translate/ui/simultaneous/history/o$c;->c(Landroid/view/View;ILcom/coloros/translate/ui/simultaneous/history/n0;)V

    :cond_0
    return v0
.end method


# virtual methods
.method public final e(Lcom/coloros/translate/ui/simultaneous/history/n0;I)V
    .locals 5

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/n0;->c()Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/n0;->c()Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getSimpleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/n0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/n0;->c()Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getAudioFile()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/n0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->k:Lcom/coui/appcompat/checkbox/COUICheckBox;

    iget-object v3, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->l:Lcom/coloros/translate/ui/simultaneous/history/o;

    invoke-virtual {v3}, Lcom/coloros/translate/ui/simultaneous/history/o;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->l:Lcom/coloros/translate/ui/simultaneous/history/o;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/history/o;->h()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/history/n0;->c()Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->l:Lcom/coloros/translate/ui/simultaneous/history/o;

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/history/o;->f(Lcom/coloros/translate/ui/simultaneous/history/o;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->k:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->k:Lcom/coui/appcompat/checkbox/COUICheckBox;

    new-instance v2, Lcom/coloros/translate/ui/simultaneous/history/p;

    invoke-direct {v2, p0, v0}, Lcom/coloros/translate/ui/simultaneous/history/p;-><init>(Lcom/coloros/translate/ui/simultaneous/history/o$b;Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->a:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->l:Lcom/coloros/translate/ui/simultaneous/history/o;

    new-instance v2, Lcom/coloros/translate/ui/simultaneous/history/q;

    invoke-direct {v2, v1, p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/q;-><init>(Lcom/coloros/translate/ui/simultaneous/history/o;Lcom/coloros/translate/ui/simultaneous/history/o$b;Lcom/coloros/translate/ui/simultaneous/history/n0;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->a:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/o$b;->l:Lcom/coloros/translate/ui/simultaneous/history/o;

    new-instance v2, Lcom/coloros/translate/ui/simultaneous/history/r;

    invoke-direct {v2, v1, p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/r;-><init>(Lcom/coloros/translate/ui/simultaneous/history/o;Lcom/coloros/translate/ui/simultaneous/history/o$b;Lcom/coloros/translate/ui/simultaneous/history/n0;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
