.class public Lcom/coui/appcompat/preference/COUIPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/preference/COUICardSupportInterface;
.implements Landroidx/recyclerview/widget/COUIRecyclerView$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUIPreference$SummaryLineType;
    }
.end annotation


# static fields
.field public static final CIRCLE:I = 0x0

.field static final DEFAULT_RADIUS:I = 0xe

.field static final DEFAULT_SCALE:I = 0x3

.field public static final FORCE_CLICK:I = 0x1

.field public static final FORCE_UNCLICK:I = 0x2

.field static final MAX_RADIUS:I = 0x24

.field static final MIN_RADIUS:I = 0xe

.field public static final NORMAL:I = 0x0

.field static final NO_ICON_HEIGHT:I = 0x0

.field public static final ROUND:I = 0x1

.field public static final SUMMARY_LINE_DEFAULT:I = 0x0

.field public static final SUMMARY_LINE_ONE:I = 0x1

.field public static final SUMMARY_LINE_TWO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "COUIPreference-"

.field static final ratio:I = 0x6


# instance fields
.field private assignRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

.field private assignmentIcon:Lcom/coui/appcompat/imageview/COUIRoundImageView;

.field private endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

.field private iconRedDot:Landroid/view/View;

.field private mAssignIconRes:Landroid/graphics/drawable/Drawable;

.field private mAssignRedDotMode:I

.field private mAssignment:Ljava/lang/CharSequence;

.field private mAssignmentColor:I

.field private mClickStyle:I

.field private mContext:Landroid/content/Context;

.field private mCouiSetDefaultColor:Z

.field private mCouiSummaryLineLimit:I

.field private mDividerDefaultHorizontalPadding:I

.field private mEndRedDotMode:I

.field private mEndRedDotNum:I

.field private mHasBorder:Z

.field private mIconRedDotMode:I

.field private mIconStyle:I

.field private mIsBackgroundAnimationEnabled:Z

.field private mIsCustom:Z

.field private mIsEnableClickSpan:Z

.field private mIsSelected:Z

.field private mIsSupportCardUse:Z

.field private mItemView:Landroid/view/View;

.field mJumpRes:Landroid/graphics/drawable/Drawable;

.field private mPreciseHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

.field protected mPreciseListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

.field private mRadius:I

.field private mShowDivider:Z

.field mStatusText1:Ljava/lang/CharSequence;

.field private mSummaryTextColor:Landroid/content/res/ColorStateList;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleTextColor:Landroid/content/res/ColorStateList;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Landroidx/preference/R$attr;->preferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mClickStyle:I

    .line 7
    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSelected:Z

    .line 8
    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsBackgroundAnimationEnabled:Z

    .line 9
    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsCustom:Z

    const/4 v2, 0x0

    .line 10
    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mTitleTextColor:Landroid/content/res/ColorStateList;

    .line 11
    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mSummaryTextColor:Landroid/content/res/ColorStateList;

    .line 12
    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mCouiSetDefaultColor:Z

    .line 13
    iput v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mCouiSummaryLineLimit:I

    .line 14
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/preference/R$dimen;->coui_preference_divider_default_horizontal_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mDividerDefaultHorizontalPadding:I

    .line 16
    sget-object v2, Lcom/support/preference/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 17
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiShowDivider:I

    iget-boolean p3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    .line 18
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiEnalbeClickSpan:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsEnableClickSpan:Z

    .line 19
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_coui_jump_mark:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 20
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_coui_assign_icon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignIconRes:Landroid/graphics/drawable/Drawable;

    .line 21
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_coui_jump_status1:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 22
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiClickStyle:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mClickStyle:I

    .line 23
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiAssignment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 24
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiAssignmentColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignmentColor:I

    .line 25
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiIconStyle:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconStyle:I

    .line 26
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_hasBorder:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mHasBorder:Z

    .line 27
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_preference_icon_radius:I

    const/16 p3, 0xe

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mRadius:I

    .line 28
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_iconRedDotMode:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconRedDotMode:I

    .line 29
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_endRedDotMode:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotMode:I

    .line 30
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_assignRedDotMode:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignRedDotMode:I

    .line 31
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_endRedDotNum:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotNum:I

    .line 32
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_isBackgroundAnimationEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsBackgroundAnimationEnabled:Z

    .line 33
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_isSupportCardUse:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSupportCardUse:Z

    .line 34
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiSetDefaultColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mCouiSetDefaultColor:Z

    if-eqz p2, :cond_0

    .line 35
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_titleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mTitleTextColor:Landroid/content/res/ColorStateList;

    .line 36
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiSummaryColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mSummaryTextColor:Landroid/content/res/ColorStateList;

    .line 37
    :cond_0
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiIsCustomIcon:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsCustom:Z

    .line 38
    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiSummaryLineLimit:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mCouiSummaryLineLimit:I

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initPreciseHelper()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mPreciseListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreference;->removePreciseClickListener()V

    new-instance v0, Lcom/coui/appcompat/poplist/PreciseClickHelper;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mItemView:Landroid/view/View;

    new-instance v2, Lcom/coui/appcompat/preference/COUIPreference$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/preference/COUIPreference$1;-><init>(Lcom/coui/appcompat/preference/COUIPreference;)V

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/poplist/PreciseClickHelper;-><init>(Landroid/view/View;Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mPreciseHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PreciseClickHelper;->setup()V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeEndRedDotNumberWithAnim(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotNum:I

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->changePointNumber(I)V

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointNumber(I)V

    :cond_0
    return-void
.end method

.method public dismissAssignRedDot()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->assignRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->assignRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->assignRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->executeScaleAnim(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public dismissEndRedDot()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->executeScaleAnim(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public dismissIconRedDot()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    instance-of v1, v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    check-cast v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->executeScaleAnim(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public drawDivider()Z
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mItemView:Landroid/view/View;

    instance-of v0, v0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->getPositionInGroup(Landroidx/preference/Preference;)I

    move-result p0

    if-eq p0, v2, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public getAssignRedDotMode()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignRedDotMode:I

    return p0
.end method

.method public getAssignment()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignment:Ljava/lang/CharSequence;

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

.method public getClickStyle()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mClickStyle:I

    return p0
.end method

.method public getDividerEndAlignView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDividerEndInset()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mDividerDefaultHorizontalPadding:I

    return p0
.end method

.method public getDividerStartAlignView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDividerStartInset()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mDividerDefaultHorizontalPadding:I

    return p0
.end method

.method public getEndRedDotMode()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotMode:I

    return p0
.end method

.method public getEndRedDotNum()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotNum:I

    return p0
.end method

.method public getIconRedDotMode()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconRedDotMode:I

    return p0
.end method

.method public getIconStyle()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconStyle:I

    return p0
.end method

.method public getIsSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSelected:Z

    return p0
.end method

.method public getStatusText1()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isShowDivider()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    return p0
.end method

.method public isSupportCardUse()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSupportCardUse:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 9

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/l;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->getPositionInGroup(Landroidx/preference/Preference;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->setItemCardBackground(Landroid/view/View;I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    instance-of v1, v0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->consumeDispatchingEventForState(Z)V

    :cond_0
    sget v0, Lcom/support/preference/R$id;->coui_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mClickStyle:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_3
    :goto_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mItemView:Landroid/view/View;

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIPreference;->initPreciseHelper()V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mItemView:Landroid/view/View;

    if-eqz v0, :cond_5

    instance-of v1, v0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    iget-boolean v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsBackgroundAnimationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->setBackgroundAnimationEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mItemView:Landroid/view/View;

    instance-of v1, v0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    iget-boolean v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSelected:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setIsSelected(Z)V

    :cond_5
    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignmentColor:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreference;->getAssignment()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p1, v0, v1, v3}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->bindView(Landroidx/preference/l;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreference;->getAssignment()Ljava/lang/CharSequence;

    move-result-object v3

    iget v4, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignmentColor:I

    invoke-static {p1, v0, v1, v3, v4}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->bindView(Landroidx/preference/l;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :goto_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mTitleTextColor:Landroid/content/res/ColorStateList;

    invoke-static {v0, p1, v1}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->setTitleViewColor(Landroid/content/Context;Landroidx/preference/l;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/coui/appcompat/preference/COUIPreference;->mRadius:I

    iget-boolean v6, p0, Lcom/coui/appcompat/preference/COUIPreference;->mHasBorder:Z

    iget v7, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconStyle:I

    iget-boolean v8, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsCustom:Z

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->setIconStyle(Landroidx/preference/l;Landroid/content/Context;IZIZ)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mSummaryTextColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->setSummaryViewColor(Landroidx/preference/l;Landroid/content/res/ColorStateList;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsEnableClickSpan:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->setSummaryView(Landroid/content/Context;Landroidx/preference/l;)V

    :cond_7
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mTitleView:Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mCouiSummaryLineLimit:I

    if-nez v1, :cond_8

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mSummaryView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mSummaryView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_9
    :goto_2
    sget v0, Lcom/support/preference/R$id;->img_red_dot:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    sget v0, Lcom/support/preference/R$id;->jump_icon_red_dot:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    sget v0, Lcom/support/preference/R$id;->assignment_red_dot:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->assignRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    sget v0, Lcom/support/preference/R$id;->assignment_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/imageview/COUIRoundImageView;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->assignmentIcon:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    const/16 v0, 0x8

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignIconRes:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->assignmentIcon:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    instance-of v1, p1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconRedDotMode:I

    if-eqz v1, :cond_c

    check-cast p1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setLaidOut()V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    check-cast p1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconRedDotMode:I

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_4

    :cond_c
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz p1, :cond_f

    iget p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotMode:I

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setLaidOut()V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotMode:I

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotNum:I

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointNumber(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_5

    :cond_e
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    :goto_5
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->assignRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz p1, :cond_11

    iget p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignRedDotMode:I

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->assignRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setLaidOut()V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->assignRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->assignRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignRedDotMode:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->assignRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_6

    :cond_10
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->assignRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    :goto_6
    return-void
.end method

.method public onDetached()V
    .locals 0

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreference;->removePreciseClickListener()V

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public removePreciseClickListener()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mPreciseHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PreciseClickHelper;->unSet()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mPreciseHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    :cond_0
    return-void
.end method

.method public setAssignIconRes(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignIconRes:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignIconRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setAssignRedDotMode(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignRedDotMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignRedDotMode:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setAssignment(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setAssignmentColor(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignmentColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignmentColor:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setBackgroundAnimationEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsBackgroundAnimationEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsBackgroundAnimationEnabled:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setBorderRectRadius(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mRadius:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mRadius:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setClickStyle(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mClickStyle:I

    return-void
.end method

.method public setCouiSummaryLine(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mCouiSummaryLineLimit:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mCouiSummaryLineLimit:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setEndRedDotMode(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotMode:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setEndRedDotNum(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotNum:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotNum:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setIconRedDotMode(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconRedDotMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconRedDotMode:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setIconStyle(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconStyle:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public setIsCustomIconRadius(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsCustom:Z

    return-void
.end method

.method public setIsEnableClickSpan(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsEnableClickSpan:Z

    return-void
.end method

.method public setIsSupportCardUse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSupportCardUse:Z

    return-void
.end method

.method public setJump(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->setJump(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setJump(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setOnPreciseClickListener(Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mPreciseListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIPreference;->initPreciseHelper()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSelected:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSelected:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setSelectedState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSelected:Z

    return-void
.end method

.method public setShowDivider(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setStatusText1(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setSummaryTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mSummaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setTitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mTitleTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mTitleTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public showAssignRedDot()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->assignRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->assignRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->executeScaleAnim(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public showEndRedDot()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->executeScaleAnim(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public showIconRedDot()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    instance-of v1, v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->executeScaleAnim(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
