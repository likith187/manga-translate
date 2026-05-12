.class public final Lcom/coui/appcompat/card/COUICardInstructionPreference;
.super Lcom/coui/appcompat/preference/COUIPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/card/COUICardInstructionPreference$OnItemSelectedListener;,
        Lcom/coui/appcompat/card/COUICardInstructionPreference$Companion;
    }
.end annotation


# static fields
.field public static final CARD_INSTRUCTION_TYPE_DESCRIPTION:I = 0x1

.field public static final CARD_INSTRUCTION_TYPE_SELECTOR:I = 0x2

.field public static final Companion:Lcom/coui/appcompat/card/COUICardInstructionPreference$Companion;


# instance fields
.field private cardType:I

.field private lastPagerItem:I

.field private pageAdapter:Lcom/coui/appcompat/card/BaseCardInstructionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coui/appcompat/card/BaseCardInstructionAdapter<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/card/COUICardInstructionPreference$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/card/COUICardInstructionPreference$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/appcompat/card/COUICardInstructionPreference;->Companion:Lcom/coui/appcompat/card/COUICardInstructionPreference$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/card/COUICardInstructionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/card/COUICardInstructionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/card/COUICardInstructionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference;->cardType:I

    .line 8
    sget v1, Lcom/support/card/R$layout;->coui_component_card_instruction_preference:I

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 9
    sget-object v1, Lcom/support/card/R$styleable;->COUICardInstructionPreference:[I

    .line 10
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    sget p2, Lcom/support/card/R$styleable;->COUICardInstructionPreference_instructionCardType:I

    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 13
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/card/COUICardInstructionPreference;->setCardType(I)V

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    iget p1, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference;->cardType:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/card/COUICardInstructionPreference;->getPageAdapter(I)Lcom/coui/appcompat/card/BaseCardInstructionAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference;->pageAdapter:Lcom/coui/appcompat/card/BaseCardInstructionAdapter;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 4
    sget p3, Landroidx/preference/R$attr;->preferenceStyle:I

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/card/COUICardInstructionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$setLastPagerItem$p(Lcom/coui/appcompat/card/COUICardInstructionPreference;I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference;->lastPagerItem:I

    return-void
.end method

.method private final getPageAdapter(I)Lcom/coui/appcompat/card/BaseCardInstructionAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/coui/appcompat/card/BaseCardInstructionAdapter<",
            "+",
            "Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    new-instance p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter;

    invoke-direct {p0}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;

    invoke-direct {p0}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter;

    invoke-direct {p0}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter;-><init>()V

    :goto_0
    return-object p0
.end method

.method private final setPagerCallback(Landroidx/viewpager2/widget/ViewPager2;Lcom/coui/appcompat/indicator/COUIPageIndicator;)V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/card/COUICardInstructionPreference$setPagerCallback$1;

    invoke-direct {v0, p2, p0}, Lcom/coui/appcompat/card/COUICardInstructionPreference$setPagerCallback$1;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;Lcom/coui/appcompat/card/COUICardInstructionPreference;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->g(Landroidx/viewpager2/widget/ViewPager2$i;)V

    return-void
.end method


# virtual methods
.method public final getCardType()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference;->cardType:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->onBindViewHolder(Landroidx/preference/l;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    sget v0, Lcom/support/card/R$id;->pager:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type androidx.viewpager2.widget.ViewPager2"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    sget v2, Lcom/support/card/R$id;->indicator:I

    invoke-virtual {p1, v2}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type com.coui.appcompat.indicator.COUIPageIndicator"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iget-object v2, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference;->pageAdapter:Lcom/coui/appcompat/card/BaseCardInstructionAdapter;

    invoke-virtual {v2}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference;->pageAdapter:Lcom/coui/appcompat/card/BaseCardInstructionAdapter;

    invoke-virtual {v1}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference;->pageAdapter:Lcom/coui/appcompat/card/BaseCardInstructionAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget v1, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference;->lastPagerItem:I

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    iget-object v1, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference;->pageAdapter:Lcom/coui/appcompat/card/BaseCardInstructionAdapter;

    invoke-virtual {v1}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    iget-object v1, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference;->pageAdapter:Lcom/coui/appcompat/card/BaseCardInstructionAdapter;

    invoke-virtual {v1}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setDotsCount(I)V

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/card/COUICardInstructionPreference;->setPagerCallback(Landroidx/viewpager2/widget/ViewPager2;Lcom/coui/appcompat/indicator/COUIPageIndicator;)V

    :cond_2
    return-void
.end method

.method public final setCardType(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference;->cardType:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/card/COUICardInstructionPreference;->getPageAdapter(I)Lcom/coui/appcompat/card/BaseCardInstructionAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference;->pageAdapter:Lcom/coui/appcompat/card/BaseCardInstructionAdapter;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final setDisplayInfos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/coui/appcompat/card/BaseDisplayInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "displayInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference;->pageAdapter:Lcom/coui/appcompat/card/BaseCardInstructionAdapter;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->updateDisplayInfos(Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final setOnItemSelected(Lcom/coui/appcompat/card/COUICardInstructionPreference$OnItemSelectedListener;)V
    .locals 2

    const-string v0, "onItemSelectedListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference;->pageAdapter:Lcom/coui/appcompat/card/BaseCardInstructionAdapter;

    instance-of v1, v0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;->setOnSelectedCardChangedListener(Lcom/coui/appcompat/card/COUICardInstructionPreference$OnItemSelectedListener;)V

    :goto_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final setSelectedIndex(I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/card/COUICardInstructionPreference;->pageAdapter:Lcom/coui/appcompat/card/BaseCardInstructionAdapter;

    instance-of v1, v0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/card/CardInstructionSelectorAdapter;->setSelectedIndex(I)V

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
