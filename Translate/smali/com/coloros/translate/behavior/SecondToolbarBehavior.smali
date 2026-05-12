.class public final Lcom/coloros/translate/behavior/SecondToolbarBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private mChild:Landroid/view/View;

.field private mCurrentOffset:I

.field private mDivider:Landroid/view/View;

.field private mDividerAlphaChangeEndY:I

.field private mDividerAlphaChangeOffset:I

.field private mDividerAlphaRange:F

.field private mDividerInitWidth:I

.field private mDividerParams:Landroid/view/ViewGroup$LayoutParams;

.field private mDividerWidthChangeEndY:I

.field private mDividerWidthChangeInitY:I

.field private mDividerWidthChangeOffset:I

.field private mDividerWidthRange:F

.field private mListFirstChildInitY:I

.field private final mLocation:[I

.field private mLocationY:I

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

    iput-object v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mLocation:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    .line 4
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mLocation:[I

    .line 5
    invoke-direct {p0, p1}, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/behavior/SecondToolbarBehavior;Landroid/view/View;IIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->onStartNestedScroll$lambda$0(Lcom/coloros/translate/behavior/SecondToolbarBehavior;Landroid/view/View;IIII)V

    return-void
.end method

.method private final init(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    sget v0, Lcom/coloros/translate/R$dimen;->common_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mMarginLeftRight:I

    iget-object p1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    sget v0, Lcom/coloros/translate/R$dimen;->line_alpha_range_change_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    iget-object p1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    sget v0, Lcom/coloros/translate/R$dimen;->divider_width_change_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    return-void
.end method

.method private final onListScroll()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mChild:Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mChild:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mChild:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    iput-object v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mChild:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mChild:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mLocationY:I

    iput v2, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mNewOffset:I

    iget v1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerAlphaChangeEndY:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    iput v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mListFirstChildInitY:I

    if-le v0, v1, :cond_4

    iput v2, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_2

    :cond_4
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mNewOffset:I

    :goto_2
    iget v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mNewOffset:I

    iput v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mCurrentOffset:I

    iget v1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerAlphaRange:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerAlphaRange:F

    iget-object v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerAlphaRange:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mLocationY:I

    iget v1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerWidthChangeEndY:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    iput v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_3

    :cond_6
    iget v1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerWidthChangeInitY:I

    if-le v0, v1, :cond_7

    iput v2, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mNewOffset:I

    goto :goto_3

    :cond_7
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mNewOffset:I

    :goto_3
    iget v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mNewOffset:I

    iput v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mCurrentOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerWidthRange:F

    iget-object v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerInitWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mMarginLeftRight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerWidthRange:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static final onStartNestedScroll$lambda$0(Lcom/coloros/translate/behavior/SecondToolbarBehavior;Landroid/view/View;IIII)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->onListScroll()V

    return-void
.end method


# virtual methods
.method public final getMDividerInitWidth()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerInitWidth:I

    return p0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    const-string p2, "absListView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->onListScroll()V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const-string p0, "absListView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    const-string p6, "coordinatorLayout"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "child"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "directTargetChild"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "target"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p5, p5, 0x2

    const/4 p6, 0x0

    if-eqz p5, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    if-gt p1, p3, :cond_3

    .line 3
    iget p1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mListFirstChildInitY:I

    if-gtz p1, :cond_2

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mListFirstChildInitY:I

    .line 5
    iput-object p4, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mScrollView:Landroid/view/View;

    .line 6
    sget p1, Lcom/coloros/translate/R$id;->divider_line:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p6

    :goto_0
    iput p1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerInitWidth:I

    .line 8
    iget-object p1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mMaxWidth:I

    .line 10
    iget p1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mListFirstChildInitY:I

    iget p2, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerAlphaChangeOffset:I

    sub-int p2, p1, p2

    iput p2, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerAlphaChangeEndY:I

    .line 11
    iget-object p2, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mResources:Landroid/content/res/Resources;

    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    sget p3, Lcom/coloros/translate/R$dimen;->divider_width_start_count_offset:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerWidthChangeInitY:I

    .line 12
    iget p2, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerWidthChangeOffset:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerWidthChangeEndY:I

    .line 13
    :cond_2
    new-instance p1, Lw1/d;

    invoke-direct {p1, p0}, Lw1/d;-><init>(Lcom/coloros/translate/behavior/SecondToolbarBehavior;)V

    invoke-virtual {p4, p1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_3
    return p6
.end method

.method public final setMDividerInitWidth(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/behavior/SecondToolbarBehavior;->mDividerInitWidth:I

    return-void
.end method
