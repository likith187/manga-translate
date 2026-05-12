.class Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/preference/COUIRecommendedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecommendedAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h;"
    }
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_ENTITY:I = 0x1

.field private static final ITEM_VIEW_TYPE_HEADER:I


# instance fields
.field private mBackgroundColor:I

.field private mContext:Landroid/content/Context;

.field private mEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;FI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;",
            ">;",
            "Ljava/lang/String;",
            "FI)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mEntities:Ljava/util/List;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mContext:Landroid/content/Context;

    iput p4, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mRadius:F

    iput p5, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mBackgroundColor:I

    invoke-virtual {p0, p2, p3}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->setData(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mEntities:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->onBindViewHolder(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;I)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mEntities:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    .line 3
    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$000(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Landroid/widget/TextView;

    move-result-object v1

    .line 4
    invoke-static {v0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;->access$100(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mRadius:F

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setRadius(F)V

    .line 6
    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p2, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne p2, v3, :cond_0

    .line 8
    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-result-object p2

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setPositionInGroup(I)V

    .line 9
    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-result-object p2

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 10
    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/preference/R$dimen;->recommended_recyclerView_padding_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 11
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/preference/R$dimen;->recommended_recyclerView_padding_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne p2, v2, :cond_1

    .line 13
    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-result-object p2

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 14
    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    .line 15
    invoke-virtual {p2, v2, v4, v5, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 16
    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setPositionInGroup(I)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setPositionInGroup(I)V

    .line 18
    :goto_0
    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-result-object p1

    new-instance p2, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter$1;

    invoke-direct {p2, p0, v0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter$1;-><init>(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 19
    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 20
    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setPositionInGroup(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;
    .locals 2

    const/4 p0, 0x0

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/support/preference/R$layout;->item_recommended_head_textview:I

    invoke-virtual {v0, v1, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/support/preference/R$layout;->item_recommended_common_textview:I

    invoke-virtual {v0, v1, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public setData(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mEntities:Ljava/util/List;

    new-instance v0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    invoke-direct {v0, p2}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method
