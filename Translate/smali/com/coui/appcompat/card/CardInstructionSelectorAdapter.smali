.class public final Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;
.super Lcom/coui/appcompat/card/BaseCardInstructionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;,
        Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$Selector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coui/appcompat/card/BaseCardInstructionAdapter<",
        "Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private lastSelectedIndex:I

.field private onSelectedCardChangedListener:Lcom/coui/appcompat/card/COUICardInstructionPreference$OnItemSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/card/BaseDisplayInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "displayInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;->lastSelectedIndex:I

    return-void
.end method

.method public static final synthetic access$getLastSelectedIndex$p(Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;->lastSelectedIndex:I

    return p0
.end method

.method public static final synthetic access$setLastSelectedIndex$p(Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;->lastSelectedIndex:I

    return-void
.end method


# virtual methods
.method public final getOnSelectedCardChangedListener()Lcom/coui/appcompat/card/COUICardInstructionPreference$OnItemSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;->onSelectedCardChangedListener:Lcom/coui/appcompat/card/COUICardInstructionPreference$OnItemSelectedListener;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;->onBindViewHolder(Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;I)V
    .locals 0

    .line 2
    check-cast p1, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;->onBindViewHolder(Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->onBindViewHolder(Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;I)V

    .line 4
    iget p0, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;->lastSelectedIndex:I

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;->setSelectedChoiceIndex(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 3
    sget v0, Lcom/support/card/R$layout;->coui_component_card_instruction_selector_page:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "from(parent.context)\n   \u2026      false\n            )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p2, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;

    invoke-direct {p2, p0, p1, p0}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter$SelectorHolder;-><init>(Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;Landroid/view/View;Lcom/coui/appcompat/card/BaseCardInstructionAdapter;)V

    return-object p2
.end method

.method public final setOnSelectedCardChangedListener(Lcom/coui/appcompat/card/COUICardInstructionPreference$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;->onSelectedCardChangedListener:Lcom/coui/appcompat/card/COUICardInstructionPreference$OnItemSelectedListener;

    return-void
.end method

.method public final setSelectedIndex(I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iput p1, p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;->lastSelectedIndex:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method
