.class public final Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/statement/COUIUserStatementDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ListItemViewHolder"
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private mItemView:Landroid/view/View;

.field private mPosition:I

.field private message:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->this$0:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->mItemView:Landroid/view/View;

    sget p1, Lcom/support/statement/R$id;->iv_statement_list_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.iv_statement_list_icon)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->icon:Landroid/widget/ImageView;

    sget p1, Lcom/support/statement/R$id;->tv_statement_list_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.\u2026.tv_statement_list_title)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->title:Landroid/widget/TextView;

    sget p1, Lcom/support/statement/R$id;->tv_statement_list_message:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.\u2026v_statement_list_message)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->message:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->bindListener$lambda$0(Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;Landroid/view/View;)V

    return-void
.end method

.method private static final bindListener$lambda$0(Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->mPosition:I

    invoke-interface {p0, p2, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bindItemData(Lcom/coui/appcompat/statement/COUIUserStatementDialog$COUIUserStatementListItem;I)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->mPosition:I

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$COUIUserStatementListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$COUIUserStatementListItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$COUIUserStatementListItem;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$COUIUserStatementListItem;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->message:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$COUIUserStatementListItem;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->message:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->message:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final bindListener(Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->mItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/coui/appcompat/statement/s;

    invoke-direct {v1, p1, p0}, Lcom/coui/appcompat/statement/s;-><init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final getIcon()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMItemView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->mItemView:Landroid/view/View;

    return-object p0
.end method

.method public final getMPosition()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->mPosition:I

    return p0
.end method

.method public final getMessage()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->message:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method public final setIcon(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->icon:Landroid/widget/ImageView;

    return-void
.end method

.method public final setMItemView(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->mItemView:Landroid/view/View;

    return-void
.end method

.method public final setMPosition(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->mPosition:I

    return-void
.end method

.method public final setMessage(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->message:Landroid/widget/TextView;

    return-void
.end method

.method public final setTitle(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->title:Landroid/widget/TextView;

    return-void
.end method
