.class public final Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;
.super Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DescriptionHolder"
.end annotation


# instance fields
.field private final animContainer:Landroid/widget/LinearLayout;

.field private final scrollViewContainer:Lcom/coui/appcompat/card/COUIMutableSizeScrollView;

.field private final summary:Landroid/widget/TextView;

.field private final summaryContainer:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter;Landroid/view/View;Lcom/coui/appcompat/card/BaseCardInstructionAdapter;)V
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

    iput-object p1, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->this$0:Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter;

    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;-><init>(Landroid/view/View;Lcom/coui/appcompat/card/BaseCardInstructionAdapter;)V

    sget p1, Lcom/support/card/R$id;->anim_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "itemView.findViewById(R.id.anim_container)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->animContainer:Landroid/widget/LinearLayout;

    sget p1, Lcom/support/card/R$id;->title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "itemView.findViewById(R.id.title)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->title:Landroid/widget/TextView;

    sget p1, Lcom/support/card/R$id;->summary:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "itemView.findViewById(R.id.summary)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->summary:Landroid/widget/TextView;

    sget p1, Lcom/support/card/R$id;->summary_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "itemView.findViewById(R.id.summary_container)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->summaryContainer:Landroid/widget/LinearLayout;

    sget p1, Lcom/support/card/R$id;->content_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.content_container)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;

    iput-object p1, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->scrollViewContainer:Lcom/coui/appcompat/card/COUIMutableSizeScrollView;

    return-void
.end method

.method private final bindAnimDisplayInfo(Lcom/coui/appcompat/card/AnimDisplayInfo;)V
    .locals 10

    iget-object v0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->animContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/card/R$dimen;->coui_component_card_instruction_divider_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/coui/appcompat/card/AnimDisplayInfo;->getAnimAssets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/coui/appcompat/card/AnimDisplayInfo;->getAnimResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "imageAssets and imageResources cannot be used at the same time. Please use only one at once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimTitles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/coui/appcompat/card/AnimDisplayInfo;->getAnimAssets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/coui/appcompat/card/AnimDisplayInfo;->getAnimResources()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimTitles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the image count must equals to the animTitle count"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/coui/appcompat/card/AnimDisplayInfo;->getAnimResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x2

    const-string v6, "itemView.context"

    if-ge v3, v1, :cond_5

    new-instance v7, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;

    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, p1, v3}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->bind(Lcom/coui/appcompat/card/AnimDisplayInfo;I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->animContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_4
    invoke-virtual {v7}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->getRootView()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->animContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->getRootView()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/coui/appcompat/card/AnimDisplayInfo;->getAnimAssets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_7

    new-instance v7, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;

    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, p1, v3}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->bind(Lcom/coui/appcompat/card/AnimDisplayInfo;I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v9, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->animContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_6
    invoke-virtual {v7}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->getRootView()Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->animContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->getRootView()Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method private final bindImageDisplayInfo(Lcom/coui/appcompat/card/ImageDisplayInfo;)V
    .locals 7

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimTitles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/coui/appcompat/card/ImageDisplayInfo;->getImageResources()[Ljava/lang/Integer;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getAnimTitles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the anim count must equals to the animTitle count"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->animContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/card/R$dimen;->coui_component_card_instruction_divider_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/coui/appcompat/card/ImageDisplayInfo;->getImageResources()[Ljava/lang/Integer;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    new-instance v4, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "itemView.context"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1, v3}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->bind(Lcom/coui/appcompat/card/ImageDisplayInfo;I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v6, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->animContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_2
    invoke-virtual {v4}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->getRootView()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->animContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$AnimViewGroup;->getRootView()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public bind(Lcom/coui/appcompat/card/BaseDisplayInfo;)V
    .locals 4

    const-string v0, "displayInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->Companion:Lcom/coui/appcompat/card/BaseCardInstructionAdapter$Companion;

    iget-object v1, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$Companion;->updateContentAndVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coui/appcompat/card/BaseDisplayInfo;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->summaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$Companion;->updateContentAndVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->scrollViewContainer:Lcom/coui/appcompat/card/COUIMutableSizeScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/card/R$dimen;->coui_component_card_instruction_content_height_complete:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->setMaxHeight(I)V

    sget v0, Lcom/support/card/R$dimen;->coui_component_card_instruction_summary_margin_top_small:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->scrollViewContainer:Lcom/coui/appcompat/card/COUIMutableSizeScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/card/R$dimen;->coui_component_card_instruction_content_height_part:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->setMaxHeight(I)V

    sget v0, Lcom/support/card/R$dimen;->coui_component_card_instruction_summary_margin_top_large:I

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->summaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->summaryContainer:Landroid/widget/LinearLayout;

    invoke-static {v3, v0}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapterKt;->access$getDimenPx(Landroid/view/View;I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v0, p1, Lcom/coui/appcompat/card/AnimDisplayInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/coui/appcompat/card/AnimDisplayInfo;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->bindAnimDisplayInfo(Lcom/coui/appcompat/card/AnimDisplayInfo;)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lcom/coui/appcompat/card/ImageDisplayInfo;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/coui/appcompat/card/ImageDisplayInfo;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$DescriptionHolder;->bindImageDisplayInfo(Lcom/coui/appcompat/card/ImageDisplayInfo;)V

    :cond_2
    :goto_1
    return-void
.end method
