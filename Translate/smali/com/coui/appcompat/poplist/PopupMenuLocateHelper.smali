.class final Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$DefaultPopupMenuConfigRule;
    }
.end annotation


# static fields
.field private static final COUI_DEBUG:Z

.field private static final DEFAULT_ANCHOR_OUTSETS:Landroid/graphics/Rect;

.field private static final EMPTY_OUTSETS:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "PopupMenuLocateHelper"


# instance fields
.field private final mAnchorBounds:Landroid/graphics/Rect;

.field private final mAnchorLocationInWindow:[I

.field private final mAnchorOffset:[I

.field final mApplicationWindow:Landroid/graphics/Rect;

.field private final mAvailableBounds:Landroid/graphics/Rect;

.field private mCenterAlign:Z

.field private final mContentVisibleBounds:Landroid/graphics/Rect;

.field private mContextAnchorConfigRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

.field private mDefaultAnchorConfigRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private final mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

.field private final mExecutor:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

.field private mGlobalOffsetX:I

.field private mGlobalOffsetY:I

.field private mHorizontalOverlapBetweenMainAndSubMenu:I

.field private mIgnoreBarrier:Z

.field private mIsRtl:Z

.field private mLocateFromAboveAnchorToBelow:Z

.field private mMainMenuCenterLocateXRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

.field private mMainMenuCenterLocateYRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

.field private mMainMenuGlobalOffsetRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

.field private mMainMenuHeight:I

.field private mMainMenuLocateXRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

.field private mMainMenuLocateYRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

.field private mMainMenuRelocateRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

.field private mMainMenuShrinkWidth:I

.field private mMainMenuWidth:I

.field private mMinGapBetweenMainAndSubMenu:I

.field private mNavigationBarMargin:I

.field private final mOffset:[I

.field private mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

.field private mStatusBarMargin:I

.field private mSubMenuHeight:I

.field private mSubMenuLocateRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

.field private mSubMenuWidth:I

.field private final mSubmenuAnchorBounds:Landroid/graphics/Rect;

.field private mSubmenuAnchorConfigRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

.field private final mTempContentVisibleBounds:Landroid/graphics/Rect;

.field private mUseWindowBarrier:Z

.field private mVerticalOverlapBetweenMainAndSubMenu:I

.field private mWindowBottomBarrierRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

.field private mWindowConfigRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

.field private mWindowCutoutBarrierRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

.field private mWindowLeftBarrierRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

.field private mWindowRightBarrierRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

.field private mWindowTopBarrierRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->LOG_DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "PopupMenuLocateHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/coui/appcompat/log/COUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->COUI_DEBUG:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->EMPTY_OUTSETS:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->DEFAULT_ANCHOR_OUTSETS:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mContentVisibleBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAnchorBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAvailableBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mSubmenuAnchorBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mTempContentVisibleBounds:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mOffset:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAnchorOffset:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAnchorLocationInWindow:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mStatusBarMargin:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mNavigationBarMargin:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMinGapBetweenMainAndSubMenu:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mHorizontalOverlapBetweenMainAndSubMenu:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mVerticalOverlapBetweenMainAndSubMenu:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuShrinkWidth:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mGlobalOffsetX:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mGlobalOffsetY:I

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mLocateFromAboveAnchorToBelow:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mIsRtl:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mUseWindowBarrier:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mCenterAlign:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/poplist/R$dimen;->coui_popup_list_window_top_status_bar_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mStatusBarMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/poplist/R$dimen;->coui_popup_list_window_bottom_navigation_bar_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mNavigationBarMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/poplist/R$dimen;->coui_popup_list_window_min_gap_to_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMinGapBetweenMainAndSubMenu:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/poplist/R$dimen;->coui_popup_list_window_main_menu_shrink_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuShrinkWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/poplist/R$dimen;->coui_popup_list_window_horizontal_overlap_between_main_and_sub_menu:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mHorizontalOverlapBetweenMainAndSubMenu:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/poplist/R$dimen;->coui_popup_list_window_vertical_overlap_between_main_and_sub_menu:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mVerticalOverlapBetweenMainAndSubMenu:I

    new-instance v1, Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-direct {v1}, Lcom/coui/appcompat/poplist/PopupMenuDomain;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    new-instance v1, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    invoke-direct {v1}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mExecutor:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/poplist/R$dimen;->coui_popup_list_window_default_vertical_gap_to_anchor:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sget-object v1, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->DEFAULT_ANCHOR_OUTSETS:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, p1, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupRules()V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;Lcom/coui/appcompat/poplist/PopupMenuDomain;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->lambda$setupMainMenuGlobalOffsetRule$0(Lcom/coui/appcompat/poplist/PopupMenuDomain;)V

    return-void
.end method

.method static synthetic access$100()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->EMPTY_OUTSETS:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuWidth:I

    return p0
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAvailableBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuHeight:I

    return p0
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Lcom/coui/appcompat/poplist/PopupMenuDomain;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    return-object p0
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->COUI_DEBUG:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mLocateFromAboveAnchorToBelow:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuShrinkWidth:I

    return p0
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMinGapBetweenMainAndSubMenu:I

    return p0
.end method

.method static synthetic access$1800(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mSubMenuHeight:I

    return p0
.end method

.method static synthetic access$1900(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mSubMenuWidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Lcom/coui/component/responsiveui/ResponsiveUIModel;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mIsRtl:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mHorizontalOverlapBetweenMainAndSubMenu:I

    return p0
.end method

.method static synthetic access$2200(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mVerticalOverlapBetweenMainAndSubMenu:I

    return p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mContentVisibleBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mStatusBarMargin:I

    return p0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/view/DisplayCutout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mNavigationBarMargin:I

    return p0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAnchorBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$800()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->DEFAULT_ANCHOR_OUTSETS:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mSubmenuAnchorBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method private executeConfigRules(Landroid/view/View;II)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupMenuDomain;->reset()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mExecutor:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mWindowConfigRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->execute(Lcom/coui/appcompat/poplist/PopupMenuRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)Lcom/coui/appcompat/uiutil/Executor;

    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mIgnoreBarrier:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mUseWindowBarrier:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mExecutor:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mWindowLeftBarrierRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->execute(Lcom/coui/appcompat/poplist/PopupMenuRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)Lcom/coui/appcompat/uiutil/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mWindowTopBarrierRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-interface {v0, v1, v2}, Lcom/coui/appcompat/uiutil/Executor;->execute(Lcom/coui/appcompat/uiutil/Rule;Lcom/coui/appcompat/uiutil/Domain;)Lcom/coui/appcompat/uiutil/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mWindowRightBarrierRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-interface {v0, v1, v2}, Lcom/coui/appcompat/uiutil/Executor;->execute(Lcom/coui/appcompat/uiutil/Rule;Lcom/coui/appcompat/uiutil/Domain;)Lcom/coui/appcompat/uiutil/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mWindowBottomBarrierRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-interface {v0, v1, v2}, Lcom/coui/appcompat/uiutil/Executor;->execute(Lcom/coui/appcompat/uiutil/Rule;Lcom/coui/appcompat/uiutil/Domain;)Lcom/coui/appcompat/uiutil/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mWindowCutoutBarrierRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-interface {v0, v1, v2}, Lcom/coui/appcompat/uiutil/Executor;->execute(Lcom/coui/appcompat/uiutil/Rule;Lcom/coui/appcompat/uiutil/Domain;)Lcom/coui/appcompat/uiutil/Executor;

    :cond_0
    instance-of v0, p1, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    invoke-interface {p1}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mExecutor:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {p2, p1, p0}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->execute(Lcom/coui/appcompat/poplist/PopupMenuRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)Lcom/coui/appcompat/uiutil/Executor;

    goto :goto_1

    :cond_1
    const/high16 p1, -0x80000000

    if-eq p2, p1, :cond_3

    if-ne p3, p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mExecutor:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mContextAnchorConfigRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {p1, p2, p0}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->execute(Lcom/coui/appcompat/poplist/PopupMenuRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)Lcom/coui/appcompat/uiutil/Executor;

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mExecutor:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDefaultAnchorConfigRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {p1, p2, p0}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->execute(Lcom/coui/appcompat/poplist/PopupMenuRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)Lcom/coui/appcompat/uiutil/Executor;

    :goto_1
    return-void
.end method

.method private executeShowMainMenu()V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mCenterAlign:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mExecutor:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuCenterLocateXRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->execute(Lcom/coui/appcompat/poplist/PopupMenuRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)Lcom/coui/appcompat/uiutil/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuCenterLocateYRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-interface {v0, v1, v2}, Lcom/coui/appcompat/uiutil/Executor;->execute(Lcom/coui/appcompat/uiutil/Rule;Lcom/coui/appcompat/uiutil/Domain;)Lcom/coui/appcompat/uiutil/Executor;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mExecutor:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuLocateXRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->execute(Lcom/coui/appcompat/poplist/PopupMenuRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)Lcom/coui/appcompat/uiutil/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuLocateYRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-interface {v0, v1, v2}, Lcom/coui/appcompat/uiutil/Executor;->execute(Lcom/coui/appcompat/uiutil/Rule;Lcom/coui/appcompat/uiutil/Domain;)Lcom/coui/appcompat/uiutil/Executor;

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mExecutor:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuGlobalOffsetRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {v0, v1, p0}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->execute(Lcom/coui/appcompat/poplist/PopupMenuRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)Lcom/coui/appcompat/uiutil/Executor;

    return-void
.end method

.method private executeShowSubMenu()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mExecutor:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mSubmenuAnchorConfigRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->execute(Lcom/coui/appcompat/poplist/PopupMenuRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)Lcom/coui/appcompat/uiutil/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuRelocateRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-interface {v0, v1, v2}, Lcom/coui/appcompat/uiutil/Executor;->execute(Lcom/coui/appcompat/uiutil/Rule;Lcom/coui/appcompat/uiutil/Domain;)Lcom/coui/appcompat/uiutil/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mSubMenuLocateRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-interface {v0, v1, p0}, Lcom/coui/appcompat/uiutil/Executor;->execute(Lcom/coui/appcompat/uiutil/Rule;Lcom/coui/appcompat/uiutil/Domain;)Lcom/coui/appcompat/uiutil/Executor;

    return-void
.end method

.method private findAllBarrierRulesAndExecute(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    invoke-interface {v0}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mExecutor:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {v1, v0, v2}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->execute(Lcom/coui/appcompat/poplist/PopupMenuRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)Lcom/coui/appcompat/uiutil/Executor;

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->findAllBarrierRulesAndExecute(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getGlobalVisibleRectWithoutTransformation(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAnchorLocationInWindow:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAnchorLocationInWindow:[I

    aget v0, p0, v2

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    div-float/2addr p0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v1

    div-float/2addr v1, p0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result p1

    div-float/2addr p1, v1

    mul-float/2addr v2, p1

    float-to-int p1, v2

    sget-boolean v2, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->COUI_DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bounds with scale transform = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " origin width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " origin height = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " offset x = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " offset y = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PopupMenuLocateHelper"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    iget v2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    invoke-virtual {p2, p0, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private synthetic lambda$setupMainMenuGlobalOffsetRule$0(Lcom/coui/appcompat/poplist/PopupMenuDomain;)V
    .locals 4

    iget v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mGlobalOffsetX:I

    iput v0, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mGlobalOffsetX:I

    iget v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mGlobalOffsetY:I

    iput v1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mGlobalOffsetY:I

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAvailableBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAvailableBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAvailableBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mGlobalOffsetY:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAvailableBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr p0, v2

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iget-object v1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v0

    iget-object p1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {v1, v0, p0, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setAnchor(Landroid/view/View;IILandroid/view/View;)V
    .locals 4

    iget-object p4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAnchorBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p4}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->getGlobalVisibleRectWithoutTransformation(Landroid/view/View;Landroid/graphics/Rect;)V

    const/high16 p4, -0x80000000

    if-eq p2, p4, :cond_0

    if-eq p3, p4, :cond_0

    iget-object p4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAnchorBounds:Landroid/graphics/Rect;

    iget v0, p4, Landroid/graphics/Rect;->left:I

    add-int v1, v0, p2

    iget v2, p4, Landroid/graphics/Rect;->top:I

    add-int v3, v2, p3

    add-int/2addr v0, p2

    add-int/2addr v2, p3

    invoke-virtual {p4, v1, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mContentVisibleBounds:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mOffset:[I

    const/4 p4, 0x0

    aget p4, p3, p4

    neg-int p4, p4

    const/4 v0, 0x1

    aget p3, p3, v0

    neg-int p3, p3

    invoke-virtual {p2, p4, p3}, Landroid/graphics/Rect;->offset(II)V

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mContentVisibleBounds:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    if-nez p2, :cond_1

    new-instance p2, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-direct {p2, p3, p4, v1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    iput-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    sget-object p3, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_SMALL:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    invoke-virtual {p2, p3}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->rebuild(II)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "PopupMenuLocateHelper"

    const-string p2, "Detected an unattached anchor, could be a dummy anchor"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mIgnoreBarrier:Z

    :cond_2
    return-void
.end method

.method private setSubmenuAnchor(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mSubmenuAnchorBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-void
.end method

.method private setupContextAnchorConfigRule()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$7;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$7;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mContextAnchorConfigRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    return-void
.end method

.method private setupDefaultAnchorConfigRule()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$8;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$8;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDefaultAnchorConfigRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    return-void
.end method

.method private setupMainMenuCenterLocateXRule()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$10;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$10;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuCenterLocateXRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

    return-void
.end method

.method private setupMainMenuCenterLocateYRule()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$11;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$11;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuCenterLocateYRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

    return-void
.end method

.method private setupMainMenuGlobalOffsetRule()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/poplist/j;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/j;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuGlobalOffsetRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

    return-void
.end method

.method private setupMainMenuLocateXRule()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuLocateXRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

    return-void
.end method

.method private setupMainMenuLocateYRule()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuLocateYRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

    return-void
.end method

.method private setupMainMenuRelocateRule()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$14;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$14;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuRelocateRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

    return-void
.end method

.method private setupRules()V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupWindowConfigRule()V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupWindowLeftBarrierRule()V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupWindowRightBarrierRule()V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupWindowTopBarrierRule()V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupWindowBottomBarrierRule()V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupWindowCutoutBarrierRule()V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupContextAnchorConfigRule()V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupDefaultAnchorConfigRule()V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupSubmenuAnchorConfigRule()V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupMainMenuLocateXRule()V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupMainMenuLocateYRule()V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupMainMenuGlobalOffsetRule()V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupMainMenuRelocateRule()V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupSubMenuLocateRule()V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupMainMenuCenterLocateXRule()V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupMainMenuCenterLocateYRule()V

    return-void
.end method

.method private setupSubMenuLocateRule()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mSubMenuLocateRule:Lcom/coui/appcompat/poplist/PopupMenuControlRule;

    return-void
.end method

.method private setupSubmenuAnchorConfigRule()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$9;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$9;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mSubmenuAnchorConfigRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    return-void
.end method

.method private setupWindowBottomBarrierRule()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$6;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$6;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mWindowBottomBarrierRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    return-void
.end method

.method private setupWindowConfigRule()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$1;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mWindowConfigRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    return-void
.end method

.method private setupWindowCutoutBarrierRule()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mWindowCutoutBarrierRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    return-void
.end method

.method private setupWindowLeftBarrierRule()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$2;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mWindowLeftBarrierRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    return-void
.end method

.method private setupWindowRightBarrierRule()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$3;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$3;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mWindowRightBarrierRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    return-void
.end method

.method private setupWindowTopBarrierRule()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$4;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$4;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mWindowTopBarrierRule:Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    return-void
.end method


# virtual methods
.method public checkIfLimitedWindowOrAnchorResized(Landroid/view/View;IILandroid/view/View;)Z
    .locals 0

    const/4 p2, 0x1

    const-string p3, "PopupMenuLocateHelper"

    if-nez p1, :cond_0

    const-string p0, "Anchor is null!"

    invoke-static {p3, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_0
    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p4

    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mTempContentVisibleBounds:Landroid/graphics/Rect;

    invoke-virtual {p4, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mTempContentVisibleBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mContentVisibleBounds:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    if-ne p1, p4, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mTempContentVisibleBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mContentVisibleBounds:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    if-eq p1, p4, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const-string p1, "Visible bounds changed!"

    invoke-static {p3, p1}, Lcom/coui/appcompat/log/COUILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " old content visible bounds = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mContentVisibleBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " new content visible bounds = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mTempContentVisibleBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mContentVisibleBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mTempContentVisibleBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return p2
.end method

.method public getDomain()Lcom/coui/appcompat/poplist/PopupMenuDomain;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    return-object p0
.end method

.method public getMaxMainMenuHeight()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/PopupMenuDomain;->getAvailableRectHeight()I

    move-result p0

    return p0
.end method

.method public getMaxSubMenuHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->isCurrentContainerSmallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/PopupMenuDomain;->getAvailableRectHeight()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupMenuDomain;->getAvailableRectHeight()I

    move-result v0

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMinGapBetweenMainAndSubMenu:I

    sub-int/2addr v0, p0

    return v0
.end method

.method isCurrentContainerSmallScreen()Z
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->windowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowTotalSizeClass()Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    move-result-object p0

    sget-object v1, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public prepareShowMainMenu(IIZII)V
    .locals 0

    iput-boolean p3, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mLocateFromAboveAnchorToBelow:Z

    iput p4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mGlobalOffsetX:I

    iput p5, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mGlobalOffsetY:I

    iget-object p3, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object p4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAvailableBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p4}, Lcom/coui/appcompat/poplist/PopupMenuDomain;->getAvailableRect(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAvailableBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuWidth:I

    iget-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAvailableBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMainMenuHeight:I

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->executeShowMainMenu()V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/PopupMenuDomain;->dump()V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mExecutor:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->endConfigRulesRecord()V

    return-void
.end method

.method public prepareShowSubMenu(Landroid/view/View;IIZ)V
    .locals 0

    iput-boolean p4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mIsRtl:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->isCurrentContainerSmallScreen()Z

    move-result p4

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setSubmenuAnchor(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAvailableBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mSubMenuWidth:I

    iget-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAvailableBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-eqz p4, :cond_0

    iget p2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mMinGapBetweenMainAndSubMenu:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sub-int/2addr p1, p2

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mSubMenuHeight:I

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->executeShowSubMenu()V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/PopupMenuDomain;->dump()V

    return-void
.end method

.method public prepareWindowAndAnchor(Landroid/view/View;IILandroid/view/View;)V
    .locals 5

    if-eqz p4, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mOffset:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mContentVisibleBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    sget-boolean v1, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->COUI_DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limited window = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " anchor = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " window location = ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mOffset:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") anchor location = ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAnchorOffset:[I

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mAnchorOffset:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") final offset = ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") use window barrier = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mUseWindowBarrier:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " center align = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mCenterAlign:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mApplicationWindow [left "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " top "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " right "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bottom "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopupMenuLocateHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setAnchor(Landroid/view/View;IILandroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p4

    iput-object p4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDisplayCutout:Landroid/view/DisplayCutout;

    :cond_2
    iget-object p4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mExecutor:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    invoke-virtual {p4}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->beginConfigRulesRecord()V

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->executeConfigRules(Landroid/view/View;II)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->findAllBarrierRulesAndExecute(Landroid/view/View;)V

    return-void
.end method

.method public setCenterAlign(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mCenterAlign:Z

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuCenterAlign:Z

    return-void
.end method

.method setSubMenuAnchorIsFirstItem(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenuAnchorIsFirstItem:Z

    return-void
.end method

.method public useWindowBarrier(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mUseWindowBarrier:Z

    return-void
.end method
