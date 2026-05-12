.class public Lcom/coui/appcompat/itemview/COUIBaseListItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/COUIRecyclerView$b;


# static fields
.field public static final BOTH_RIGHT_ANGLE:I = 0x2

.field public static final BOTH_ROUNDED_CORNER:I = 0x4

.field public static final BOTTOM_ROUNDED_CORNER:I = 0x3

.field public static final TOP_ROUNDED_CORNER:I = 0x1


# instance fields
.field private mCardType:I

.field private mDividerPadding:I

.field private mListTitleView:Landroid/widget/TextView;

.field private mRootListItemView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemViewHolder;->mCardType:I

    sget v0, Lcom/support/preference/R$dimen;->coui_preference_divider_default_horizontal_padding:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemViewHolder;->mDividerPadding:I

    sget v0, Lcom/support/preference/R$id;->coui_preference:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemViewHolder;->mRootListItemView:Landroid/view/View;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemViewHolder;->mListTitleView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public drawDivider()Z
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemViewHolder;->mRootListItemView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemViewHolder;->mCardType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public getDividerEndAlignView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDividerEndInset()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemViewHolder;->mDividerPadding:I

    return p0
.end method

.method public getDividerStartAlignView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemViewHolder;->mListTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDividerStartInset()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemViewHolder;->mDividerPadding:I

    return p0
.end method

.method public setCornerType(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemViewHolder;->mCardType:I

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemViewHolder;->mRootListItemView:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->setItemCardBackground(Landroid/view/View;I)V

    return-void
.end method
