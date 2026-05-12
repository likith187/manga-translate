.class public Lcom/coui/appcompat/toolbar/COUIToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/poplist/PopupMenuConfigRule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;,
        Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_TEXT_MAX:I = 0x18

.field private static final DEFAULT_TEXT_MIN:I = 0x10

.field private static final TAG:Ljava/lang/String; = "Toolbar"

.field public static final TITLE_TYPE_HEAD:I = 0x0

.field public static final TITLE_TYPE_SECONDARY:I = 0x1

.field private static final TOOLBAR_OUTSETS:Landroid/graphics/Rect;


# instance fields
.field private mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field private mButtonGravity:I

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private final mContentInsets:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

.field private mDisplayFrame:Landroid/graphics/Rect;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field private mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

.field private mGapBetweenNavigationAndTitle:I

.field private mGapBetweenSearchViewAndMenu:I

.field private mGravity:I

.field private mHasSearchViewFlag:Z

.field mIsInsidePanel:Z

.field private mIsInsideSideNavigationBar:Z

.field private mIsTiny:Z

.field private mIsTitleCenterStyle:Z

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field private mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

.field private final mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$e;

.field private mMinHeight:I

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$h;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupRuleEnable:Z

.field private mPopupTheme:I

.field private mResId:I

.field private final mSearchCollapsingMargins:[I

.field private mSegmentButton:Landroid/view/View;

.field private final mSegmentButtonHeight:I

.field private final mSegmentButtonMaxWidth:I

.field private final mSegmentButtonMinWidth:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mStyle:I

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTextMaxSize:F

.field private mTextMinSize:F

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleMinWidth:I

.field private mTitlePaddingBottom:I

.field private mTitlePaddingTop:I

.field private mTitlePosition:[I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextSize:F

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTitleType:I

.field private mToolbarCenterTitlePaddingLeft:I

.field private mToolbarCenterTitlePaddingRight:I

.field private mToolbarHeight:I

.field private mToolbarNormalPaddingLeft:I

.field private mToolbarNormalPaddingRight:I

.field private mToolbarOverFlowPadding:I

.field private mUseResponsivePadding:Z

.field private mWindowFrame:Landroid/graphics/Rect;

.field private mWrapper:Landroidx/appcompat/widget/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->TOOLBAR_OUTSETS:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Landroidx/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/toolbar/R$style;->Widget_COUI_Toolbar:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance v0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    invoke-direct {v0}, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v1, 0x2

    .line 7
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempMargins:[I

    .line 8
    new-instance v2, Lcom/coui/appcompat/toolbar/COUIToolbar$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/toolbar/COUIToolbar$1;-><init>(Lcom/coui/appcompat/toolbar/COUIToolbar;)V

    iput-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$e;

    .line 9
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSearchCollapsingMargins:[I

    .line 10
    new-instance v2, Lcom/coui/appcompat/toolbar/COUIToolbar$2;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/toolbar/COUIToolbar$2;-><init>(Lcom/coui/appcompat/toolbar/COUIToolbar;)V

    iput-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    .line 11
    iput-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mDisplayFrame:Landroid/graphics/Rect;

    .line 12
    iput-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mWindowFrame:Landroid/graphics/Rect;

    const v2, 0x800013

    .line 13
    iput v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mGravity:I

    const/4 v2, 0x0

    .line 14
    iput-boolean v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    .line 15
    new-array v3, v1, [I

    iput-object v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitlePosition:[I

    const/4 v3, 0x0

    .line 16
    iput v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextSize:F

    .line 17
    iput-boolean v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mHasSearchViewFlag:Z

    .line 18
    iput-boolean v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsInsideSideNavigationBar:Z

    const/4 v3, 0x1

    .line 19
    iput-boolean v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mPopupRuleEnable:Z

    .line 20
    iput-boolean v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mUseResponsivePadding:Z

    .line 21
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 22
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    if-eqz p2, :cond_0

    .line 23
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mStyle:I

    if-nez v4, :cond_1

    .line 24
    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mStyle:I

    goto :goto_0

    .line 25
    :cond_0
    iput v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mStyle:I

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v4, Lcom/support/toolbar/R$styleable;->COUIToolbar:[I

    sget v5, Lcom/support/toolbar/R$attr;->couiToolbarStyle:I

    invoke-static {p3, p2, v4, v5, p4}, Landroidx/appcompat/widget/h0;->w(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/h0;

    move-result-object p2

    .line 27
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_titleType:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 28
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_titleType:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/h0;->k(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleType:I

    .line 29
    :cond_2
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportTitleTextAppearance:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextAppearance:I

    .line 30
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportSubtitleTextAppearance:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextAppearance:I

    .line 31
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_android_gravity:I

    iget p4, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mGravity:I

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/h0;->l(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mGravity:I

    .line 32
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportButtonGravity:I

    const/16 p4, 0x30

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/h0;->l(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mButtonGravity:I

    .line 33
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportTitleMargins:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/h0;->e(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginStart:I

    .line 34
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportIsTiny:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/h0;->a(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTiny:Z

    .line 35
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportPanelStyle:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/h0;->a(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsInsidePanel:Z

    .line 36
    iget p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginStart:I

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginEnd:I

    .line 37
    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginTop:I

    .line 38
    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginBottom:I

    .line 39
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportTitleMarginStart:I

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v4, Lcom/support/toolbar/R$dimen;->coui_toolbar_support_margin_start:I

    invoke-virtual {p4, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 41
    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/h0;->e(II)I

    move-result p3

    if-ltz p3, :cond_3

    .line 42
    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginStart:I

    .line 43
    :cond_3
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportTitleMarginEnd:I

    const/4 p4, -0x1

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/h0;->e(II)I

    move-result p3

    if-ltz p3, :cond_4

    .line 44
    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginEnd:I

    .line 45
    :cond_4
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportTitleMarginTop:I

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/h0;->e(II)I

    move-result p3

    if-ltz p3, :cond_5

    .line 46
    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginTop:I

    .line 47
    :cond_5
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportTitleMarginBottom:I

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/h0;->e(II)I

    move-result p3

    if-ltz p3, :cond_6

    .line 48
    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginBottom:I

    .line 49
    :cond_6
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportTitlePaddingTop:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitlePaddingTop:I

    .line 50
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportTitlePaddingBottom:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitlePaddingBottom:I

    .line 51
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportMaxButtonHeight:I

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMaxButtonHeight:I

    .line 52
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportContentInsetStart:I

    const/high16 p4, -0x80000000

    .line 53
    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/h0;->e(II)I

    move-result p3

    .line 54
    sget v4, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportContentInsetEnd:I

    .line 55
    invoke-virtual {p2, v4, p4}, Landroidx/appcompat/widget/h0;->e(II)I

    move-result v4

    .line 56
    sget v5, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportContentInsetLeft:I

    .line 57
    invoke-virtual {p2, v5, v2}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result v5

    .line 58
    sget v6, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportContentInsetRight:I

    .line 59
    invoke-virtual {p2, v6, v2}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result v6

    .line 60
    invoke-virtual {v0, v5, v6}, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->setAbsolute(II)V

    if-ne p3, p4, :cond_7

    if-eq v4, p4, :cond_8

    .line 61
    :cond_7
    invoke-virtual {v0, p3, v4}, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->setRelative(II)V

    .line 62
    :cond_8
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportCollapseIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/h0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 63
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportCollapseContentDescription:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/h0;->p(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 64
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportTitle:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/h0;->p(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 65
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_9

    .line 66
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    :cond_9
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportSubtitle:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/h0;->p(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 68
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_a

    .line 69
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 70
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mPopupContext:Landroid/content/Context;

    .line 71
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportPopupTheme:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setPopupTheme(I)V

    .line 72
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportNavigationIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/h0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 73
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_b
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_supportNavigationContentDescription:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/h0;->p(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 75
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_c

    .line 76
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    :cond_c
    sget p3, Landroidx/appcompat/R$styleable;->Toolbar_android_minHeight:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMinHeight:I

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 79
    sget p4, Lcom/support/toolbar/R$styleable;->COUIToolbar_minTitleTextSize:I

    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result p4

    const/high16 v0, 0x41800000    # 16.0f

    if-eqz p4, :cond_d

    .line 80
    sget p4, Lcom/support/toolbar/R$styleable;->COUIToolbar_minTitleTextSize:I

    iget v4, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v4, v0

    float-to-int v0, v4

    invoke-virtual {p2, p4, v0}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result p4

    int-to-float p4, p4

    iput p4, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTextMinSize:F

    goto :goto_1

    .line 81
    :cond_d
    iget p4, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p4, v0

    iput p4, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTextMinSize:F

    :goto_1
    const p4, 0x1010095

    .line 82
    filled-new-array {p4}, [I

    move-result-object p4

    .line 83
    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextAppearance:I

    invoke-virtual {p1, v0, p4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p4

    if-eqz p4, :cond_e

    .line 84
    iget p3, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    invoke-virtual {p4, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTextMaxSize:F

    .line 85
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    :cond_e
    iget p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleType:I

    if-ne p3, v3, :cond_f

    .line 87
    iget p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTextMaxSize:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    iget p4, p4, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p3, p4, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTextMaxSize:F

    .line 88
    iget p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTextMinSize:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    iget p4, p4, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p3, p4, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTextMinSize:F

    .line 89
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/toolbar/R$dimen;->coui_toolbar_segment_button_max_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButtonMaxWidth:I

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/toolbar/R$dimen;->coui_toolbar_segment_button_min_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButtonMinWidth:I

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/toolbar/R$dimen;->toolbar_min_height:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarHeight:I

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/toolbar/R$dimen;->segment_button_height:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButtonHeight:I

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/toolbar/R$dimen;->toolbar_normal_menu_padding_left:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarNormalPaddingLeft:I

    .line 94
    iget-boolean p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTiny:Z

    if-eqz p3, :cond_10

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/toolbar/R$dimen;->toolbar_normal_menu_padding_tiny_right:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarNormalPaddingRight:I

    .line 96
    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->changeBackViewParams()V

    goto :goto_2

    .line 97
    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/toolbar/R$dimen;->toolbar_normal_menu_padding_right:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarNormalPaddingRight:I

    .line 98
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/toolbar/R$dimen;->toolbar_center_title_padding_left:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarCenterTitlePaddingLeft:I

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/toolbar/R$dimen;->toolbar_center_title_padding_right:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarCenterTitlePaddingRight:I

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/toolbar/R$dimen;->toolbar_overflow_menu_padding:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarOverFlowPadding:I

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/toolbar/R$dimen;->coui_toolbar_title_min_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMinWidth:I

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/toolbar/R$dimen;->coui_toolbar_gap_between_search_and_menu:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mGapBetweenSearchViewAndMenu:I

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/toolbar/R$dimen;->coui_toolbar_gap_between_navigation_and_title:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mGapBetweenNavigationAndTitle:I

    .line 104
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_titleCenter:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 105
    sget p3, Lcom/support/toolbar/R$styleable;->COUIToolbar_titleCenter:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/h0;->a(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    .line 106
    :cond_11
    iget-object p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_12

    iget p4, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextAppearance:I

    if-eqz p4, :cond_12

    .line 107
    invoke-virtual {p3, p1, p4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 108
    :cond_12
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 109
    invoke-virtual {p2}, Landroidx/appcompat/widget/h0;->y()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/toolbar/COUIToolbar;)Landroidx/appcompat/widget/Toolbar$h;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$h;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/toolbar/COUIToolbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureCollapseButtonView()V

    return-void
.end method

.method static synthetic access$300(Lcom/coui/appcompat/toolbar/COUIToolbar;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/toolbar/COUIToolbar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$402(Lcom/coui/appcompat/toolbar/COUIToolbar;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/coui/appcompat/toolbar/COUIToolbar;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mButtonGravity:I

    return p0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/toolbar/COUIToolbar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setChildVisibilityForExpandedActionView(Z)V

    return-void
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result v4

    invoke-static {p2, v4}, Landroidx/core/view/j;->b(II)I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_2

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v2, v1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Landroidx/appcompat/app/a$a;->gravity:I

    invoke-direct {p0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getChildHorizontalGravity(I)I

    move-result v1

    if-ne v1, p2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v4, v2, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    if-nez v4, :cond_3

    invoke-direct {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v2, v2, Landroidx/appcompat/app/a$a;->gravity:I

    invoke-direct {p0, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getChildHorizontalGravity(I)I

    move-result v2

    if-ne v2, p2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private addSystemView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->generateDefaultLayoutParams()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private calculateTitlePosition([I)V
    .locals 8

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/toolbar/R$dimen;->coui_actionbar_menuitemview_item_spacing:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    invoke-virtual {v4}, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    invoke-virtual {v5}, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, p1, v2

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ne v4, v2, :cond_2

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    move v5, v4

    move v4, v1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    move v5, v1

    move v6, v2

    :goto_1
    iget-object v7, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    iget-object v7, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    aget v0, p1, v1

    add-int/2addr v0, v5

    aput v0, p1, v1

    aget v0, p1, v2

    sub-int/2addr v0, v4

    aput v0, p1, v2

    goto :goto_3

    :cond_4
    aget v0, p1, v1

    add-int/2addr v0, v4

    aput v0, p1, v1

    aget v0, p1, v2

    sub-int/2addr v0, v5

    aput v0, p1, v2

    :goto_3
    aget v0, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    aget v4, p1, v2

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/toolbar/R$dimen;->coui_toolbar_action_menu_inner_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v0, v3

    iget-boolean v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsInsidePanel:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    invoke-static {v3, v4, v5}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->measureTextLineCount(Landroid/widget/TextView;II)I

    move-result v3

    if-gt v3, v2, :cond_5

    aput v0, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p0, v0

    aput p0, p1, v2

    :cond_5
    :goto_4
    return-void
.end method

.method private calculateToolbarPadding(Landroidx/appcompat/view/menu/MenuBuilder;I)V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz v0, :cond_2

    sget v2, Lcom/support/toolbar/R$dimen;->toolbar_normal_menu_padding_left_compat:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/support/toolbar/R$dimen;->toolbar_normal_padding_left_compat:I

    :goto_1
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarNormalPaddingLeft:I

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->toolbar_normal_menu_padding_right_compat:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->toolbar_normal_padding_right_compat:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_2
    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarNormalPaddingRight:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->toolbar_center_menu_padding_horizontal_compat:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarCenterTitlePaddingLeft:I

    goto/16 :goto_7

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;II)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz v0, :cond_5

    sget v2, Lcom/support/toolbar/R$dimen;->toolbar_normal_menu_padding_left_medium:I

    goto :goto_3

    :cond_5
    sget v2, Lcom/support/toolbar/R$dimen;->toolbar_normal_padding_left_medium:I

    :goto_3
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarNormalPaddingLeft:I

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->toolbar_normal_menu_padding_right_medium:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->toolbar_normal_padding_right_medium:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_4
    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarNormalPaddingRight:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->toolbar_center_menu_padding_horizontal_medium:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarCenterTitlePaddingLeft:I

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, p2, v3}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreen(Landroid/content/Context;II)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz v0, :cond_8

    sget v2, Lcom/support/toolbar/R$dimen;->toolbar_normal_menu_padding_left_expanded:I

    goto :goto_5

    :cond_8
    sget v2, Lcom/support/toolbar/R$dimen;->toolbar_normal_padding_left_expanded:I

    :goto_5
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarNormalPaddingLeft:I

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->toolbar_normal_menu_padding_right_expanded:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->toolbar_normal_padding_right_expanded:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_6
    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarNormalPaddingRight:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->toolbar_center_menu_padding_horizontal_expanded:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarCenterTitlePaddingLeft:I

    :cond_a
    :goto_7
    iget-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsInsideSideNavigationBar:Z

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->toolbar_center_menu_padding_horizontal_medium:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarCenterTitlePaddingLeft:I

    :cond_b
    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarCenterTitlePaddingLeft:I

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarCenterTitlePaddingRight:I

    iget-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTiny:Z

    if-eqz p1, :cond_d

    if-eqz v0, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->toolbar_normal_menu_padding_tiny_left:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_8
    iput v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarNormalPaddingLeft:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->toolbar_normal_menu_padding_tiny_right:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarNormalPaddingRight:I

    :cond_d
    return-void
.end method

.method private changeBackViewParams()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTiny:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/toolbar/R$dimen;->coui_toolbar_back_view_tiny_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private changeToolbarPadding(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/widget/ImageButton;ZI)V
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->calculateToolbarPadding(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iget-boolean p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mUseResponsivePadding:Z

    if-eqz p2, :cond_3

    iget-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarCenterTitlePaddingLeft:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarNormalPaddingLeft:I

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    iget-boolean p4, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mUseResponsivePadding:Z

    if-eqz p4, :cond_5

    iget-boolean p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarCenterTitlePaddingRight:I

    goto :goto_1

    :cond_4
    iget p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarNormalPaddingRight:I

    :cond_5
    :goto_1
    if-eqz p3, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    invoke-virtual {p0, p2, p3, p1, p4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iget-boolean p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mUseResponsivePadding:Z

    if-eqz p2, :cond_9

    iget-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarCenterTitlePaddingLeft:I

    goto :goto_2

    :cond_8
    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarNormalPaddingLeft:I

    :cond_9
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    iget-boolean p4, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mUseResponsivePadding:Z

    if-eqz p4, :cond_b

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->useTextMenuItemPaddingEnd()Z

    move-result p2

    if-eqz p2, :cond_a

    iget p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarCenterTitlePaddingRight:I

    goto :goto_3

    :cond_a
    iget p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarNormalPaddingRight:I

    :cond_b
    :goto_3
    if-eqz p3, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    invoke-virtual {p0, p2, p3, p1, p4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/view/View;->setPadding(IIII)V

    :goto_4
    return-void
.end method

.method private configNavigationButtonBackground()V
    .locals 3

    new-instance v0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->getMaskRippleRadiusByType(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->setCircleRippleMask(I)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-static {p0, v2}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    return-void
.end method

.method private ensureCollapseButtonView()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/toolbar/R$attr;->couiToolbarNavigationButtonStyle:I

    sget v3, Lcom/support/toolbar/R$style;->Widget_COUI_Toolbar_Button_Navigation:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->generateDefaultLayoutParams()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mButtonGravity:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800003

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/app/a$a;->gravity:I

    const/4 v1, 0x2

    iput v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v1, Lcom/coui/appcompat/toolbar/COUIToolbar$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/toolbar/COUIToolbar$3;-><init>(Lcom/coui/appcompat/toolbar/COUIToolbar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureMenuView()V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedMenuPresenter:Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;-><init>(Lcom/coui/appcompat/toolbar/COUIToolbar;Lcom/coui/appcompat/toolbar/COUIToolbar$1;)V

    iput-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedMenuPresenter:Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedMenuPresenter:Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    sget v1, Lcom/support/toolbar/R$id;->coui_toolbar_more_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mPopupTheme:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$e;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$e;)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->generateDefaultLayoutParams()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_0
    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mButtonGravity:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800005

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/app/a$a;->gravity:I

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->addSystemView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/toolbar/R$attr;->couiToolbarNavigationButtonStyle:I

    sget v3, Lcom/support/toolbar/R$style;->Widget_COUI_Toolbar_Button_Navigation:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    sget v1, Lcom/support/toolbar/R$id;->coui_toolbar_back_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->generateDefaultLayoutParams()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mButtonGravity:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800003

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/app/a$a;->gravity:I

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->configNavigationButtonBackground()V

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->changeBackViewParams()V

    :cond_0
    return-void
.end method

.method private ensureTitleTextView()V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitlePaddingTop:I

    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitlePaddingBottom:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->generateDefaultLayoutParams()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeTitle:Z

    iget-boolean v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTiny:Z

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginBottom:I

    :goto_0
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mButtonGravity:I

    and-int/lit8 v3, v3, 0x70

    const v5, 0x800005

    or-int/2addr v3, v5

    iput v3, v1, Landroidx/appcompat/app/a$a;->gravity:I

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextColor:I

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_1

    :cond_3
    const/4 v1, 0x5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setTextAlignment(I)V

    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleType:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 3

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result p0

    invoke-static {p1, p0}, Landroidx/core/view/j;->b(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    if-ne p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    return p1
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iget v2, v0, Landroidx/appcompat/app/a$a;->gravity:I

    invoke-direct {p0, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getChildVerticalGravity(I)I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/16 v3, 0x50

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int v3, p0, p2

    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ge v3, v4, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    sub-int/2addr p0, v2

    sub-int/2addr p0, p1

    sub-int/2addr p0, v3

    sub-int/2addr p0, p2

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ge p0, p1, :cond_2

    sub-int/2addr p1, p0

    sub-int/2addr v3, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_2
    :goto_1
    add-int/2addr p2, v3

    return p2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, p1

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p0

    sub-int/2addr v1, p2

    return v1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    sub-int/2addr p0, p2

    return p0
.end method

.method private getChildVerticalGravity(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x70

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    iget p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mGravity:I

    and-int/lit8 p0, p0, 0x70

    return p0

    :cond_0
    return p1
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p0}, Landroidx/core/view/m;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p1

    invoke-static {p0}, Landroidx/core/view/m;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private getMinimumHeightCompat()I
    .locals 0

    invoke-static {p0}, Landroidx/core/view/m0;->x(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p0

    return p1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    const/4 p0, 0x0

    aget v0, p2, p0

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, p0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v6, v0

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, p2

    invoke-static {p0, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    neg-int v6, v6

    invoke-static {p0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    neg-int v0, v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr p2, v4

    add-int/2addr p2, v5

    add-int/2addr v3, p2

    add-int/lit8 v2, v2, 0x1

    move p2, v0

    move v0, v6

    goto :goto_0

    :cond_0
    return v3
.end method

.method private layoutChildLeft(Landroid/view/View;II[II)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p4, v2

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p4, v2

    invoke-direct {p0, p1, p5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getChildTop(Landroid/view/View;I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int p5, p2, p4

    invoke-static {p3, p5}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p0

    invoke-virtual {p1, p2, p0, p3, p5}, Landroid/view/View;->layout(IIII)V

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p4, p0

    add-int/2addr p2, p4

    return p2
.end method

.method private layoutChildRight(Landroid/view/View;II[II)I
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p4, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p3, v4

    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p4, v2

    invoke-direct {p0, p1, p5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getChildTop(Landroid/view/View;I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int p5, p3, p4

    invoke-static {p2, p5}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p0

    invoke-virtual {p1, p2, p0, p3, p5}, Landroid/view/View;->layout(IIII)V

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p4, p0

    sub-int/2addr p3, p4

    return p3
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v6

    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    neg-int v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    instance-of p6, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    if-eqz p6, :cond_2

    move-object p6, v0

    check-cast p6, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget-boolean v1, p6, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mHasSearchViewFlag:Z

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-boolean p6, p6, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeTitle:Z

    if-eqz p6, :cond_1

    iget-boolean p6, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    move v1, v2

    move v4, v1

    :goto_1
    if-nez v1, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr p6, v3

    add-int/2addr p6, v5

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p6, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    goto :goto_3

    :cond_4
    :goto_2
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v5, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr p6, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p6, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p6, v3

    add-int/2addr p6, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p6, p5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p4

    invoke-virtual {p1, p3, p4}, Landroid/view/View;->measure(II)V

    if-eqz v1, :cond_7

    iget-object p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 p5, 0x8

    if-eq p3, p5, :cond_6

    iget-object p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    if-nez p3, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget-object p5, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    sub-int/2addr p3, p5

    sub-int/2addr p3, v2

    iget p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mGapBetweenSearchViewAndMenu:I

    sub-int/2addr p3, p0

    invoke-static {p2, v5, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    invoke-virtual {p1, p0, p4}, Landroid/view/View;->measure(II)V

    :cond_6
    return v5

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v5

    return p0
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p0

    add-int/2addr p3, p5

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    if-eq p3, p4, :cond_1

    if-ltz p6, :cond_1

    if-eqz p3, :cond_0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    invoke-static {p0, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    :cond_0
    invoke-static {p6, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :cond_1
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private measureSegmentButtonConstrained(Landroid/view/View;IIIII)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p5, p3, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    const/high16 p5, 0x40000000    # 2.0f

    if-eq p3, p5, :cond_1

    if-ltz p6, :cond_1

    if-eqz p3, :cond_0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    invoke-static {p0, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    :cond_0
    invoke-static {p6, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :cond_1
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    if-lez p4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-le p2, p4, :cond_2

    invoke-static {p4, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    :cond_2
    return-void
.end method

.method private setChildVisibilityForExpandedActionView(Z)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v4, v4, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    if-eq v3, v4, :cond_1

    if-eqz p1, :cond_0

    const/16 v4, 0x8

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setSegmentButtons(Landroid/view/View;Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButton:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-direct {v0, p2}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;)V

    const/4 p2, 0x0

    .line 8
    iput p2, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSegmentButton:Z

    .line 10
    iput v1, v0, Landroidx/appcompat/app/a$a;->gravity:I

    .line 11
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    iget-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapsible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateChildVisibilityForExpandedActionView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v0, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private useTextMenuItemPaddingEnd()Z
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->isTextMenuItem()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    if-nez p0, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearMenu()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mResId:I

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/Menu;->clear()V

    return-void
.end method

.method public collapseActionView()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedMenuPresenter:Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->dismissPopupMenus()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->generateDefaultLayoutParams()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$g;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->generateDefaultLayoutParams()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;
    .locals 1

    .line 3
    new-instance p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$g;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$g;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;
    .locals 1

    .line 5
    new-instance v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;
    .locals 0

    .line 6
    instance-of p0, p1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    if-eqz p0, :cond_0

    .line 7
    new-instance p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    check-cast p1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;)V

    return-object p0

    .line 8
    :cond_0
    instance-of p0, p1, Landroidx/appcompat/app/a$a;

    if-eqz p0, :cond_1

    .line 9
    new-instance p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    check-cast p1, Landroidx/appcompat/app/a$a;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Landroidx/appcompat/app/a$a;)V

    return-object p0

    .line 10
    :cond_1
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_2

    .line 11
    new-instance p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 12
    :cond_2
    new-instance p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getBarrierDirection()I
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mWindowFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mWindowFrame:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mWindowFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mWindowFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/poplist/R$dimen;->coui_popup_list_window_min_window_height_to_apply_vertical_barrier:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-gt v0, p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getCOUITitleTextView()Landroid/widget/TextView;
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureTitleTextView()V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getContentInsetEnd()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->getEnd()I

    move-result p0

    return p0
.end method

.method public getContentInsetLeft()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->getLeft()I

    move-result p0

    return p0
.end method

.method public getContentInsetRight()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->getRight()I

    move-result p0

    return p0
.end method

.method public getContentInsetStart()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->getStart()I

    move-result p0

    return p0
.end method

.method public getDisplayFrame()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mDisplayFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mDisplayFrame:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mDisplayFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getIsTitleCenterStyle()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    return p0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureMenu()V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    return-object p0
.end method

.method public getMenuView()Lcom/coui/appcompat/toolbar/COUIActionMenuView;
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureMenuView()V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    return-object p0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getOutsets()Landroid/graphics/Rect;
    .locals 0

    sget-object p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->TOOLBAR_OUTSETS:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getOverFlowMenuButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->getOverFlowMenuButton()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureMenu()V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPopupMenuRuleEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mPopupRuleEnable:Z

    return p0
.end method

.method public getPopupTheme()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mPopupTheme:I

    return p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public inflateMenu(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mResId:I

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->clearRedDotInfo()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-static {p1}, Landroidx/core/view/u;->a(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mEatingHover:Z

    :cond_0
    iget-boolean v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mEatingHover:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    iput-boolean v4, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mEatingHover:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mEatingHover:Z

    :cond_3
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 20

    move-object/from16 v6, p0

    invoke-static/range {p0 .. p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    move v9, v7

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    sub-int v16, v10, v13

    iget-object v5, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempMargins:[I

    aput v7, v5, v7

    aput v7, v5, v8

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMinimumHeightCompat()I

    move-result v17

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v6, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v9, :cond_1

    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move v2, v12

    move/from16 v3, v16

    move-object v4, v5

    move-object/from16 p1, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;II[II)I

    move-result v0

    move/from16 v19, v0

    move/from16 v18, v12

    goto :goto_2

    :cond_1
    move-object/from16 p1, v5

    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move v2, v12

    move/from16 v3, v16

    move-object/from16 v4, p1

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;II[II)I

    move-result v0

    move/from16 v18, v0

    :goto_1
    move/from16 v19, v16

    goto :goto_2

    :cond_2
    move-object/from16 p1, v5

    move/from16 v18, v12

    goto :goto_1

    :goto_2
    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v6, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v9, :cond_3

    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, p1

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;II[II)I

    move-result v0

    move/from16 v19, v0

    goto :goto_3

    :cond_3
    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, p1

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;II[II)I

    move-result v0

    move/from16 v18, v0

    :cond_4
    :goto_3
    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-direct {v6, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v9, :cond_6

    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    move-object/from16 v0, p0

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, p1

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;II[II)I

    move-result v18

    :cond_5
    move/from16 v4, v18

    move/from16 v5, v19

    goto :goto_4

    :cond_6
    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    move-object/from16 v0, p0

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, p1

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;II[II)I

    move-result v0

    move v5, v0

    move/from16 v4, v18

    :goto_4
    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButton:Landroid/view/View;

    invoke-direct {v6, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    if-nez v0, :cond_a

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v1, v10, 0x2

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    if-ge v1, v4, :cond_7

    move v2, v4

    goto :goto_5

    :cond_7
    if-le v0, v5, :cond_8

    sub-int/2addr v0, v5

    sub-int/2addr v1, v0

    :cond_8
    move v2, v1

    :goto_5
    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    if-eqz v9, :cond_9

    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButton:Landroid/view/View;

    move-object/from16 v0, p0

    move v3, v5

    move-object/from16 v4, p1

    move/from16 v19, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;II[II)I

    move-result v4

    :goto_6
    move/from16 v5, v19

    goto :goto_7

    :cond_9
    move/from16 v19, v5

    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButton:Landroid/view/View;

    move-object/from16 v0, p0

    move-object v5, v3

    move/from16 v3, v19

    move/from16 v18, v4

    move-object/from16 v4, p1

    move-object v8, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;II[II)I

    move-result v0

    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    sub-int v5, v0, v1

    move/from16 v4, v18

    goto :goto_7

    :cond_a
    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v4, v18

    goto :goto_6

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetLeft()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v8, p1

    aput v0, v8, v7

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetRight()I

    move-result v0

    sub-int v16, v16, v5

    sub-int v0, v0, v16

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aput v0, v8, v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetLeft()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetRight()I

    move-result v0

    sub-int v0, v10, v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v6, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v9, :cond_b

    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v2, v16

    move/from16 v3, v18

    move-object v4, v8

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;II[II)I

    move-result v0

    move/from16 v18, v0

    goto :goto_8

    :cond_b
    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v2, v16

    move/from16 v3, v18

    move-object v4, v8

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;II[II)I

    move-result v0

    move/from16 v16, v0

    :cond_c
    :goto_8
    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v6, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v9, :cond_e

    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move/from16 v2, v16

    move/from16 v3, v18

    move-object v4, v8

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;II[II)I

    move-result v18

    :cond_d
    :goto_9
    move/from16 v0, v16

    move/from16 v1, v18

    goto :goto_a

    :cond_e
    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move/from16 v2, v16

    move/from16 v3, v18

    move-object v4, v8

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;II[II)I

    move-result v16

    goto :goto_9

    :goto_a
    iget-object v2, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v6, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v2

    iget-object v3, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v6, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v2, :cond_f

    iget-object v4, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v7, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v5, v7

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    goto :goto_b

    :cond_f
    const/4 v4, 0x0

    :goto_b
    if-eqz v3, :cond_10

    iget-object v5, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p3, v13

    iget-object v13, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v7, v13

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v5

    add-int/2addr v4, v7

    goto :goto_c

    :cond_10
    move/from16 p3, v13

    :goto_c
    if-nez v2, :cond_12

    if-eqz v3, :cond_11

    goto :goto_d

    :cond_11
    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 p5, v10

    move/from16 p4, v12

    goto/16 :goto_17

    :cond_12
    :goto_d
    if-eqz v2, :cond_13

    iget-object v5, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    goto :goto_e

    :cond_13
    iget-object v5, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    :goto_e
    if-eqz v3, :cond_14

    iget-object v7, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    goto :goto_f

    :cond_14
    iget-object v7, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    :goto_f
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    if-eqz v2, :cond_15

    iget-object v13, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    if-gtz v13, :cond_16

    :cond_15
    if-eqz v3, :cond_17

    iget-object v13, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    if-lez v13, :cond_17

    :cond_16
    move/from16 p4, v12

    const/4 v13, 0x1

    goto :goto_10

    :cond_17
    move/from16 p4, v12

    const/4 v13, 0x0

    :goto_10
    iget v12, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mGravity:I

    and-int/lit8 v12, v12, 0x70

    move/from16 p5, v10

    const/16 v10, 0x30

    if-eq v12, v10, :cond_1b

    const/16 v10, 0x50

    if-eq v12, v10, :cond_1a

    sub-int v10, v11, v14

    sub-int/2addr v10, v15

    sub-int/2addr v10, v4

    div-int/lit8 v10, v10, 0x2

    iget v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v0

    iget v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginTop:I

    move/from16 v18, v1

    add-int v1, v12, v0

    if-ge v10, v1, :cond_18

    add-int v10, v12, v0

    goto :goto_11

    :cond_18
    sub-int/2addr v11, v15

    sub-int/2addr v11, v4

    sub-int/2addr v11, v10

    sub-int/2addr v11, v14

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginBottom:I

    add-int/2addr v0, v1

    if-ge v11, v0, :cond_19

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v11

    sub-int/2addr v10, v0

    const/4 v0, 0x0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_19
    :goto_11
    add-int/2addr v14, v10

    goto :goto_12

    :cond_1a
    move/from16 v16, v0

    move/from16 v18, v1

    sub-int/2addr v11, v15

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v11, v0

    iget v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginBottom:I

    sub-int/2addr v11, v0

    sub-int v14, v11, v4

    goto :goto_12

    :cond_1b
    move/from16 v16, v0

    move/from16 v18, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginTop:I

    add-int v14, v0, v1

    :goto_12
    iget-boolean v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    if-eqz v0, :cond_24

    if-eqz v2, :cond_1c

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_13

    :cond_1c
    const/4 v0, 0x0

    :goto_13
    if-eqz v3, :cond_1d

    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    goto :goto_14

    :cond_1d
    const/4 v1, 0x0

    :goto_14
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v4, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitlePosition:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v9, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitlePosition:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v7, v9

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    iget-object v4, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitlePosition:[I

    aget v7, v4, v10

    aget v4, v4, v5

    sub-int/2addr v7, v4

    if-eqz v2, :cond_20

    iget-object v2, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget-object v4, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    add-int v9, v5, v4

    iget-object v10, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v14

    if-ge v1, v0, :cond_1f

    if-lt v4, v7, :cond_1e

    iget-object v4, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitlePosition:[I

    const/4 v5, 0x0

    aget v9, v4, v5

    const/4 v11, 0x1

    aget v4, v4, v11

    move v5, v9

    move v9, v4

    goto :goto_15

    :cond_1e
    const/4 v5, 0x0

    sub-int v9, v7, v4

    div-int/lit8 v9, v9, 0x2

    iget-object v11, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitlePosition:[I

    aget v11, v11, v5

    add-int v5, v11, v9

    add-int v9, v5, v4

    :cond_1f
    :goto_15
    iget-object v4, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v14, v9, v10}, Landroid/view/View;->layout(IIII)V

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v14, v10, v2

    :cond_20
    if-eqz v3, :cond_23

    iget-object v2, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v2

    iget-object v2, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    add-int v4, v3, v2

    iget-object v5, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v14

    if-ge v1, v0, :cond_22

    if-lt v2, v7, :cond_21

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitlePosition:[I

    const/4 v1, 0x0

    aget v3, v0, v1

    const/4 v2, 0x1

    aget v4, v0, v2

    goto :goto_16

    :cond_21
    const/4 v1, 0x0

    sub-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitlePosition:[I

    aget v0, v0, v1

    add-int v3, v0, v7

    add-int v4, v3, v2

    :cond_22
    :goto_16
    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v14, v4, v5}, Landroid/view/View;->layout(IIII)V

    :cond_23
    :goto_17
    move/from16 v0, v16

    :goto_18
    const/4 v7, 0x0

    goto/16 :goto_27

    :cond_24
    if-eqz v9, :cond_2b

    if-eqz v13, :cond_25

    iget v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginStart:I

    :goto_19
    const/4 v1, 0x1

    goto :goto_1a

    :cond_25
    const/4 v0, 0x0

    goto :goto_19

    :goto_1a
    aget v4, v8, v1

    sub-int/2addr v0, v4

    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v6, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mGapBetweenNavigationAndTitle:I

    goto :goto_1b

    :cond_26
    const/4 v1, 0x0

    :goto_1b
    add-int/2addr v0, v1

    iget-boolean v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTiny:Z

    if-nez v1, :cond_27

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v4, v18, v4

    goto :goto_1c

    :cond_27
    const/4 v1, 0x0

    move/from16 v4, v18

    :goto_1c
    neg-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aput v0, v8, v1

    if-eqz v2, :cond_28

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v4, v1

    move/from16 v5, v16

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v14

    iget-object v7, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v1, v14, v4, v2}, Landroid/view/View;->layout(IIII)V

    iget v7, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginEnd:I

    sub-int/2addr v1, v7

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v14, v2, v0

    goto :goto_1d

    :cond_28
    move/from16 v5, v16

    move v1, v4

    :goto_1d
    if-eqz v3, :cond_29

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v0

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v4, v0

    iget-object v2, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v14

    iget-object v3, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v14, v4, v2}, Landroid/view/View;->layout(IIII)V

    iget v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginEnd:I

    sub-int v0, v4, v0

    goto :goto_1e

    :cond_29
    move v0, v4

    :goto_1e
    if-eqz v13, :cond_2a

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    goto :goto_1f

    :cond_2a
    move v1, v4

    :goto_1f
    move/from16 v18, v1

    move v0, v5

    goto/16 :goto_18

    :cond_2b
    move/from16 v5, v16

    if-eqz v13, :cond_2c

    iget v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginStart:I

    :goto_20
    const/4 v7, 0x0

    goto :goto_21

    :cond_2c
    const/4 v0, 0x0

    goto :goto_20

    :goto_21
    aget v1, v8, v7

    sub-int/2addr v0, v1

    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v6, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mGapBetweenNavigationAndTitle:I

    goto :goto_22

    :cond_2d
    move v1, v7

    :goto_22
    add-int/2addr v0, v1

    iget-boolean v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTiny:Z

    if-nez v1, :cond_2e

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v5

    goto :goto_23

    :cond_2e
    move v1, v5

    :goto_23
    neg-int v0, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v8, v7

    if-eqz v2, :cond_2f

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget-object v2, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    move/from16 v4, v18

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v5, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v14

    iget-object v9, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v1, v14, v2, v5}, Landroid/view/View;->layout(IIII)V

    iget v9, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginEnd:I

    add-int/2addr v2, v9

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v14, v5, v0

    goto :goto_24

    :cond_2f
    move/from16 v4, v18

    move v2, v1

    :goto_24
    if-eqz v3, :cond_30

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v0

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v3, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v14

    iget-object v5, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v14, v0, v3}, Landroid/view/View;->layout(IIII)V

    iget v3, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginEnd:I

    add-int/2addr v0, v3

    goto :goto_25

    :cond_30
    move v0, v1

    :goto_25
    if-eqz v13, :cond_31

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_26
    move/from16 v18, v4

    goto :goto_27

    :cond_31
    move v0, v1

    goto :goto_26

    :goto_27
    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v6, v1, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    iget-object v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-boolean v1, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mHasSearchViewFlag:Z

    if-eqz v1, :cond_34

    move v2, v0

    move v10, v7

    :goto_28
    if-ge v10, v9, :cond_33

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_32

    instance-of v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    if-eqz v1, :cond_32

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget-boolean v0, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    if-eqz v0, :cond_32

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    iget-object v4, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSearchCollapsingMargins:[I

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v3, v18

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;II[II)I

    move-result v0

    :goto_29
    move v2, v0

    goto :goto_2a

    :cond_32
    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v3, v18

    move-object v4, v8

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;II[II)I

    move-result v0

    goto :goto_29

    :goto_2a
    add-int/lit8 v10, v10, 0x1

    goto :goto_28

    :cond_33
    move v9, v2

    goto :goto_2c

    :cond_34
    move v2, v0

    move v10, v7

    :goto_2b
    if-ge v10, v9, :cond_33

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v3, v18

    move-object v4, v8

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;II[II)I

    move-result v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_2b

    :goto_2c
    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v6, v0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget-boolean v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mHasSearchViewFlag:Z

    if-eqz v0, :cond_37

    move v11, v7

    move/from16 v3, v18

    :goto_2d
    if-ge v11, v10, :cond_36

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_35

    instance-of v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    if-eqz v1, :cond_35

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget-boolean v0, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    if-eqz v0, :cond_35

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    iget-object v4, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSearchCollapsingMargins:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v9

    move/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;II[II)I

    move-result v0

    :goto_2e
    move v3, v0

    goto :goto_2f

    :cond_35
    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    move-object/from16 v0, p0

    move v2, v9

    move-object v4, v8

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;II[II)I

    move-result v0

    goto :goto_2e

    :goto_2f
    add-int/lit8 v11, v11, 0x1

    goto :goto_2d

    :cond_36
    move v10, v3

    goto :goto_31

    :cond_37
    move v11, v7

    move/from16 v3, v18

    :goto_30
    if-ge v11, v10, :cond_36

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    move-object/from16 v0, p0

    move v2, v9

    move-object v4, v8

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;II[II)I

    move-result v3

    add-int/lit8 v11, v11, 0x1

    goto :goto_30

    :goto_31
    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v6, v0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-direct {v6, v0, v8}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v0

    sub-int v1, p5, p4

    sub-int v1, v1, p3

    div-int/lit8 v1, v1, 0x2

    add-int v12, p4, v1

    div-int/lit8 v1, v0, 0x2

    sub-int/2addr v12, v1

    add-int/2addr v0, v12

    if-ge v12, v9, :cond_38

    goto :goto_32

    :cond_38
    if-le v0, v10, :cond_39

    sub-int/2addr v0, v10

    sub-int v9, v12, v0

    goto :goto_32

    :cond_39
    move v9, v12

    :goto_32
    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v2, v9

    :goto_33
    if-ge v7, v11, :cond_3b

    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3a

    instance-of v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    if-eqz v1, :cond_3a

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget-boolean v0, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSegmentButton:Z

    if-eqz v0, :cond_3a

    goto :goto_34

    :cond_3a
    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    move-object/from16 v0, p0

    move v3, v10

    move-object v4, v8

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;II[II)I

    move-result v2

    :goto_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    :cond_3b
    iget-object v0, v6, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 22

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-static/range {p0 .. p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_0

    move v12, v11

    goto :goto_0

    :cond_0
    move v12, v10

    :goto_0
    iget-boolean v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    const/4 v1, 0x0

    const/4 v14, -0x2

    if-eqz v0, :cond_b

    iget-object v15, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempMargins:[I

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/o0;->b(Landroid/view/View;)Z

    move-result v0

    xor-int/lit8 v16, v0, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetStart()I

    move-result v2

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v17

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v15, v0

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {v7, v0, v1, v12, v8}, Lcom/coui/appcompat/toolbar/COUIToolbar;->changeToolbarPadding(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/widget/ImageButton;ZI)V

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    const/4 v5, 0x0

    iget v6, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMaxButtonHeight:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-direct {v7, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-static {v2}, Landroidx/core/view/m0;->w(Landroid/view/View;)I

    move-result v2

    invoke-static {v10, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v12, v1

    move v6, v2

    goto :goto_1

    :cond_1
    move v0, v10

    move v6, v0

    move v12, v6

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetEnd()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v17, v17, v2

    sub-int/2addr v1, v0

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v15, v16

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, v17

    move/from16 v4, p2

    move v11, v6

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int v17, v17, v0

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/m0;->w(Landroid/view/View;)I

    move-result v0

    invoke-static {v11, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_2

    :cond_2
    move v11, v6

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    move v5, v10

    move/from16 v21, v12

    move v12, v6

    move/from16 v6, v21

    :goto_3
    if-ge v5, v11, :cond_5

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    if-nez v1, :cond_3

    invoke-direct {v7, v4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v0, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSegmentButton:Z

    if-eqz v0, :cond_4

    :cond_3
    move/from16 v20, v5

    move v13, v6

    goto :goto_4

    :cond_4
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p1

    move/from16 v3, v17

    move-object/from16 v19, v4

    move/from16 v4, p2

    move/from16 v20, v5

    move/from16 v5, v18

    move v13, v6

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int v17, v17, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v19

    invoke-direct {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1}, Landroidx/core/view/m0;->w(Landroid/view/View;)I

    move-result v1

    invoke-static {v12, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v6, v0

    move v12, v1

    goto :goto_5

    :goto_4
    move v6, v13

    :goto_5
    add-int/lit8 v5, v20, 0x1

    goto :goto_3

    :cond_5
    move v13, v6

    iget v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginTop:I

    iget v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginBottom:I

    add-int v11, v0, v1

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v14, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextSize:F

    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v5, v11

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {v2}, Landroidx/core/view/m0;->w(Landroid/view/View;)I

    move-result v2

    invoke-static {v12, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    move v6, v1

    move v5, v12

    move v12, v0

    goto :goto_6

    :cond_6
    move v6, v10

    move v5, v12

    move v12, v6

    :goto_6
    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v14, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    add-int v14, v6, v11

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v10, v5

    move v5, v14

    move v14, v6

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/view/m0;->w(Landroid/view/View;)I

    move-result v0

    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    goto :goto_7

    :cond_7
    move v10, v5

    move v14, v6

    :goto_7
    add-int v17, v17, v12

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int v1, v17, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v5

    invoke-static {v1, v8, v2}, Landroidx/core/view/m0;->g0(III)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v5, 0x10

    invoke-static {v0, v9, v2}, Landroidx/core/view/m0;->g0(III)I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldCollapse()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v0, 0x0

    :cond_8
    invoke-virtual {v7, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitlePosition:[I

    invoke-direct {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->calculateTitlePosition([I)V

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitlePosition:[I

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x0

    aget v0, v0, v2

    sub-int v8, v1, v0

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    const/high16 v10, -0x80000000

    if-eqz v0, :cond_9

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v4, p2

    move v5, v11

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    :cond_9
    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    add-int v5, v14, v11

    move-object/from16 v0, p0

    move/from16 v4, p2

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    :cond_a
    return-void

    :cond_b
    iget-object v10, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTempMargins:[I

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/o0;->b(Landroid/view/View;)Z

    move-result v11

    xor-int/lit8 v13, v11, 0x1

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    const/4 v15, 0x0

    if-eqz v0, :cond_c

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1, v0, v12, v8}, Lcom/coui/appcompat/toolbar/COUIToolbar;->changeToolbarPadding(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/widget/ImageButton;ZI)V

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v15

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-static {v3}, Landroidx/core/view/m0;->w(Landroid/view/View;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    move v6, v1

    move v5, v3

    goto :goto_8

    :cond_c
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_8
    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/16 v16, 0x0

    iget v4, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v15

    move v15, v4

    move/from16 v4, p2

    move v14, v5

    move/from16 v5, v16

    move v9, v6

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-static {v1}, Landroidx/core/view/m0;->w(Landroid/view/View;)I

    move-result v1

    invoke-static {v14, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    :cond_d
    move v14, v5

    move v9, v6

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetStart()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v10, v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    iget v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginTop:I

    iget v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginBottom:I

    add-int v16, v0, v1

    iget v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginStart:I

    iget v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginEnd:I

    add-int v20, v0, v1

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButton:Landroid/view/View;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    if-nez v0, :cond_11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextSize:F

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    float-to-int v1, v1

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    :goto_9
    div-int/lit8 v17, v11, 0x2

    sub-int v2, v17, v15

    iget v3, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButtonMinWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v1, v3, :cond_10

    sub-int/2addr v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    if-eqz v0, :cond_f

    iget v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButtonMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v4, v0

    goto :goto_a

    :cond_f
    move v4, v2

    :goto_a
    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButton:Landroid/view/View;

    iget v6, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v15

    move/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureSegmentButtonConstrained(Landroid/view/View;IIIII)V

    goto :goto_b

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButton:Landroid/view/View;

    mul-int/lit8 v4, v2, 0x2

    iget v6, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v15

    move/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureSegmentButtonConstrained(Landroid/view/View;IIIII)V

    :goto_b
    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButton:Landroid/view/View;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButton:Landroid/view/View;

    invoke-direct {v7, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButton:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/m0;->w(Landroid/view/View;)I

    move-result v1

    invoke-static {v14, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    div-int/lit8 v1, v0, 0x2

    add-int v17, v17, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int v1, v17, v1

    move/from16 v17, v0

    goto :goto_c

    :cond_11
    const/4 v1, 0x0

    const/16 v17, 0x0

    :goto_c
    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-lez v17, :cond_12

    move v3, v1

    goto :goto_d

    :cond_12
    move v3, v15

    :goto_d
    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0, v1, v12, v8}, Lcom/coui/appcompat/toolbar/COUIToolbar;->changeToolbarPadding(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/widget/ImageButton;ZI)V

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    const/4 v5, 0x0

    iget v6, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-direct {v7, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-static {v1}, Landroidx/core/view/m0;->w(Landroid/view/View;)I

    move-result v1

    invoke-static {v14, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    goto :goto_e

    :cond_13
    const/4 v0, 0x0

    :goto_e
    div-int/lit8 v11, v11, 0x2

    div-int/lit8 v1, v17, 0x2

    add-int/2addr v11, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v11, v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetEnd()I

    move-result v1

    if-lez v17, :cond_14

    add-int/2addr v15, v11

    goto :goto_f

    :cond_14
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v15, v2

    :goto_f
    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v10, v13

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v15

    move/from16 v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v15, v0

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/m0;->w(Landroid/view/View;)I

    move-result v0

    invoke-static {v14, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    :cond_15
    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v15

    move/from16 v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v15, v0

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-static {v0}, Landroidx/core/view/m0;->w(Landroid/view/View;)I

    move-result v0

    invoke-static {v14, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    move v12, v9

    const/4 v9, 0x0

    :goto_10
    if-ge v9, v11, :cond_19

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    if-nez v1, :cond_18

    invoke-direct {v7, v13}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-boolean v0, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSegmentButton:Z

    if-eqz v0, :cond_17

    goto :goto_11

    :cond_17
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p1

    move v3, v15

    move/from16 v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v15, v0

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {v7, v13}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v13}, Landroidx/core/view/m0;->w(Landroid/view/View;)I

    move-result v1

    invoke-static {v14, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v12, v0

    move v14, v1

    :cond_18
    :goto_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_19
    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    const/4 v9, -0x1

    if-eqz v0, :cond_1b

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextSize:F

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v0, v15, v20

    iget-object v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mGapBetweenNavigationAndTitle:I

    goto :goto_12

    :cond_1a
    move v2, v11

    :goto_12
    add-int v3, v0, v2

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, v16

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v2, v0, v1

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {v1}, Landroidx/core/view/m0;->w(Landroid/view/View;)I

    move-result v1

    invoke-static {v14, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    move v13, v2

    move v6, v14

    move v14, v0

    goto :goto_13

    :cond_1b
    const/4 v11, 0x0

    move v13, v11

    move v6, v14

    move v14, v13

    :goto_13
    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v20, v15, v20

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mGapBetweenNavigationAndTitle:I

    goto :goto_14

    :cond_1c
    move v2, v11

    :goto_14
    add-int v3, v20, v2

    add-int v5, v14, v16

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v9, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v14, v0

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/view/m0;->w(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_15

    :cond_1d
    move v9, v6

    :goto_15
    add-int/2addr v15, v13

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v15, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v6

    invoke-static {v1, v8, v2}, Landroidx/core/view/m0;->g0(III)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v6, 0x10

    move/from16 v3, p2

    invoke-static {v0, v3, v2}, Landroidx/core/view/m0;->g0(III)I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldCollapse()Z

    move-result v2

    if-eqz v2, :cond_1e

    move v10, v11

    goto :goto_16

    :cond_1e
    move v10, v0

    :goto_16
    invoke-virtual {v7, v1, v10}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRtlPropertiesChanged(I)V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->setDirection(Z)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-static {p1}, Landroidx/core/view/u;->a(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mEatingTouch:Z

    :cond_0
    iget-boolean v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iput-boolean v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mEatingTouch:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mEatingTouch:Z

    :cond_3
    return v3
.end method

.method public refresh()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v2, Landroidx/appcompat/R$attr;->actionBarStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$drawable;->coui_toolbar_menu_icon_more:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    sget v1, Landroidx/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->refresh(Landroid/content/Context;)V

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iput-object v4, v1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextAppearance:I

    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextColor:I

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextAppearance:I

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_5
    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextColor:I

    if-eqz v2, :cond_6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mResId:I

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mResId:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->inflateMenu(I)V

    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mCollapsible:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->setAbsolute(II)V

    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->setRelative(II)V

    return-void
.end method

.method public setEnableAddExtraWidth(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setIsFixTitleFontSize(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->setIsFixTitleFontSize(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "Toolbar"

    const-string p1, "setIsFixTitleFontSize when mMenuView is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIsInsideSideNavigationBar(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsInsideSideNavigationBar:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsInsideSideNavigationBar:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setIsTitleCenterStyle(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureMenuView()V

    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setTextAlignment(I)V

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureLogoView()V

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->addSystemView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureLogoView()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    iput-object p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    return-void
.end method

.method public setMenuViewColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lf/a;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1}, Lv/a;->n(Landroid/graphics/drawable/Drawable;I)V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setMinTitleTextSize(F)V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTextMaxSize:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTextMinSize:F

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMinHeight:I

    invoke-super {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureNavButtonView()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureNavButtonView()V

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->addSystemView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureNavButtonView()V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$h;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$h;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureMenu()V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPopupMenuRuleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mPopupRuleEnable:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mPopupTheme:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mPopupContext:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupWindowOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->setPopupWindowOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public setRedDot(II)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    if-nez p0, :cond_0

    const-string p0, "Toolbar"

    const-string p1, "The COUIActionMenuView is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->setRedDot(II)V

    return-void
.end method

.method public setSearchView(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mToolbarHeight:I

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(II)V

    .line 3
    new-instance v1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setSearchView(Landroid/view/View;Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;)V

    return-void
.end method

.method public setSearchView(Landroid/view/View;Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6
    iput-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mHasSearchViewFlag:Z

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mHasSearchViewFlag:Z

    .line 8
    new-instance v2, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-direct {v2, p2}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;)V

    .line 9
    iput-boolean v1, v2, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    .line 10
    iput v0, v2, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 11
    invoke-virtual {p0, p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSegmentButtons(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSegmentButtonHeight:I

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(II)V

    .line 3
    new-instance v1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setSegmentButtons(Landroid/view/View;Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;)V

    return-void
.end method

.method public setSubMenuList(Ljava/util/ArrayList;ILcom/coui/appcompat/poplist/COUISubMenuClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;I",
            "Lcom/coui/appcompat/poplist/COUISubMenuClickListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->generateDefaultLayoutParams()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mTypeTitle:Z

    .line 8
    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 10
    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 11
    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 12
    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 13
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextColor:I

    if-eqz v0, :cond_1

    .line 14
    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->addSystemView(Landroid/view/View;)V

    .line 17
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setTextAlignment(I)V

    .line 22
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :cond_4
    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextAppearance:I

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextColor:I

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureTitleTextView()V

    .line 4
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->addSystemView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextSize:F

    .line 12
    :cond_2
    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleMarginStart:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 5

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextAppearance:I

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleType:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    const/4 v3, 0x2

    invoke-static {p2, v2, v3}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result p2

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    iget p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextAppearance:I

    const v2, 0x1010140

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    iget p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextAppearance:I

    const v2, 0x1010218

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_2

    const v2, 0x3fb33333    # 1.4f

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    iget p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextAppearance:I

    const v2, 0x10103b1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_4

    const/4 v2, 0x5

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTextAlignment(I)V

    :cond_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    iget p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextAppearance:I

    const v2, 0x1010153

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    if-lt p2, v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6
    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTextMaxSize:F

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextSize:F

    :cond_7
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextColor:I

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextSize:F

    :cond_0
    return-void
.end method

.method public setTitleTextViewTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureTitleTextView()V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setUseResponsivePadding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mUseResponsivePadding:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mMenuView:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->showOverflowMenu()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    move-result p0

    return p0
.end method

.method public tintNavigationIconDrawable(I)V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lf/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lv/a;->n(Landroid/graphics/drawable/Drawable;I)V

    nop

    :cond_1
    :goto_0
    return-void
.end method
