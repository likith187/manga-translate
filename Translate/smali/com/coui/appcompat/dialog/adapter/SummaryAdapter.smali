.class public Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final LAYOUT:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsBottom:Z

.field private mIsTop:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mSummaries:[Ljava/lang/CharSequence;

.field private mTextColor:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/support/dialog/R$layout;->coui_alert_dialog_summary_item:I

    sput v0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[I)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->mIsTop:Z

    iput-boolean p3, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->mIsBottom:Z

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->mItems:[Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->mSummaries:[Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->mTextColor:[I

    return-void
.end method

.method private resetPadding(ILandroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_vertical_button_padding_bottom_extra_new:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_vertical_button_padding_vertical_new:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_0

    iget-boolean v4, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->mIsBottom:Z

    if-eqz v4, :cond_0

    add-int/2addr v0, v1

    invoke-virtual {p2, v2, v1, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->mIsTop:Z

    if-eqz p0, :cond_1

    add-int/2addr v0, v1

    invoke-virtual {p2, v2, v0, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v2, v1, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->mItems:[Ljava/lang/CharSequence;

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
    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->mItems:[Ljava/lang/CharSequence;

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
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getSummary(I)Ljava/lang/CharSequence;
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->mSummaries:[Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    if-lt p1, v1, :cond_1

    return-object v0

    :cond_1
    aget-object p0, p0, p1

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->LAYOUT:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;-><init>(Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$1;)V

    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->mItemView:Landroid/widget/TextView;

    sget v1, Lcom/support/dialog/R$id;->summary_text2:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->mSummaryView:Landroid/widget/TextView;

    sget v1, Lcom/support/dialog/R$id;->item_divider:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->mDivider:Landroid/widget/ImageView;

    sget v1, Lcom/support/dialog/R$id;->main_layout:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->getSummary(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->mItemView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v1}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->resetPadding(ILandroid/view/View;)V

    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->mTextColor:[I

    if-eqz v1, :cond_2

    if-ltz p1, :cond_2

    array-length v2, v1

    if-ge p1, v2, :cond_2

    iget-object v2, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->mItemView:Landroid/widget/TextView;

    aget v1, v1, p1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v1, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->mDivider:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->getCount()I

    move-result p0

    sub-int/2addr p0, v2

    if-ne p1, p0, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->mDivider:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p0, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->mDivider:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_3
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    return-object p2
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
