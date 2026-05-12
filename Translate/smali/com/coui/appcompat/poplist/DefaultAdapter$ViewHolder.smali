.class Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/poplist/DefaultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field mCheckbox:Landroid/widget/CheckBox;

.field mDescription:Landroid/widget/TextView;

.field mHintEndGap:Landroid/widget/Space;

.field mHintLayout:Landroid/widget/LinearLayout;

.field mIcon:Landroid/widget/ImageView;

.field mTitle:Landroid/widget/TextView;

.field mTitleEndGap:Landroid/widget/Space;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->initViewHolder(Landroid/view/View;)V

    return-void
.end method

.method private initViewHolder(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/support/poplist/R$id;->popup_list_window_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    sget v0, Lcom/support/poplist/R$id;->popup_list_window_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    sget v0, Lcom/support/poplist/R$id;->popup_list_window_item_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->mDescription:Landroid/widget/TextView;

    sget v0, Lcom/support/poplist/R$id;->popup_list_window_item_title_end_gap:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->mTitleEndGap:Landroid/widget/Space;

    sget v0, Lcom/support/poplist/R$id;->popup_list_window_item_hint_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->mHintLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/support/poplist/R$id;->popup_list_window_item_hint_end_gap:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->mHintEndGap:Landroid/widget/Space;

    sget v0, Lcom/support/poplist/R$id;->popup_list_window_item_state_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    return-void
.end method
