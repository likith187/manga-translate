.class public Lcom/coui/appcompat/card/COUICardEntrancePreference;
.super Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/card/COUICardEntrancePreference$Companion;
    }
.end annotation


# static fields
.field public static final CARD_TYPE_LARGE:I = 0x2

.field public static final CARD_TYPE_SMALL:I = 0x1

.field public static final Companion:Lcom/coui/appcompat/card/COUICardEntrancePreference$Companion;

.field private static final LAYOUT_RES_TYPE_LARGE:I

.field private static final LAYOUT_RES_TYPE_SMALL:I

.field public static final TINT_ICON_ANYWAY:I = 0x2

.field public static final TINT_ICON_BY_GLOBAL_THEME:I = 0x1

.field public static final TINT_ICON_NONE:I


# instance fields
.field private cardType:I

.field private showSummary:Z

.field private statusOn:Z

.field private summaryView:Landroid/widget/TextView;

.field private tintIcon:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/card/COUICardEntrancePreference$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/card/COUICardEntrancePreference$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->Companion:Lcom/coui/appcompat/card/COUICardEntrancePreference$Companion;

    sget v0, Lcom/support/card/R$layout;->coui_component_card_entrance_preference_type_small:I

    sput v0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->LAYOUT_RES_TYPE_SMALL:I

    sget v0, Lcom/support/card/R$layout;->coui_component_card_entrance_preference_type_large:I

    sput v0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->LAYOUT_RES_TYPE_LARGE:I

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

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/card/COUICardEntrancePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/card/COUICardEntrancePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/card/COUICardEntrancePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->cardType:I

    .line 8
    iput-boolean v0, p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->showSummary:Z

    .line 9
    sget-object v1, Lcom/support/card/R$styleable;->COUICardEntrancePreference:[I

    .line 10
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    sget p2, Lcom/support/card/R$styleable;->COUICardEntrancePreference_entranceCardType:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 12
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/card/COUICardEntrancePreference;->setCardType(I)V

    .line 13
    sget p2, Lcom/support/card/R$styleable;->COUICardEntrancePreference_showSummary:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 14
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/card/COUICardEntrancePreference;->setShowSummary(Z)V

    .line 15
    sget p2, Lcom/support/card/R$styleable;->COUICardEntrancePreference_tintIcon:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/card/COUICardEntrancePreference;->setTintIcon(I)V

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

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
    sget p3, Lcom/support/preference/R$attr;->couiJumpPreferenceStyle:I

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/card/COUICardEntrancePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final applyIconToTintType(Landroidx/preference/l;)V
    .locals 5

    iget v0, p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->tintIcon:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getInstance()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1020006

    invoke-virtual {p1, v4}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p1

    instance-of v4, p1, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget p0, p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->tintIcon:I

    if-ne p0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v3, p1, v1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->applyCOUITintIcon(Landroid/content/Context;Landroid/widget/ImageView;Z)V

    :cond_3
    return-void
.end method

.method private final getLayoutResByCardType(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    sget p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->LAYOUT_RES_TYPE_SMALL:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->LAYOUT_RES_TYPE_LARGE:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->LAYOUT_RES_TYPE_SMALL:I

    :goto_0
    return p0
.end method


# virtual methods
.method public final getCardType()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->cardType:I

    return p0
.end method

.method public final getShowSummary()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->showSummary:Z

    return p0
.end method

.method public final getStatusOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->statusOn:Z

    return p0
.end method

.method public final getTintIcon()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->tintIcon:I

    return p0
.end method

.method protected final initSummaryView(Landroidx/preference/l;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->summaryView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    :cond_0
    iget-boolean p1, p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->statusOn:Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/card/COUICardEntrancePreference;->setSummaryStatus(Z)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;->onBindViewHolder(Landroidx/preference/l;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/card/COUICardEntrancePreference;->initSummaryView(Landroidx/preference/l;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/card/COUICardEntrancePreference;->applyIconToTintType(Landroidx/preference/l;)V

    return-void
.end method

.method public final setCardType(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/card/COUICardEntrancePreference;->getLayoutResByCardType(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput p1, p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->cardType:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final setShowSummary(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->showSummary:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final setStatusOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->statusOn:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSummary(I)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/card/COUICardEntrancePreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->showSummary:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->setStatusText1(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final setSummary(Ljava/lang/CharSequence;Z)V
    .locals 1

    const-string v0, "summary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 5
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/card/COUICardEntrancePreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final setSummaryStatus(Z)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$attr;->couiColorSecondNeutral:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$attr;->couiColorPrimaryText:I

    invoke-static {v1, v3, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->summaryView:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public final setTintIcon(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/card/COUICardEntrancePreference;->tintIcon:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
