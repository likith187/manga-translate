.class public Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/preference/COUICardSupportInterface;
.implements Landroidx/recyclerview/widget/COUIRecyclerView$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;
    }
.end annotation


# instance fields
.field private mAssignment:Ljava/lang/CharSequence;

.field private mAssignmentColor:I

.field mCheckableView:Landroid/view/View;

.field private mDividerDefaultHorizontalPadding:I

.field private mIsEnableClickSpan:Z

.field private mIsSupportCardUse:Z

.field private mItemView:Landroid/view/View;

.field private final mListener:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;

.field private mOnLoadingStateChangedListener:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;

.field private mSwitchView:Lcom/coui/appcompat/couiswitch/COUISwitch;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/preference/R$attr;->couiSwitchLoadPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/preference/R$style;->Preference_COUI_SwitchPreference_Loading:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p4, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;-><init>(Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$1;)V

    iput-object p4, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mListener:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;

    const/4 p4, 0x0

    .line 6
    iput p4, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mAssignmentColor:I

    .line 7
    sget-object v0, Lcom/support/preference/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiEnalbeClickSpan:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mIsEnableClickSpan:Z

    .line 9
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_isSupportCardUse:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mIsSupportCardUse:Z

    .line 10
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiAssignment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 11
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiAssignmentColor:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mAssignmentColor:I

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

    iput p1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mDividerDefaultHorizontalPadding:I

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->callCustomChangeListener(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private callCustomChangeListener(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$c;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$c;->a(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public drawDivider()Z
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mItemView:Landroid/view/View;

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

.method public getDividerEndAlignView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDividerEndInset()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mDividerDefaultHorizontalPadding:I

    return p0
.end method

.method public getDividerStartAlignView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDividerStartInset()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mDividerDefaultHorizontalPadding:I

    return p0
.end method

.method public getSwitch()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    return-object p0
.end method

.method public isSupportCardUse()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mIsSupportCardUse:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 3

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mItemView:Landroid/view/View;

    sget v0, Lcom/support/preference/R$id;->coui_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    :cond_0
    sget v0, Lcom/support/preference/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    instance-of v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mSwitchView:Lcom/coui/appcompat/couiswitch/COUISwitch;

    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroidx/preference/l;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    instance-of v1, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setLoadingStyle(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mOnLoadingStateChangedListener:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setOnLoadingStateChangedListener(Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;)V

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mListener:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mIsEnableClickSpan:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->setSummaryView(Landroid/content/Context;Landroidx/preference/l;)V

    :cond_3
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/support/preference/R$id;->img_layout:I

    invoke-virtual {p1, v1}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mAssignment:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mAssignmentColor:I

    invoke-static {p1, v0, v1}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->bindAssignmentView(Landroidx/preference/l;Ljava/lang/CharSequence;I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->getPositionInGroup(Landroidx/preference/Preference;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->setItemCardBackground(Landroid/view/View;I)V

    return-void
.end method

.method protected onClick()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mSwitchView:Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setShouldPlaySound(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mSwitchView:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setTactileFeedbackEnabled(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mSwitchView:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->startLoading()V

    :cond_0
    return-void
.end method

.method public setAssignment(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setAssignmentColor(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mAssignmentColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mAssignmentColor:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setIsEnableClickSpan(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mIsEnableClickSpan:Z

    return-void
.end method

.method public setIsSupportCardUse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mIsSupportCardUse:Z

    return-void
.end method

.method public setOnLoadingStateChangedListener(Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mOnLoadingStateChangedListener:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    instance-of v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setOnLoadingStateChangedListener(Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public startLoading()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->startLoading()V

    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->stopLoading()V

    :cond_0
    return-void
.end method
