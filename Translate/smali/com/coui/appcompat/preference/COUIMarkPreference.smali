.class public Lcom/coui/appcompat/preference/COUIMarkPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/preference/COUICardSupportInterface;
.implements Landroidx/recyclerview/widget/COUIRecyclerView$b;


# static fields
.field public static final CIRCLE:I = 0x0

.field static final DEFAULT_RADIUS:I = 0xe

.field public static final HEAD_MARK:I = 0x1

.field public static final ROUND:I = 0x1

.field public static final TAIL_MARK:I


# instance fields
.field private mAssignment:Ljava/lang/CharSequence;

.field private mAssignmentColor:I

.field private mDividerDefaultHorizontalPadding:I

.field private mHasBorder:Z

.field private mIconStyle:I

.field private mIsCustom:Z

.field private mIsEnableClickSpan:Z

.field private mIsSupportCardUse:Z

.field private mItemView:Landroid/view/View;

.field mMarkStyle:I

.field private mRadius:I

.field private mShowDivider:Z

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 22
    sget v0, Lcom/support/preference/R$attr;->couiMarkPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 21
    sget v0, Lcom/support/preference/R$style;->Preference_COUI_COUIMarkPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mMarkStyle:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mShowDivider:Z

    .line 4
    iput v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mAssignmentColor:I

    .line 5
    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mIsCustom:Z

    .line 6
    sget-object v2, Lcom/support/preference/R$styleable;->COUIMarkPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 7
    sget v3, Lcom/support/preference/R$styleable;->COUIMarkPreference_couiMarkStyle:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mMarkStyle:I

    .line 8
    sget v3, Lcom/support/preference/R$styleable;->COUIMarkPreference_couiMarkAssignment:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    sget-object v2, Lcom/support/preference/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiShowDivider:I

    iget-boolean p3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mShowDivider:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mShowDivider:Z

    .line 12
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiEnalbeClickSpan:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mIsEnableClickSpan:Z

    .line 13
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_isSupportCardUse:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mIsSupportCardUse:Z

    .line 14
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiIconStyle:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mIconStyle:I

    .line 15
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_hasBorder:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mHasBorder:Z

    .line 16
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_preference_icon_radius:I

    const/16 p3, 0xe

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mRadius:I

    .line 17
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiAssignmentColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mAssignmentColor:I

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/preference/R$dimen;->coui_preference_divider_default_horizontal_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mDividerDefaultHorizontalPadding:I

    .line 20
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public drawDivider()Z
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mItemView:Landroid/view/View;

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

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mAssignment:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getBorderRectRadius(I)I
    .locals 1

    const/4 p0, 0x1

    const/16 v0, 0xe

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :cond_1
    :goto_0
    return v0
.end method

.method public getDividerEndAlignView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDividerEndInset()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mDividerDefaultHorizontalPadding:I

    return p0
.end method

.method public getDividerStartAlignView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDividerStartInset()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mDividerDefaultHorizontalPadding:I

    return p0
.end method

.method public getMarkStyle()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mMarkStyle:I

    return p0
.end method

.method public isSupportCardUse()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mIsSupportCardUse:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 9

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/l;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mItemView:Landroid/view/View;

    sget v0, Lcom/support/preference/R$id;->coui_tail_mark:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mItemView:Landroid/view/View;

    new-instance v2, Lcom/coui/appcompat/preference/COUIMarkPreference$1;

    invoke-direct {v2, p0, v0}, Lcom/coui/appcompat/preference/COUIMarkPreference$1;-><init>(Lcom/coui/appcompat/preference/COUIMarkPreference;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mMarkStyle:I

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    sget v0, Lcom/support/preference/R$id;->coui_head_mark:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mMarkStyle:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mRadius:I

    iget-boolean v6, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mHasBorder:Z

    iget v7, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mIconStyle:I

    iget-boolean v8, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mIsCustom:Z

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->setIconStyle(Landroidx/preference/l;Landroid/content/Context;IZIZ)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mTitleView:Landroid/widget/TextView;

    sget v0, Lcom/support/preference/R$id;->img_layout:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mIsEnableClickSpan:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->setSummaryView(Landroid/content/Context;Landroidx/preference/l;)V

    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mAssignment:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mAssignmentColor:I

    invoke-static {p1, v0, v1}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->bindAssignmentView(Landroidx/preference/l;Ljava/lang/CharSequence;I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->getPositionInGroup(Landroidx/preference/Preference;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->setItemCardBackground(Landroid/view/View;I)V

    return-void
.end method

.method public setAssignment(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setAssignmentColor(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mAssignmentColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mAssignmentColor:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setBorderRectRadius(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mRadius:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mRadius:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setIsCustomIconRadius(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mIsCustom:Z

    return-void
.end method

.method public setIsEnableClickSpan(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mIsEnableClickSpan:Z

    return-void
.end method

.method public setIsSupportCardUse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mIsSupportCardUse:Z

    return-void
.end method

.method public setMarkStyle(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mMarkStyle:I

    return-void
.end method
