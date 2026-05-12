.class public final Lcom/coui/appcompat/card/CardEntranceDecoration;
.super Lcom/coui/appcompat/card/BaseCardItemDecoration;
.source "SourceFile"


# instance fields
.field private adapter:Landroidx/preference/h;

.field private final cardPositionPredicate:Lcom/coui/appcompat/card/CardPositionPredicate;

.field private largeCardMargin:Lcom/coui/appcompat/card/CardMargin;

.field private smallCardMargin:Lcom/coui/appcompat/card/CardMargin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coui/appcompat/card/CardPositionPredicate;Landroidx/preference/h;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardPositionPredicate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/card/BaseCardItemDecoration;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p2, p0, Lcom/coui/appcompat/card/CardEntranceDecoration;->cardPositionPredicate:Lcom/coui/appcompat/card/CardPositionPredicate;

    .line 4
    iput-object p3, p0, Lcom/coui/appcompat/card/CardEntranceDecoration;->adapter:Landroidx/preference/h;

    .line 5
    invoke-direct {p0}, Lcom/coui/appcompat/card/CardEntranceDecoration;->getDefaultLargeCardMargin()Lcom/coui/appcompat/card/CardMargin;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/card/CardEntranceDecoration;->largeCardMargin:Lcom/coui/appcompat/card/CardMargin;

    .line 6
    invoke-direct {p0}, Lcom/coui/appcompat/card/CardEntranceDecoration;->getDefaultSmallCardMargin()Lcom/coui/appcompat/card/CardMargin;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/card/CardEntranceDecoration;->smallCardMargin:Lcom/coui/appcompat/card/CardMargin;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/coui/appcompat/card/CardPositionPredicate;Landroidx/preference/h;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/card/CardEntranceDecoration;-><init>(Landroid/content/Context;Lcom/coui/appcompat/card/CardPositionPredicate;Landroidx/preference/h;)V

    return-void
.end method

.method private final getDefaultLargeCardMargin()Lcom/coui/appcompat/card/CardMargin;
    .locals 5

    new-instance v0, Lcom/coui/appcompat/card/CardMargin;

    sget v1, Lcom/support/card/R$dimen;->coui_component_card_entrance_large_top_margin:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/card/BaseCardItemDecoration;->getDimenPx(I)I

    move-result v1

    sget v2, Lcom/support/card/R$dimen;->coui_component_card_entrance_large_top_margin:I

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/card/BaseCardItemDecoration;->getDimenPx(I)I

    move-result v2

    sget v3, Lcom/support/card/R$dimen;->coui_component_card_entrance_large_horizontal_margin:I

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/card/BaseCardItemDecoration;->getDimenPx(I)I

    move-result v3

    sget v4, Lcom/support/card/R$dimen;->coui_component_card_entrance_large_horizontal_margin:I

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/card/BaseCardItemDecoration;->getDimenPx(I)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/coui/appcompat/card/CardMargin;-><init>(IIII)V

    return-object v0
.end method

.method private final getDefaultSmallCardMargin()Lcom/coui/appcompat/card/CardMargin;
    .locals 5

    new-instance v0, Lcom/coui/appcompat/card/CardMargin;

    sget v1, Lcom/support/card/R$dimen;->coui_component_card_entrance_small_top_margin_first:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/card/BaseCardItemDecoration;->getDimenPx(I)I

    move-result v1

    sget v2, Lcom/support/card/R$dimen;->coui_component_card_entrance_small_top_margin_other:I

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/card/BaseCardItemDecoration;->getDimenPx(I)I

    move-result v2

    sget v3, Lcom/support/card/R$dimen;->coui_component_card_entrance_small_horizontal_margin_outer:I

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/card/BaseCardItemDecoration;->getDimenPx(I)I

    move-result v3

    sget v4, Lcom/support/card/R$dimen;->coui_component_card_entrance_small_horizontal_margin_inner:I

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/card/BaseCardItemDecoration;->getDimenPx(I)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/coui/appcompat/card/CardMargin;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public final getAdapter()Landroidx/preference/h;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/CardEntranceDecoration;->adapter:Landroidx/preference/h;

    return-object p0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    new-instance p3, Lcom/coui/appcompat/card/CardPosition;

    iget-object p4, p0, Lcom/coui/appcompat/card/CardEntranceDecoration;->cardPositionPredicate:Lcom/coui/appcompat/card/CardPositionPredicate;

    invoke-direct {p3, p4, p2}, Lcom/coui/appcompat/card/CardPosition;-><init>(Lcom/coui/appcompat/card/CardPositionPredicate;I)V

    iget-object p4, p0, Lcom/coui/appcompat/card/CardEntranceDecoration;->adapter:Landroidx/preference/h;

    if-eqz p4, :cond_0

    invoke-virtual {p4, p2}, Landroidx/preference/h;->i(I)Landroidx/preference/Preference;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    instance-of p4, p2, Lcom/coui/appcompat/card/COUICardEntrancePreference;

    if-eqz p4, :cond_3

    check-cast p2, Lcom/coui/appcompat/card/COUICardEntrancePreference;

    invoke-virtual {p2}, Lcom/coui/appcompat/card/COUICardEntrancePreference;->getCardType()I

    move-result p2

    const/4 p4, 0x1

    if-eq p2, p4, :cond_2

    const/4 p4, 0x2

    if-eq p2, p4, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/coui/appcompat/card/CardEntranceDecoration;->largeCardMargin:Lcom/coui/appcompat/card/CardMargin;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/card/BaseCardItemDecoration;->setCardColumnMargin(Landroid/graphics/Rect;Lcom/coui/appcompat/card/CardMargin;Lcom/coui/appcompat/card/CardPosition;)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/coui/appcompat/card/CardEntranceDecoration;->smallCardMargin:Lcom/coui/appcompat/card/CardMargin;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/card/BaseCardItemDecoration;->setCardColumnMargin(Landroid/graphics/Rect;Lcom/coui/appcompat/card/CardMargin;Lcom/coui/appcompat/card/CardPosition;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final getLargeCardMargin()Lcom/coui/appcompat/card/CardMargin;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/CardEntranceDecoration;->largeCardMargin:Lcom/coui/appcompat/card/CardMargin;

    return-object p0
.end method

.method public final getSmallCardMargin()Lcom/coui/appcompat/card/CardMargin;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/CardEntranceDecoration;->smallCardMargin:Lcom/coui/appcompat/card/CardMargin;

    return-object p0
.end method

.method public final setAdapter(Landroidx/preference/h;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/card/CardEntranceDecoration;->adapter:Landroidx/preference/h;

    return-void
.end method

.method public final setLargeCardMargin(Lcom/coui/appcompat/card/CardMargin;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/card/CardEntranceDecoration;->largeCardMargin:Lcom/coui/appcompat/card/CardMargin;

    return-void
.end method

.method public final setSmallCardMargin(Lcom/coui/appcompat/card/CardMargin;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/card/CardEntranceDecoration;->smallCardMargin:Lcom/coui/appcompat/card/CardMargin;

    return-void
.end method
