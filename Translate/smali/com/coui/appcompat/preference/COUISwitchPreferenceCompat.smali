.class public Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/COUIRecyclerView$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$Listener;
    }
.end annotation


# instance fields
.field private mAssignment:Ljava/lang/CharSequence;

.field private mAssignmentColor:I

.field private mDividerDefaultHorizontalPadding:I

.field private mIsEnableClickSpan:Z

.field private mItemView:Landroid/view/View;

.field private final mListener:Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$Listener;

.field private mSwitchView:Lcom/coui/appcompat/couiswitch/COUISwitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Landroidx/preference/R$attr;->switchPreferenceCompatStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p4, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$Listener;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$Listener;-><init>(Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$1;)V

    iput-object p4, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mListener:Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$Listener;

    const/4 p4, 0x0

    .line 6
    iput p4, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mAssignmentColor:I

    .line 7
    sget-object v0, Lcom/support/preference/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiEnalbeClickSpan:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mIsEnableClickSpan:Z

    .line 9
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiAssignment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mAssignment:Ljava/lang/CharSequence;

    .line 10
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiAssignmentColor:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mAssignmentColor:I

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/preference/R$dimen;->coui_preference_divider_default_horizontal_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mDividerDefaultHorizontalPadding:I

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->callCustomChangeListener(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mItemView:Landroid/view/View;

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

    iget p0, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mDividerDefaultHorizontalPadding:I

    return p0
.end method

.method public getDividerStartAlignView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mItemView:Landroid/view/View;

    return-object p0
.end method

.method public getDividerStartInset()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mDividerDefaultHorizontalPadding:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mItemView:Landroid/view/View;

    sget v0, Lcom/support/preference/R$id;->coui_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_0
    sget v0, Lcom/support/preference/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz v2, :cond_1

    move-object v3, v0

    check-cast v3, Lcom/coui/appcompat/couiswitch/COUISwitch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iput-object v3, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mSwitchView:Lcom/coui/appcompat/couiswitch/COUISwitch;

    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroidx/preference/l;)V

    if-eqz v2, :cond_2

    check-cast v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mListener:Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$Listener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mIsEnableClickSpan:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->setSummaryView(Landroid/content/Context;Landroidx/preference/l;)V

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mAssignment:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mAssignmentColor:I

    invoke-static {p1, v0, v1}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->bindAssignmentView(Landroidx/preference/l;Ljava/lang/CharSequence;I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->getPositionInGroup(Landroidx/preference/Preference;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->setItemCardBackground(Landroid/view/View;I)V

    return-void
.end method

.method protected onClick()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mSwitchView:Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setShouldPlaySound(Z)V

    :cond_0
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    return-void
.end method

.method public setAssignment(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mAssignment:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mAssignment:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setAssignmentColor(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mAssignmentColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mAssignmentColor:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setIsEnableClickSpan(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mIsEnableClickSpan:Z

    return-void
.end method
