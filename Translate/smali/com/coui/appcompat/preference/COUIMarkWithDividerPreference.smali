.class public Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;
.super Lcom/coui/appcompat/preference/COUIMarkPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$OnMainLayoutClickListener;
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$OnMainLayoutClickListener;

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mPreciseHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

.field private mPreciseListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

.field private mRadioLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 3
    sget v0, Lcom/support/preference/R$attr;->couiRadioWithDividerPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 2
    sget v0, Lcom/support/preference/R$style;->Preference_COUI_COUIRadioWithDividerPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/preference/COUIMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$OnMainLayoutClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mClickListener:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$OnMainLayoutClickListener;

    return-object p0
.end method

.method static synthetic access$101(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)V
    .locals 0

    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    return-void
.end method

.method static synthetic access$200(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mPreciseListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mMainLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private initPreciseHelper()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mMainLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mPreciseListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->removePreciseClickListener()V

    new-instance v0, Lcom/coui/appcompat/poplist/PreciseClickHelper;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mMainLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$3;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$3;-><init>(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)V

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/poplist/PreciseClickHelper;-><init>(Landroid/view/View;Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mPreciseHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PreciseClickHelper;->setup()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getOnMainLayoutClickListener()Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$OnMainLayoutClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mClickListener:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$OnMainLayoutClickListener;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 3

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    sget v1, Lcom/support/preference/R$id;->main_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    instance-of v2, v1, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    check-cast v1, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setMainLayoutToSetExtraPadding(Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIMarkPreference;->onBindViewHolder(Landroidx/preference/l;)V

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->initPreciseHelper()V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mMainLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mPreciseListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    if-nez v1, :cond_1

    new-instance v1, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$1;-><init>(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    sget v0, Lcom/support/preference/R$id;->radio_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mRadioLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$2;-><init>(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mRadioLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    :cond_3
    return-void
.end method

.method public removePreciseClickListener()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mPreciseHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PreciseClickHelper;->unSet()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mPreciseHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mMainLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$4;-><init>(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setOnMainLayoutListener(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$OnMainLayoutClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mClickListener:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$OnMainLayoutClickListener;

    return-void
.end method

.method public setOnPreciseClickListener(Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->mPreciseListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->initPreciseHelper()V

    return-void
.end method
