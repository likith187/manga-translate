.class public Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final LAYOUT:I

.field private mContext:Landroid/content/Context;

.field private mIsBottom:Z

.field private mIsTop:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mTextAppearances:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;[I)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    sget v0, Lcom/support/dialog/R$layout;->coui_list_dialog_item:I

    iput v0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->LAYOUT:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mIsTop:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mIsBottom:Z

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mItems:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mTextAppearances:[I

    return-void
.end method

.method private getViewInternal(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v1, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->LAYOUT:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;-><init>(Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;)V

    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    sget v1, Lcom/support/dialog/R$id;->item_divider:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->divider:Landroid/widget/ImageView;

    sget v1, Lcom/support/dialog/R$id;->main_layout:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;

    :goto_0
    iget-object v1, p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mTextAppearances:[I

    if-eqz v1, :cond_2

    aget v1, v1, p1

    if-lez v1, :cond_1

    iget-object v2, p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    iget-object v1, p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/support/dialog/R$style;->DefaultDialogItemTextStyle:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    :goto_1
    iget-object v1, p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->divider:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->getCount()I

    move-result p0

    sub-int/2addr p0, v2

    if-ne p1, p0, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->divider:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p0, p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->divider:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_3
    return-object p2
.end method

.method private resetPadding(ILandroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_vertical_button_padding_bottom_extra_new:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_vertical_button_padding_vertical_new:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/dialog/R$dimen;->alert_dialog_list_item_padding_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_vertical_button_padding_vertical_new:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/dialog/R$dimen;->alert_dialog_list_item_padding_right:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/dialog/R$dimen;->alert_dialog_list_item_min_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_0

    iget-boolean v5, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mIsBottom:Z

    if-eqz v5, :cond_0

    add-int/2addr v3, v0

    invoke-virtual {p2, v2, v1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mIsTop:Z

    if-eqz p0, :cond_1

    add-int/2addr v1, v0

    invoke-virtual {p2, v2, v1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v2, v1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mItems:[Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    return p0
.end method

.method public getItem(I)Ljava/lang/CharSequence;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mItems:[Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->getViewInternal(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    sget p3, Lcom/support/dialog/R$id;->main_layout:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->resetPadding(ILandroid/view/View;)V

    return-object p2
.end method

.method public setIsBottom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mIsBottom:Z

    return-void
.end method

.method public setIsTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->mIsTop:Z

    return-void
.end method
