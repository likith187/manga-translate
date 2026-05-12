.class public Lcom/coui/appcompat/preference/COUIListPreference;
.super Landroidx/preference/ListPreference;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/preference/COUICardSupportInterface;
.implements Landroidx/recyclerview/widget/COUIRecyclerView$b;


# instance fields
.field private mAssignment:Ljava/lang/CharSequence;

.field private mBlurBackground:Z

.field private mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

.field private mDividerDefaultHorizontalPadding:I

.field private mIfFollowHand:Z

.field private mIsSupportCardUse:Z

.field private mItemView:Landroid/view/View;

.field mJumpRes:Landroid/graphics/drawable/Drawable;

.field private mLastTouchPoint:Landroid/graphics/Point;

.field private mPreferenceView:Landroid/view/View;

.field mStatusText1:Ljava/lang/CharSequence;

.field mSummaries:[Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    sget v0, Lcom/support/preference/R$style;->Preference_COUI_COUIWithPopupIcon:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mLastTouchPoint:Landroid/graphics/Point;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mIfFollowHand:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mBlurBackground:Z

    .line 6
    sget-object v2, Lcom/support/preference/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_isSupportCardUse:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mIsSupportCardUse:Z

    .line 8
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiAssignment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 9
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_coui_jump_mark:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 10
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_coui_jump_status1:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 11
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiIfFollowHand:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mIfFollowHand:Z

    .line 12
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiDialogBlurBackground:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mBlurBackground:Z

    .line 13
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiBlurAnimLevel:I

    sget-object p3, Lcom/coui/appcompat/uiutil/UIUtil;->ANIM_LEVEL_SUPPORT_BLUR_MIN:Lcom/coui/appcompat/uiutil/AnimLevel;

    .line 14
    invoke-virtual {p3}, Lcom/coui/appcompat/uiutil/AnimLevel;->getIntValue()I

    move-result p3

    .line 15
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2}, Lcom/coui/appcompat/uiutil/AnimLevel;->valueOf(I)Lcom/coui/appcompat/uiutil/AnimLevel;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/preference/R$dimen;->coui_preference_divider_default_horizontal_padding:I

    .line 18
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mDividerDefaultHorizontalPadding:I

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/preference/COUIListPreference;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mLastTouchPoint:Landroid/graphics/Point;

    return-object p0
.end method


# virtual methods
.method public drawDivider()Z
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mItemView:Landroid/view/View;

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

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mAssignment:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getBlurMinAnimLevel()Lcom/coui/appcompat/uiutil/AnimLevel;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

    return-object p0
.end method

.method public getDividerEndAlignView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDividerEndInset()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mDividerDefaultHorizontalPadding:I

    return p0
.end method

.method public getDividerStartAlignView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDividerStartInset()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mDividerDefaultHorizontalPadding:I

    return p0
.end method

.method public getJump()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getLastTouchPoint()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mLastTouchPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method public getPreferenceView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mPreferenceView:Landroid/view/View;

    return-object p0
.end method

.method public getStatusText1()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText1:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSummaries()[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mSummaries:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isBlurBackground()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mBlurBackground:Z

    return p0
.end method

.method public isIfFollowHand()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mIfFollowHand:Z

    return p0
.end method

.method public isSupportCardUse()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mIsSupportCardUse:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/l;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mItemView:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIListPreference;->getAssignment()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->bindView(Landroidx/preference/l;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->getPositionInGroup(Landroidx/preference/Preference;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->setItemCardBackground(Landroid/view/View;I)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mTitleView:Landroid/widget/TextView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mPreferenceView:Landroid/view/View;

    new-instance v0, Lcom/coui/appcompat/preference/COUIListPreference$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/preference/COUIListPreference$1;-><init>(Lcom/coui/appcompat/preference/COUIListPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setAssignment(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setBlurBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mBlurBackground:Z

    return-void
.end method

.method public setBlurMinAnimLevel(Lcom/coui/appcompat/uiutil/AnimLevel;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

    return-void
.end method

.method public setIfFollowHand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mIfFollowHand:Z

    return-void
.end method

.method public setIsSupportCardUse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mIsSupportCardUse:Z

    return-void
.end method

.method public setJump(I)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIListPreference;->setJump(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setJump(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setStatusText1(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText1:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setSummaries([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mSummaries:[Ljava/lang/CharSequence;

    return-void
.end method
