.class public final Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;
.super Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SelectorHolder"
.end annotation


# instance fields
.field private final selectorContainer:Landroid/widget/LinearLayout;

.field private final selectorGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;Landroid/view/View;Lcom/coui/appcompat/card/BaseCardInstructionAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/coui/appcompat/card/BaseCardInstructionAdapter<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->this$0:Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;

    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;-><init>(Landroid/view/View;Lcom/coui/appcompat/card/BaseCardInstructionAdapter;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->selectorGroup:Ljava/util/List;

    sget p1, Lcom/support/card/R$id;->container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.container)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->selectorContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method private final bindAnimDisplayInfo(Lcom/coui/appcompat/card/AnimDisplayInfo;)V
    .locals 9

    invoke-virtual {p1}, Lcom/coui/appcompat/card/AnimDisplayInfo;->getAnimAssets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/coui/appcompat/card/AnimDisplayInfo;->getAnimResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "imageAssets and imageResources cannot be used at the same time. Please use only one at once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/coui/appcompat/card/AnimDisplayInfo;->getAnimAssets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/coui/appcompat/card/AnimDisplayInfo;->getAnimResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getChoices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/coui/appcompat/card/AnimDisplayInfo;->getAnimResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "itemView.context"

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    new-instance v6, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->Companion:Lcom/coui/appcompat/card/BaseCardInstructionAdapter$Companion;

    invoke-virtual {v6}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->getTitle()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getChoices()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v7, v2}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$Companion;->updateContentAndVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->getAnimView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimHeight()I

    move-result v4

    invoke-virtual {v6, v2, v4}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->setAnimViewSize(II)V

    iget-object v2, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->selectorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->selectorGroup:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/coui/appcompat/card/AnimDisplayInfo;->getAnimAssets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;-><init>(Landroid/content/Context;)V

    sget-object v6, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->Companion:Lcom/coui/appcompat/card/BaseCardInstructionAdapter$Companion;

    invoke-virtual {v5}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->getTitle()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getChoices()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7, v1}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$Companion;->updateContentAndVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->getAnimView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimHeight()I

    move-result v3

    invoke-virtual {v5, v1, v3}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->setAnimViewSize(II)V

    iget-object v1, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->selectorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->selectorGroup:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the anim count must equal to the choice count"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final bindImageDisplayInfo(Lcom/coui/appcompat/card/ImageDisplayInfo;)V
    .locals 8

    invoke-virtual {p1}, Lcom/coui/appcompat/card/ImageDisplayInfo;->getImageResources()[Ljava/lang/Integer;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getChoices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/coui/appcompat/card/ImageDisplayInfo;->getImageResources()[Ljava/lang/Integer;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "itemView.context"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->Companion:Lcom/coui/appcompat/card/BaseCardInstructionAdapter$Companion;

    invoke-virtual {v4}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->getTitle()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getChoices()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6, v7}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$Companion;->updateContentAndVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->getAnimView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/oplus/anim/EffectiveAnimationView;->setImageResource(I)V

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimHeight()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->setAnimViewSize(II)V

    iget-object v3, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->selectorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->selectorGroup:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the image count must equal to the choice count"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic c(Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->dealRadioGroupClickEvents$lambda$1$lambda$0(Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;Landroid/view/View;)V

    return-void
.end method

.method private final dealRadioGroupClickEvents()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->selectorGroup:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->this$0:Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;

    invoke-virtual {v2}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->getRootView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/coui/appcompat/card/d;

    invoke-direct {v4, p0, v2, v1}, Lcom/coui/appcompat/card/d;-><init>(Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final dealRadioGroupClickEvents$lambda$1$lambda$0(Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$selector"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$1"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->selectorGroup:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p2}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;->access$getLastSelectedIndex$p(Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;)I

    move-result p3

    if-eq p1, p3, :cond_0

    invoke-static {p2, p1}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;->access$setLastSelectedIndex$p(Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;I)V

    invoke-virtual {p2}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;->getOnSelectedCardChangedListener()Lcom/coui/appcompat/card/COUICardInstructionPreference$OnItemSelectedListener;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/coui/appcompat/card/COUICardInstructionPreference$OnItemSelectedListener;->onItemSelected(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->setSelectedChoiceIndex(I)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/coui/appcompat/card/BaseDisplayInfo;)V
    .locals 1

    const-string v0, "displayInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->selectorGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->selectorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    instance-of v0, p1, Lcom/coui/appcompat/card/AnimDisplayInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/card/AnimDisplayInfo;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->bindAnimDisplayInfo(Lcom/coui/appcompat/card/AnimDisplayInfo;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/coui/appcompat/card/ImageDisplayInfo;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/card/ImageDisplayInfo;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->bindImageDisplayInfo(Lcom/coui/appcompat/card/ImageDisplayInfo;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->dealRadioGroupClickEvents()V

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getSelectedIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->setSelectedChoiceIndex(I)V

    return-void
.end method

.method public final setSelectedChoiceIndex(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->selectorGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->selectorGroup:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;

    invoke-virtual {p1}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->getRadio()Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p1}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$style;->couiTextAppearanceButton:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p1}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->selectorGroup:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;

    invoke-virtual {v0}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->getRadio()Landroid/widget/RadioButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v0}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$style;->couiTextAppearanceBody:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {v0}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorSecondNeutral:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method
