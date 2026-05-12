.class Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/preference/COUIRecommendedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecommendedVH"
.end annotation


# instance fields
.field private mLayout:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->mLayout:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    sget v0, Lcom/support/preference/R$id;->txt_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->mTitleView:Landroid/widget/TextView;

    new-instance v0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH$1;-><init>(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->mLayout:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->mLayout:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    return-object p0
.end method
