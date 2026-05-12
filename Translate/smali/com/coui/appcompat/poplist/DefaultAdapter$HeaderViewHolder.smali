.class Lcom/coui/appcompat/poplist/DefaultAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/poplist/DefaultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field mTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/poplist/DefaultAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/DefaultAdapter$HeaderViewHolder;->initViewHolder(Landroid/view/View;)V

    return-void
.end method

.method private initViewHolder(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/support/poplist/R$id;->popup_list_window_header_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    return-void
.end method
