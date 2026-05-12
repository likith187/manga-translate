.class public Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/preference/COUICardSupportInterface;
.implements Landroidx/recyclerview/widget/COUIRecyclerView$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$OnMainLayoutClickListener;
    }
.end annotation


# instance fields
.field private mAssignment:Ljava/lang/CharSequence;

.field private mAssignmentColor:I

.field private mCheckBoxLayout:Landroid/widget/LinearLayout;

.field private mClickListener:Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$OnMainLayoutClickListener;

.field private mDividerDefaultHorizontalPadding:I

.field private mIsSupportCardUse:Z

.field private mItemView:Landroid/view/View;

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mPreciseHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

.field private mPreciseListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/preference/R$attr;->couiCheckBoxWithDividerPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/preference/R$style;->Preference_COUI_COUICheckBoxWithDividerPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mAssignmentColor:I

    .line 6
    sget-object v1, Lcom/support/preference/R$styleable;->COUICheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 7
    sget v2, Lcom/support/preference/R$styleable;->COUICheckBoxPreference_couiCheckBoxAssignment:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    sget-object v2, Lcom/support/preference/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_isSupportCardUse:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mIsSupportCardUse:Z

    .line 11
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiAssignmentColor:I

    invoke-virtual {v1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mAssignmentColor:I

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/preference/R$dimen;->coui_preference_divider_default_horizontal_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mDividerDefaultHorizontalPadding:I

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;)Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$OnMainLayoutClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mClickListener:Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$OnMainLayoutClickListener;

    return-object p0
.end method

.method static synthetic access$101(Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;)V
    .locals 0

    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    return-void
.end method

.method static synthetic access$200(Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;)Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mPreciseListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mMainLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private initPreciseHelper()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mMainLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mPreciseListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->removePreciseClickListener()V

    new-instance v0, Lcom/coui/appcompat/poplist/PreciseClickHelper;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mMainLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$3;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$3;-><init>(Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;)V

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/poplist/PreciseClickHelper;-><init>(Landroid/view/View;Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mPreciseHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PreciseClickHelper;->setup()V

    :cond_0
    return-void
.end method


# virtual methods
.method public drawDivider()Z
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mItemView:Landroid/view/View;

    instance-of v0, v0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->getPositionInGroup(Landroidx/preference/Preference;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public getAssignment()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mAssignment:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public bridge synthetic getDividerEndAlignView()Landroid/view/View;
    .locals 0

    invoke-super {p0}, Landroidx/recyclerview/widget/COUIRecyclerView$b;->getDividerEndAlignView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getDividerEndInset()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mDividerDefaultHorizontalPadding:I

    return p0
.end method

.method public getDividerStartAlignView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDividerStartInset()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mDividerDefaultHorizontalPadding:I

    return p0
.end method

.method public getOnMainLayoutClickListener()Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$OnMainLayoutClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mClickListener:Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$OnMainLayoutClickListener;

    return-object p0
.end method

.method public isSupportCardUse()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mIsSupportCardUse:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/l;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    sget v1, Lcom/support/preference/R$id;->main_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    instance-of v2, v1, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    check-cast v1, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setMainLayoutToSetExtraPadding(Landroid/view/View;)V

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mItemView:Landroid/view/View;

    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/support/preference/R$id;->img_layout:I

    invoke-virtual {p1, v2}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/coui/appcompat/checkbox/COUICheckBox;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    :cond_4
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->initPreciseHelper()V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mMainLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mPreciseListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    if-nez v1, :cond_5

    new-instance v1, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$1;-><init>(Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_6
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    sget v1, Lcom/support/preference/R$id;->check_box_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$2;-><init>(Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mAssignment:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mAssignmentColor:I

    invoke-static {p1, v0, v1}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->bindAssignmentView(Landroidx/preference/l;Ljava/lang/CharSequence;I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->getPositionInGroup(Landroidx/preference/Preference;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->setItemCardBackground(Landroid/view/View;I)V

    return-void
.end method

.method public removePreciseClickListener()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mPreciseHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PreciseClickHelper;->unSet()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mPreciseHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mMainLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$4;-><init>(Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setAssignment(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setAssignmentColor(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mAssignmentColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mAssignmentColor:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setIsSupportCardUse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mIsSupportCardUse:Z

    return-void
.end method

.method public setOnMainLayoutListener(Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$OnMainLayoutClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mClickListener:Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$OnMainLayoutClickListener;

    return-void
.end method

.method public setOnPreciseClickListener(Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->mPreciseListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->initPreciseHelper()V

    return-void
.end method
