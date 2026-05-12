.class public Lcom/coloros/translate/base/BasePreferenceFragment;
.super Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;-><init>()V

    return-void
.end method

.method private final p(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->getToolbar()Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$dimen;->dp_52:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    sget p1, Lcom/support/appcompat/R$drawable;->coui_back_arrow:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$color;->coui_color_background_with_card:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    sget p1, Landroidx/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationContentDescription(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/base/BasePreferenceFragment;->p(Landroid/view/View;)V

    return-void
.end method
