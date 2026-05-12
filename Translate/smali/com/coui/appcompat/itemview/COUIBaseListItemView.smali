.class public Lcom/coui/appcompat/itemview/COUIBaseListItemView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/n;


# static fields
.field public static final CIRCLE:I = 0x0

.field private static final DEFAULT_RADIUS:I = 0xe

.field private static final DELAY_TIME:I = 0x46

.field public static final FORCE_CLICKABLE:I = 0x1

.field public static final FORCE_UNCLICKABLE:I = 0x2

.field private static final PER_HEIGHT:I = 0x6

.field public static final ROUND:I = 0x1


# instance fields
.field private mAssignIconView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

.field private mAssignRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

.field private mAssignView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mEndRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

.field private mHasBorder:Z

.field private mIconRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

.field private mIconStyle:I

.field private mIconView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

.field private mIsCustom:Z

.field private mItemEnabled:Z

.field private mRadius:I

.field private mRootItemView:Landroid/view/View;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field private mWidgetFrame:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mItemEnabled:Z

    const/16 v1, 0xe

    .line 6
    iput v1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRadius:I

    .line 7
    iput v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconStyle:I

    .line 8
    iput-object p1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mContext:Landroid/content/Context;

    .line 9
    sget-object v1, Lcom/support/preference/R$styleable;->COUIBaseListItemView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 10
    sget p3, Lcom/support/preference/R$styleable;->COUIBaseListItemView_assignInRightAsMainLayout:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 11
    sget p4, Lcom/support/preference/R$styleable;->COUIBaseListItemView_iconMarginDependOnImageView:I

    const/4 v1, 0x0

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    .line 12
    sget v2, Lcom/support/preference/R$styleable;->COUIBaseListItemView_itemEnabled:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mItemEnabled:Z

    .line 13
    sget v2, Lcom/support/preference/R$styleable;->COUIBaseListItemView_title:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 14
    sget v3, Lcom/support/preference/R$styleable;->COUIBaseListItemView_summary:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 15
    sget v4, Lcom/support/preference/R$styleable;->COUIBaseListItemView_icon:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 16
    sget v5, Lcom/support/preference/R$styleable;->COUIBaseListItemView_assignment:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 17
    sget v6, Lcom/support/preference/R$styleable;->COUIBaseListItemView_assignmentIcon:I

    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 18
    sget v7, Lcom/support/preference/R$styleable;->COUIBaseListItemView_widgetLayout:I

    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 19
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p3, :cond_0

    .line 20
    sget p2, Lcom/support/preference/R$layout;->coui_preference_assignment_in_right:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/support/preference/R$layout;->coui_preference:I

    .line 21
    :goto_0
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 22
    sget p2, Lcom/support/preference/R$id;->coui_preference:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRootItemView:Landroid/view/View;

    .line 23
    sget p2, Lcom/support/preference/R$id;->img_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020006

    .line 24
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/imageview/COUIRoundImageView;

    iput-object p3, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    .line 25
    sget p3, Lcom/support/preference/R$id;->img_red_dot:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iput-object p3, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const p3, 0x1020016

    .line 26
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mTitleView:Landroid/widget/TextView;

    const p3, 0x1020010

    .line 27
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mSummaryView:Landroid/widget/TextView;

    .line 28
    sget p3, Lcom/support/preference/R$id;->jump_icon_red_dot:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iput-object p3, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mEndRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    .line 29
    sget p3, Lcom/support/preference/R$id;->assignment_red_dot:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iput-object p3, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mAssignRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    .line 30
    sget p3, Lcom/support/preference/R$id;->assignment_icon:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/imageview/COUIRoundImageView;

    iput-object p3, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mAssignIconView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    .line 31
    sget p3, Lcom/support/preference/R$id;->assignment:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mAssignView:Landroid/widget/TextView;

    const p3, 0x1020018

    .line 32
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mWidgetFrame:Landroid/view/ViewGroup;

    .line 33
    iget-object p1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRootItemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 34
    invoke-direct {p0, p4}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->setIconMarginDependOnImageView(Z)V

    .line 35
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->setSummary(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-virtual {p0, v5}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->setAssignment(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p0, v6}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->setAssignIcon(Landroid/graphics/drawable/Drawable;)V

    .line 41
    invoke-virtual {p0, v7}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->setWidgetView(I)V

    .line 42
    iget p1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRadius:I

    iget-boolean p2, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mHasBorder:Z

    iget p3, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconStyle:I

    iget-boolean p4, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIsCustom:Z

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->setIconStyle(IZIZ)V

    .line 43
    iget-boolean p1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mItemEnabled:Z

    invoke-direct {p0, p0, p1}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->setEnableState(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/itemview/COUIBaseListItemView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mSummaryView:Landroid/widget/TextView;

    return-object p0
.end method

.method private setEnableState(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->setEnableState(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setIconMarginDependOnImageView(Z)V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRootItemView:Landroid/view/View;

    instance-of v0, p0, Lcom/coui/appcompat/preference/COUICustomListSelectedLinearLayout;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/coui/appcompat/preference/COUICustomListSelectedLinearLayout;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUICustomListSelectedLinearLayout;->setIconMarginDependOnImageView(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAssignIconView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mAssignIconView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    return-object p0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    return-object p0
.end method

.method public getItemEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mItemEnabled:Z

    return p0
.end method

.method public final getRootItemView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRootItemView:Landroid/view/View;

    return-object p0
.end method

.method public final setAssignIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mAssignIconView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mAssignIconView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAssignRedDotMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mAssignRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setLaidOut()V

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mAssignRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mAssignRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mAssignRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setAssignment(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mAssignView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mAssignView:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mAssignView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setAssignmentColor(I)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mAssignView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setClickableStyle(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRootItemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRootItemView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    return-void
.end method

.method public setCustomIconRadius(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIsCustom:Z

    iget v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRadius:I

    iget-boolean v1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mHasBorder:Z

    iget v2, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconStyle:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->setIconStyle(IZIZ)V

    return-void
.end method

.method public final setEnable(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p0, p1}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->setEnableState(Landroid/view/View;Z)V

    return-void
.end method

.method public setEndRedDotMode(II)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mEndRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setLaidOut()V

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mEndRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mEndRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget-object p1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mEndRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointNumber(I)V

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mEndRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mEndRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setIconBorderRadius(I)V
    .locals 3

    iput p1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRadius:I

    iget-boolean v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mHasBorder:Z

    iget v1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconStyle:I

    iget-boolean v2, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIsCustom:Z

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->setIconStyle(IZIZ)V

    return-void
.end method

.method public setIconHasBorder(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mHasBorder:Z

    iget v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRadius:I

    iget v1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconStyle:I

    iget-boolean v2, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIsCustom:Z

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->setIconStyle(IZIZ)V

    return-void
.end method

.method public setIconRedDotMode(I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setLaidOut()V

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setIconStyle(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconStyle:I

    .line 2
    iget v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRadius:I

    iget-boolean v1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mHasBorder:Z

    iget-boolean v2, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIsCustom:Z

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->setIconStyle(IZIZ)V

    :cond_1
    return-void
.end method

.method public final setIconStyle(IZIZ)V
    .locals 1

    if-eqz p4, :cond_0

    .line 3
    iget-object p1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setHasBorder(Z)V

    .line 4
    iget-object p1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setBorderRectRadius(I)V

    .line 5
    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setType(I)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object p4, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_2

    const/16 v0, 0xe

    if-ne p1, v0, :cond_2

    .line 7
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x6

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/support/preference/R$dimen;->coui_preference_icon_min_radius:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    if-ge p1, p4, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/support/preference/R$dimen;->coui_preference_icon_min_radius:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/support/preference/R$dimen;->coui_preference_icon_max_radius:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    if-le p1, p4, :cond_2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/support/preference/R$dimen;->coui_preference_icon_max_radius:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 12
    :cond_2
    :goto_0
    iget-object p4, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    invoke-virtual {p4, p2}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setHasBorder(Z)V

    .line 13
    iget-object p2, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setBorderRectRadius(I)V

    .line 14
    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mIconView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setType(I)V

    :goto_1
    return-void
.end method

.method public final setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRootItemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mItemEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mItemEnabled:Z

    invoke-direct {p0, p0, p1}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->setEnableState(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRootItemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPaddingEnd(I)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRootItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRootItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRootItemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v1, v2, p1, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setPaddingStart(I)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRootItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRootItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRootItemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setPaddingStartAndEnd(II)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRootItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mRootItemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, p1, v1, p2, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mSummaryView:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mSummaryView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setSummaryClickSpan()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mSummaryView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mSummaryView:Landroid/widget/TextView;

    new-instance v1, Lcom/coui/appcompat/itemview/COUIBaseListItemView$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/itemview/COUIBaseListItemView$1;-><init>(Lcom/coui/appcompat/itemview/COUIBaseListItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setSummaryColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mTitleView:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mTitleView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setTitleColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final setWidgetView(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mWidgetFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mWidgetFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mWidgetFrame:Landroid/view/ViewGroup;

    invoke-static {v0, p1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 5
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setWidgetView(Landroid/view/View;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mWidgetFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mWidgetFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->mWidgetFrame:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 10
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
