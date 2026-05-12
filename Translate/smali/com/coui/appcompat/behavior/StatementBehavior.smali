.class public Lcom/coui/appcompat/behavior/StatementBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source "SourceFile"


# instance fields
.field private mChild:Landroid/view/View;

.field private mCurrentOffset:I

.field private mDivider:Landroid/view/View;

.field private mDividerAlphaChangeEndY:I

.field private mDividerAlphaChangeOffset:I

.field private mDividerAlphaRange:F

.field public mDividerInitWidth:I

.field private mDividerParams:Landroid/view/ViewGroup$LayoutParams;

.field private mDividerWidthChangeEndY:I

.field private mDividerWidthChangeInitY:I

.field private mDividerWidthChangeOffset:I

.field private mDividerWidthRange:F

.field private mListFirstChildInitY:I

.field private mLocation:[I

.field private mLocationY:I

.field private mMarginLeftRight:I

.field private mNewOffset:I

.field private mResources:Landroid/content/res/Resources;

.field private mScrollView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>()V

    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocation:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    .line 4
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocation:[I

    .line 5
    invoke-direct {p0, p1}, Lcom/coui/appcompat/behavior/StatementBehavior;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/behavior/StatementBehavior;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/behavior/StatementBehavior;->onScroll()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/support/preference/R$dimen;->preference_divider_margin_horizontal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mMarginLeftRight:I

    iget-object p1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/support/preference/R$dimen;->preference_line_alpha_range_change_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerAlphaChangeOffset:I

    iget-object p1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/support/preference/R$dimen;->preference_divider_width_change_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthChangeOffset:I

    return-void
.end method

.method private onScroll()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mChild:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mScrollView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mChild:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mChild:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mScrollView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mChild:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mChild:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocationY:I

    iput v2, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mNewOffset:I

    iget v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerAlphaChangeEndY:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerAlphaChangeOffset:I

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mNewOffset:I

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mListFirstChildInitY:I

    if-le v0, v1, :cond_4

    iput v2, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mNewOffset:I

    goto :goto_2

    :cond_4
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mNewOffset:I

    :goto_2
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mNewOffset:I

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mCurrentOffset:I

    iget v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerAlphaRange:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerAlphaChangeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerAlphaRange:F

    iget-object v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocationY:I

    iget v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthChangeEndY:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthChangeOffset:I

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mNewOffset:I

    goto :goto_3

    :cond_6
    iget v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthChangeInitY:I

    if-le v0, v1, :cond_7

    iput v2, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mNewOffset:I

    goto :goto_3

    :cond_7
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mNewOffset:I

    :goto_3
    iget v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mNewOffset:I

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mCurrentOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthChangeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthRange:F

    iget-object v1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerInitWidth:I

    int-to-float v2, v2

    iget v4, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mMarginLeftRight:I

    int-to-float v4, v4

    sub-float/2addr v3, v0

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    float-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDivider:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    iget p1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mListFirstChildInitY:I

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocation:[I

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mLocation:[I

    const/4 p3, 0x1

    aget p1, p1, p3

    iput p1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mListFirstChildInitY:I

    iput-object p4, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mScrollView:Landroid/view/View;

    sget p1, Lcom/support/preference/R$id;->divider_line:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDivider:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerInitWidth:I

    iget-object p1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDivider:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    iget p1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mListFirstChildInitY:I

    iget p2, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerAlphaChangeOffset:I

    sub-int p2, p1, p2

    iput p2, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerAlphaChangeEndY:I

    iget-object p2, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/support/preference/R$dimen;->preference_divider_width_start_count_offset:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthChangeInitY:I

    iget p2, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthChangeOffset:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/behavior/StatementBehavior;->mDividerWidthChangeEndY:I

    :cond_0
    new-instance p1, Lcom/coui/appcompat/behavior/StatementBehavior$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/behavior/StatementBehavior$1;-><init>(Lcom/coui/appcompat/behavior/StatementBehavior;)V

    invoke-virtual {p4, p1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    const/4 p0, 0x0

    return p0
.end method
