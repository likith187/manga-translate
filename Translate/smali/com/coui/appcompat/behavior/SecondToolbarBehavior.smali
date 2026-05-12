.class public Lcom/coui/appcompat/behavior/SecondToolbarBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private mChild:Landroid/view/View;

.field private mCountOffset:I

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

.field private mIsImmerSiveTheme:Z

.field private mListFirstChildInitY:I

.field private mLocation:[I

.field private mMarginLeftRight:I

.field private mMaxWidth:I

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

    iput-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mLocation:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    .line 4
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mLocation:[I

    .line 5
    invoke-direct {p0, p1}, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/behavior/SecondToolbarBehavior;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->onListScroll()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/support/preference/R$dimen;->preference_divider_margin_horizontal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mMarginLeftRight:I

    iget-object p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/support/preference/R$dimen;->preference_line_alpha_range_change_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    iget-object p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/support/preference/R$dimen;->preference_divider_width_change_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    iget-object p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/support/preference/R$dimen;->preference_divider_width_start_count_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mCountOffset:I

    iget-object p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/support/preference/R$bool;->is_dialog_preference_immersive:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mIsImmerSiveTheme:Z

    return-void
.end method

.method private onListScroll()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mChild:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

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

    iput-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mChild:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mChild:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mChild:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mChild:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    iget-object v4, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v3, v1

    if-eqz v1, :cond_3

    sub-int/2addr v0, v1

    :cond_3
    iput v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mNewOffset:I

    iget v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerAlphaChangeEndY:I

    if-ge v0, v1, :cond_4

    iget v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    iput v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mListFirstChildInitY:I

    if-le v0, v1, :cond_5

    iput v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_2

    :cond_5
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mNewOffset:I

    :goto_2
    iget v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mNewOffset:I

    iput v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mCurrentOffset:I

    iget v3, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerAlphaRange:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerAlphaRange:F

    iget-object v3, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    iget v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthChangeEndY:I

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    iput v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_3

    :cond_7
    iget v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthChangeInitY:I

    if-le v0, v1, :cond_8

    iput v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_3

    :cond_8
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mNewOffset:I

    :goto_3
    iget v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mNewOffset:I

    iput v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mCurrentOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthRange:F

    iget-object v1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mMarginLeftRight:I

    int-to-float v2, v2

    sub-float/2addr v4, v0

    mul-float/2addr v2, v4

    float-to-int v0, v2

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_9
    iget-object p0, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->onListScroll()V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    and-int/lit8 p5, p5, 0x2

    const/4 p6, 0x0

    if-eqz p5, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    if-gt p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p6

    .line 3
    :goto_0
    iget-boolean p3, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mIsImmerSiveTheme:Z

    if-eqz p3, :cond_1

    return p6

    :cond_1
    if-eqz p1, :cond_3

    .line 4
    iget p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mListFirstChildInitY:I

    if-gtz p1, :cond_2

    .line 5
    iput-object p4, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    .line 6
    sget p1, Lcom/support/preference/R$id;->divider_line:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    .line 7
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mListFirstChildInitY:I

    .line 8
    iget p3, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    sub-int p3, p1, p3

    iput p3, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerAlphaChangeEndY:I

    .line 9
    iget p3, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mCountOffset:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthChangeInitY:I

    .line 10
    iget p3, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerWidthChangeEndY:I

    .line 11
    iget-object p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerInitWidth:I

    .line 12
    iget-object p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/behavior/SecondToolbarBehavior;->mMaxWidth:I

    .line 14
    new-instance p1, Lcom/coui/appcompat/behavior/SecondToolbarBehavior$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/behavior/SecondToolbarBehavior$1;-><init>(Lcom/coui/appcompat/behavior/SecondToolbarBehavior;)V

    invoke-virtual {p4, p1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_3
    return p6
.end method
