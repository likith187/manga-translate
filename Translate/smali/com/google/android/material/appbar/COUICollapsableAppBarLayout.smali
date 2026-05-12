.class public Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;
.super Lcom/google/android/material/appbar/COUIDividerAppBarLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;,
        Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$Mode;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final DEFAULT_SCROLL_FLAG:I = 0x13

.field public static final MODE_COLLAPSABLE:I = 0x0

.field public static final MODE_FIXED_COLLAPSED:I = 0x1

.field public static final MODE_FIXED_EXPANDED:I = 0x2

.field private static final MODE_STATE_KEY:Ljava/lang/String; = "MODE_STATE_KEY"

.field private static final OFFSET_STATE_KEY:Ljava/lang/String; = "OFFSET_STATE_KEY"

.field private static final SUPER_STATE_KEY:Ljava/lang/String; = "SUPER_STATE_KEY"

.field private static final TAG:Ljava/lang/String; = "COUICollapsableAppBarLayout"

.field private static final TITLE_FRACTION_STATE_KEY:Ljava/lang/String; = "TITLE_FRACTION_STATE_KEY"


# instance fields
.field private mAutoExpand:Z

.field private mCollapsingToolbarHeight:I

.field private mEndPaddingBottom:I

.field private mMode:I

.field private mNeedUpdateModeAfterOffsetChanged:Z

.field private mOffset:I

.field private mStartPaddingBottom:I

.field private mSubtitleHideEnable:Z

.field private mSubtitleViewHeight:I

.field private mUpdateOffset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    .line 4
    iput p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mCollapsingToolbarHeight:I

    .line 5
    iput p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mSubtitleViewHeight:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mAutoExpand:Z

    .line 7
    iput-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mUpdateOffset:Z

    .line 8
    iput-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mNeedUpdateModeAfterOffsetChanged:Z

    .line 9
    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    .line 12
    iput p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mCollapsingToolbarHeight:I

    .line 13
    iput p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mSubtitleViewHeight:I

    const/4 p3, 0x1

    .line 14
    iput-boolean p3, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mAutoExpand:Z

    .line 15
    iput-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mUpdateOffset:Z

    .line 16
    iput-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mNeedUpdateModeAfterOffsetChanged:Z

    .line 17
    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mAutoExpand:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->updateOffset()Z

    move-result p0

    return p0
.end method

.method private adjustPaddingBottom(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    int-to-float v0, v0

    if-nez p2, :cond_1

    const/4 p2, 0x0

    cmpl-float p2, v0, p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mStartPaddingBottom:I

    iget v1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mEndPaddingBottom:I

    if-ne p2, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iget p2, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mStartPaddingBottom:I

    iget v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mEndPaddingBottom:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr p2, p1

    neg-int p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->translateDivider(I)V

    return-void
.end method

.method private adjustSubtitleIfNeed(I)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findSubtitleContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findCollapsingToolbarLayout()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    iget-boolean v2, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mSubtitleHideEnable:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    sub-float v2, v3, p1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5, v6}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/support/toolbar/R$dimen;->toolbar_normal_padding_left_compat:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/support/toolbar/R$dimen;->toolbar_normal_padding_left_medium:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreen(Landroid/content/Context;II)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/support/toolbar/R$dimen;->toolbar_normal_padding_left_expanded:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :cond_4
    :goto_2
    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v6

    if-eq v6, v1, :cond_5

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mEndPaddingBottom:I

    iget p0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mStartPaddingBottom:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    sub-float/2addr v3, p1

    mul-float/2addr p0, v3

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    return-void
.end method

.method private findCollapsingToolbarLayout()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getExpansionFraction()F
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findCollapsingToolbarLayout()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/toolbar/R$styleable;->COUICollapsableAppBarLayout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/support/toolbar/R$styleable;->COUICollapsableAppBarLayout_mode:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    sget v0, Lcom/support/toolbar/R$styleable;->COUICollapsableAppBarLayout_subtitleHideEnable:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mSubtitleHideEnable:Z

    sget v0, Lcom/support/toolbar/R$styleable;->COUICollapsableAppBarLayout_startPaddingBottom:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/toolbar/R$dimen;->coui_appbar_start_padding_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mStartPaddingBottom:I

    sget v0, Lcom/support/toolbar/R$styleable;->COUICollapsableAppBarLayout_endPaddingBottom:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/toolbar/R$dimen;->coui_appbar_end_padding_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mEndPaddingBottom:I

    iget v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mCollapsable:Z

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private isCollapsed()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findCollapsingToolbarLayout()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->isCollapsed()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isExpanded()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findCollapsingToolbarLayout()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->isExpanded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setScrollFlags(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {v3, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateIconViewLocationIfNeed(F)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findCollapsingToolbarLayout()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->updateIconViewLocationIfNeed()V

    :cond_0
    return-void
.end method

.method private updateOffset()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mUpdateOffset:Z

    return p0
.end method


# virtual methods
.method public enableAutoExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mAutoExpand:Z

    return-void
.end method

.method protected findSubtitleContentView()Landroid/view/View;
    .locals 1

    sget v0, Lcom/support/toolbar/R$id;->coui_appbar_subtitle_content:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;"
        }
    .end annotation

    new-instance p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;-><init>(Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$1;)V

    return-object p0
.end method

.method protected getDividerScrollRange()I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findCollapsingToolbarLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    return p0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getEndPaddingBottom()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mEndPaddingBottom:I

    return p0
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    return p0
.end method

.method public getStartPaddingBottom()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mStartPaddingBottom:I

    return p0
.end method

.method public isSubtitleHideEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mSubtitleHideEnable:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->onAttachedToWindow()V

    iget v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->setMode(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance p1, Lcom/google/android/material/appbar/c;

    invoke-direct {p1, p0}, Lcom/google/android/material/appbar/c;-><init>(Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findSubtitleContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findSubtitleContentView()Landroid/view/View;

    move-result-object v0

    iget p0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mStartPaddingBottom:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findSubtitleContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findCollapsingToolbarLayout()Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mSubtitleHideEnable:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->isCollapsed()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mUpdateOffset:Z

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v6, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mCollapsingToolbarHeight:I

    if-nez v6, :cond_2

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v6, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mCollapsingToolbarHeight:I

    :cond_2
    iget v6, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mCollapsingToolbarHeight:I

    if-eqz v6, :cond_9

    if-eqz v2, :cond_8

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v6, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mSubtitleViewHeight:I

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-eq v6, v7, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    iget-boolean v7, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mUpdateOffset:Z

    if-nez v7, :cond_5

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->isCollapsed()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    move v7, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v7, v4

    :goto_4
    iput-boolean v7, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mUpdateOffset:Z

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v8, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mCollapsingToolbarHeight:I

    if-eq v7, v8, :cond_6

    if-eqz v6, :cond_9

    :cond_6
    instance-of v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mSubtitleViewHeight:I

    move-object v7, v2

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    neg-int v6, v6

    iput v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mCollapsingToolbarHeight:I

    iget v2, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mSubtitleViewHeight:I

    add-int/2addr v0, v2

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_8
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getPendingAction()I

    move-result v0

    if-eqz v0, :cond_a

    move v3, v4

    :cond_a
    iget-boolean v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mUpdateOffset:Z

    xor-int/lit8 v1, v3, 0x1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mUpdateOffset:Z

    invoke-super {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->onMeasure(II)V

    return-void
.end method

.method onOffsetChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->onOffsetChanged(I)V

    iget v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    neg-int v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    :cond_1
    iput p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->onDividerChanged()V

    invoke-direct {p0, p1, v1}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->adjustPaddingBottom(IZ)V

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->adjustSubtitleIfNeed(I)V

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findCollapsingToolbarLayout()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->updateIconViewLocationIfNeed()V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    iget-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mNeedUpdateModeAfterOffsetChanged:Z

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-nez p1, :cond_3

    iput-boolean v1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mNeedUpdateModeAfterOffsetChanged:Z

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->getDividerScrollRange()I

    move-result v3

    neg-int v3, v3

    if-ne p1, v3, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->updateIconViewLocationIfNeed(F)V

    iput-boolean v1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mNeedUpdateModeAfterOffsetChanged:Z

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-ne p1, v0, :cond_5

    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    if-nez p1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->setScrollFlags(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->updateIconViewLocationIfNeed(F)V

    iput-boolean v1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mNeedUpdateModeAfterOffsetChanged:Z

    :cond_5
    :goto_0
    iget p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetViewState:I

    if-ne p1, v0, :cond_6

    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->getDividerScrollRange()I

    move-result v0

    neg-int v0, v0

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_6

    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-nez p1, :cond_6

    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    :cond_6
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "OFFSET_STATE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    const-string v0, "MODE_STATE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    const-string v0, "TITLE_FRACTION_STATE_KEY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->updateIconViewLocationIfNeed(F)V

    const-string v0, "SUPER_STATE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SUPER_STATE_KEY"

    invoke-super {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "OFFSET_STATE_KEY"

    iget v2, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "MODE_STATE_KEY"

    iget v2, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "TITLE_FRACTION_STATE_KEY"

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->getExpansionFraction()F

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public refreshAppBar(Landroid/view/View;)Z
    .locals 4

    invoke-super {p0, p1}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->refreshAppBar(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->isCollapsed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetViewState:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :cond_2
    :goto_1
    return v1
.end method

.method public refreshExpand(Landroid/view/View;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->isCollapsed()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mCollapsable:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->setMode(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->setDebug(Z)V

    sput-boolean p1, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->DEBUG:Z

    return-void
.end method

.method public setEndPaddingBottom(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mEndPaddingBottom:I

    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->adjustPaddingBottom(IZ)V

    return-void
.end method

.method public setMode(I)V
    .locals 4

    iget v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x13

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_1

    goto :goto_3

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mCollapsable:Z

    invoke-virtual {p0, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    iput v2, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->setScrollFlags(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->updateIconViewLocationIfNeed(F)V

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mNeedUpdateModeAfterOffsetChanged:Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->onDividerChanged()V

    goto :goto_3

    :cond_3
    iput-boolean v2, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mCollapsable:Z

    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->setScrollFlags(I)V

    iput v2, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->updateIconViewLocationIfNeed(F)V

    goto :goto_1

    :cond_4
    iput-boolean v3, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mNeedUpdateModeAfterOffsetChanged:Z

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->onDividerChanged()V

    goto :goto_3

    :cond_5
    iput-boolean v3, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mCollapsable:Z

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->setScrollFlags(I)V

    iget v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-ne v0, v3, :cond_7

    iget v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByScroll:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    iget v3, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->onDividerChanged()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    :cond_7
    :goto_2
    iget v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByScroll:I

    if-lez v0, :cond_8

    iget v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    iget v1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    :cond_8
    :goto_3
    iput p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    return-void
.end method

.method public setStartPaddingBottom(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mStartPaddingBottom:I

    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->adjustPaddingBottom(IZ)V

    return-void
.end method

.method public setSubtitleHideEnable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mSubtitleHideEnable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mSubtitleHideEnable:Z

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->updateSubtitle()V

    :cond_0
    return-void
.end method

.method public updateSubtitle()V
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->adjustSubtitleIfNeed(I)V

    return-void
.end method
