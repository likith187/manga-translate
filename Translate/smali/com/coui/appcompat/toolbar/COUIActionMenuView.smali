.class public Lcom/coui/appcompat/toolbar/COUIActionMenuView;
.super Landroidx/appcompat/widget/ActionMenuView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/toolbar/COUIActionMenuView$OverflowMenuListener;,
        Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;
    }
.end annotation


# static fields
.field private static final EMPTY_TITLE:Ljava/lang/String; = ""

.field private static final HUNDRED:I = 0x64

.field private static final MAX_TEXT_MENU_ITEM_LINE:I = 0x2

.field private static final OVER_FLOW_MENU_CLASS:Ljava/lang/String; = "androidx.appcompat.widget.ActionMenuPresenter$OverflowMenuButton"

.field private static final TAG:Ljava/lang/String; = "COUIActionMenuView"

.field private static final TEN:I = 0xa


# instance fields
.field private mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

.field private mEdgeIconItemMargin:I

.field private mEdgeTextItemMargin:I

.field private mEnableAddExtraWidth:Z

.field private mHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

.field private mIconItemHorOffset:I

.field private mIsFixTitleFontSize:Z

.field private mIsSameSide:Z

.field private mItemSpacing:I

.field private mItemSpecialColorMap:Landroidx/collection/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/a;"
        }
    .end annotation
.end field

.field private mItemVerOffset:I

.field private mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mMenuIconBgRadius:I

.field private mMenuIconTopPadding:I

.field private mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private mMenuViewPadding:I

.field private mNonActionRedDotCount:I

.field private mNonActionRedDotSum:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnSubMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOpenOverflowRunnable:Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;

.field private mOverFlowButtonDescription:Ljava/lang/String;

.field private mOverFlowHorPadding:I

.field private mOverFlowMenuButton:Landroid/view/View;

.field private mOverFlowMinWidth:I

.field private mOverflowItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOverflowMenuListener:Lcom/coui/appcompat/toolbar/COUIActionMenuView$OverflowMenuListener;

.field public mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

.field private mPresenterClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mRedDotDescription:Ljava/lang/String;

.field private mRedDotHorizontalOffset:I

.field private mRedDotMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRedDotVerticalOffset:I

.field private mRedDotWithBigNumberHorizontalOffset:I

.field private mRedDotWithNumberDescriptionId:I

.field private mRedDotWithNumberHorizontalOffset:I

.field private mRedDotWithNumberVerticalOffset:I

.field private mRedDotWithSmallNumberHorizontalOffset:I

.field private mSubItemSpecialColorMap:Landroidx/collection/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/a;"
        }
    .end annotation
.end field

.field private mSubMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSubPosition:I

.field private mTextExtarPadding:I

.field private mTextMenuItemHorizontalPadding:I

.field private mTextMenuItemMaxWidth:I

.field private mToolbarTitleMinWidth:I

.field private mUseBackgroundBlur:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;-><init>(Lcom/coui/appcompat/toolbar/COUIActionMenuView;Lcom/coui/appcompat/toolbar/COUIActionMenuView$1;)V

    iput-object p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOpenOverflowRunnable:Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;

    .line 4
    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mPresenterClasses:Ljava/util/List;

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mIsSameSide:Z

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuViewPadding:I

    .line 8
    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mSubMenuList:Ljava/util/ArrayList;

    const/4 v2, -0x1

    .line 9
    iput v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mSubPosition:I

    .line 10
    iput-boolean p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mEnableAddExtraWidth:Z

    .line 11
    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowMenuListener:Lcom/coui/appcompat/toolbar/COUIActionMenuView$OverflowMenuListener;

    .line 12
    iput-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mUseBackgroundBlur:Z

    .line 13
    sget-object p2, Lcom/coui/appcompat/uiutil/UIUtil;->ANIM_LEVEL_SUPPORT_BLUR_MIN:Lcom/coui/appcompat/uiutil/AnimLevel;

    iput-object p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->coui_action_menu_item_min_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowMinWidth:I

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->overflow_button_padding_horizontal:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowHorPadding:I

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->toolbar_edge_icon_menu_item_margin:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mEdgeIconItemMargin:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->toolbar_icon_item_horizontal_offset:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mIconItemHorOffset:I

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->toolbar_item_vertical_offset:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mItemVerOffset:I

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->coui_actionbar_menuitemview_item_spacing:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mItemSpacing:I

    .line 20
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->coui_toolbar_menu_red_dot_horizontal_offset:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotHorizontalOffset:I

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->coui_toolbar_menu_red_dot_vertical_offset:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotVerticalOffset:I

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->coui_toolbar_menu_red_dot_with_number_vertical_offset:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotWithNumberVerticalOffset:I

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->coui_toolbar_menu_red_dot_with_number_horizontal_offset:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotWithNumberHorizontalOffset:I

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->coui_toolbar_menu_red_dot_with_small_number_horizontal_offset:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotWithSmallNumberHorizontalOffset:I

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->coui_toolbar_menu_red_dot_with_big_number_horizontal_offset:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotWithBigNumberHorizontalOffset:I

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->coui_toolbar_menu_icon_top_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuIconTopPadding:I

    .line 28
    new-instance p2, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/support/reddot/R$styleable;->COUIHintRedDot:[I

    const/4 v4, 0x0

    sget v5, Lcom/support/reddot/R$style;->Widget_COUI_COUIHintRedDot_Small:I

    const/4 v2, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V

    iput-object p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroidx/appcompat/R$string;->abc_action_menu_overflow_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowButtonDescription:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/reddot/R$string;->red_dot_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotDescription:Ljava/lang/String;

    .line 31
    sget p2, Lcom/support/reddot/R$plurals;->red_dot_with_number_description:I

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotWithNumberDescriptionId:I

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->coui_toolbar_menu_bg_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuIconBgRadius:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->coui_action_bar_text_menu_item_max_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mTextMenuItemMaxWidth:I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->coui_toolbar_title_min_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mToolbarTitleMinWidth:I

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->coui_toolbar_text_menu_bg_padding_horizontal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mTextMenuItemHorizontalPadding:I

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->tryBuildOverflowMenu()V

    return-void
.end method

.method static synthetic access$200(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOpenOverflowRunnable:Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowMenuButton:Landroid/view/View;

    return-object p0
.end method

.method private configOverflowIconBackground()V
    .locals 3

    new-instance v0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->getMaskRippleRadiusByType(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->setCircleRippleMask(I)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowMenuButton:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowMenuButton:Landroid/view/View;

    invoke-static {p0, v2}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    return-void
.end method

.method private drawRedDot(Landroid/view/View;ILandroid/graphics/Canvas;)V
    .locals 11

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_8

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {v3, v0, p2}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->getViewWidth(II)I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {v4, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->getViewHeight(I)I

    move-result v4

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotHorizontalOffset:I

    iget v5, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotVerticalOffset:I

    goto :goto_1

    :cond_2
    const/16 v1, 0xa

    if-ge p2, v1, :cond_3

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotWithSmallNumberHorizontalOffset:I

    iget v5, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotWithNumberVerticalOffset:I

    goto :goto_1

    :cond_3
    const/16 v1, 0x64

    if-ge p2, v1, :cond_4

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotWithNumberHorizontalOffset:I

    iget v5, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotWithNumberVerticalOffset:I

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotWithBigNumberHorizontalOffset:I

    iget v5, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotWithNumberVerticalOffset:I

    :goto_1
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    instance-of v7, p1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v7, :cond_6

    move-object v7, p1

    check-cast v7, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_6

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuViewPadding:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    int-to-float v1, v3

    sub-float v1, p1, v1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, p1

    int-to-float p1, v1

    sub-float/2addr v2, p1

    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuViewPadding:I

    int-to-float p1, p1

    add-float v1, v2, p1

    int-to-float p1, v3

    add-float/2addr p1, v1

    :goto_2
    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuIconTopPadding:I

    sub-int/2addr v2, v5

    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mItemVerOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v4

    add-float/2addr v3, v2

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->isLayoutRTL()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuIconBgRadius:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v2

    int-to-float v8, v8

    add-float/2addr v7, v8

    int-to-float v1, v1

    sub-float/2addr v7, v1

    int-to-float v1, v3

    add-float/2addr v1, v7

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuIconBgRadius:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    int-to-float v1, v1

    add-float/2addr v7, v1

    int-to-float v1, v3

    sub-float v1, v7, v1

    move v10, v7

    move v7, v1

    move v1, v10

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v8, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuIconBgRadius:I

    sub-int/2addr p1, v8

    div-int/2addr p1, v2

    int-to-float p1, p1

    add-float/2addr v3, p1

    int-to-float p1, v5

    sub-float v2, v3, p1

    int-to-float p1, v4

    add-float v3, v2, p1

    move p1, v1

    move v1, v7

    :goto_4
    iput v1, v6, Landroid/graphics/RectF;->left:F

    iput v2, v6, Landroid/graphics/RectF;->top:F

    iput p1, v6, Landroid/graphics/RectF;->right:F

    iput v3, v6, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p3, v0, p1, v6}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->drawRedPoint(Landroid/graphics/Canvas;ILjava/lang/Object;Landroid/graphics/RectF;)V

    :cond_8
    return-void
.end method

.method private ensureOverflowMenu()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->isCOUITheme(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/support/appcompat/R$style;->Theme_COUI:I

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    :cond_0
    new-instance v1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mUseBackgroundBlur:Z

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

    invoke-virtual {v1, v0, v2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setUseBackgroundBlur(ZLcom/coui/appcompat/uiutil/AnimLevel;)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowItems:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method private isLayoutRTL()Z
    .locals 1

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private measureChild(II)I
    .locals 10

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->shouldUseStrictTextMeasure()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move v5, v0

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->measureChildCollapseMargins(Landroid/view/View;IIII)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mToolbarTitleMinWidth:I

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v3, v5, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;

    if-eqz v3, :cond_4

    move-object v3, v5

    check-cast v3, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;

    invoke-virtual {v3}, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->isTextMenuItem()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v5

    check-cast v4, Landroid/widget/TextView;

    iget v6, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mTextMenuItemMaxWidth:I

    iget v7, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mTextMenuItemHorizontalPadding:I

    const/4 v8, 0x2

    mul-int/2addr v7, v8

    invoke-static {v4, v6, v7}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->measureTextLineCount(Landroid/widget/TextView;II)I

    move-result v6

    if-nez v1, :cond_2

    if-gt v6, v8, :cond_1

    iget v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mTextMenuItemMaxWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_2

    :cond_1
    sub-int v4, v0, v2

    div-int/2addr v4, v8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    :goto_2
    sub-int v3, v0, v2

    div-int/2addr v3, v8

    add-int v7, v3, v2

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->measureChildCollapseMargins(Landroid/view/View;IIII)I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    goto :goto_5

    :cond_2
    if-gt v6, v8, :cond_3

    iget v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mTextMenuItemMaxWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_4

    :cond_3
    iget v6, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mTextMenuItemMaxWidth:I

    sub-int v7, v0, v2

    iget v9, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mTextMenuItemHorizontalPadding:I

    mul-int/2addr v9, v8

    invoke-static {v4, v8, v6, v7, v9}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->binarySearchForOptimalTextViewWidth(Landroid/widget/TextView;IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    :goto_4
    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v5

    move v5, p1

    move v6, v2

    move v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->measureChildCollapseMargins(Landroid/view/View;IIII)I

    move-result v3

    goto :goto_3

    :cond_4
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :cond_6
    return v0
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr v2, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

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

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method private resetItemMargin()V
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v4, v3

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    if-ge v1, v5, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_1

    move v3, v1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eq v3, v0, :cond_6

    iget-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mIsSameSide:Z

    if-nez v1, :cond_6

    if-le v2, v6, :cond_6

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast v1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mEdgeTextItemMargin:I

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mEdgeTextItemMargin:I

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mEdgeIconItemMargin:I

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mEdgeIconItemMargin:I

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_6
    :goto_2
    if-eq v4, v0, :cond_a

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_7

    iget p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mEdgeTextItemMargin:I

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3

    :cond_7
    iget p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mEdgeTextItemMargin:I

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mEdgeIconItemMargin:I

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3

    :cond_9
    iget p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mEdgeIconItemMargin:I

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_a
    :goto_3
    return-void
.end method

.method private setRedDotDescription(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotWithNumberDescriptionId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotDescription:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private shouldUseStrictTextMeasure()Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mIsSameSide:Z

    if-nez v0, :cond_2

    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;

    invoke-virtual {v1}, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->isTextMenuItem()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method private tryBuildOverflowMenu()V
    .locals 10

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->ensureOverflowMenu()V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    invoke-direct {v0}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    iput-object v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    move v6, v1

    :goto_1
    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-interface {v5, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->reset()Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v8

    invoke-interface {v7}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setId(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v8

    invoke-interface {v7}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v8

    invoke-interface {v7}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_0
    move-object v9, v4

    :goto_2
    invoke-virtual {v8, v9}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setTitle(Ljava/lang/String;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v8

    invoke-interface {v7}, Landroid/view/MenuItem;->getGroupId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setGroupId(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v8

    invoke-interface {v7}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setIsEnable(Z)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->build()Lcom/coui/appcompat/poplist/PopupListItem;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :cond_2
    iget-object v5, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_4

    :cond_4
    :goto_3
    move v5, v6

    :goto_4
    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->reset()Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setId(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    invoke-virtual {v7, v4}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setTitle(Ljava/lang/String;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v4

    iget-object v7, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setIsChecked(Z)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v4

    iget-object v7, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setGroupId(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setRedDotAmount(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v4

    if-ne v5, v6, :cond_6

    goto :goto_5

    :cond_6
    move v6, v1

    :goto_5
    invoke-virtual {v4, v6}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setHintType(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setSubMenuItemList(Ljava/util/ArrayList;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setIsEnable(Z)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->build()Lcom/coui/appcompat/poplist/PopupListItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setItemList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mIsFixTitleFontSize:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setIsFixedFontSize(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    new-instance v1, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;-><init>(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOnSubMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setSubMenuClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowMenuListener:Lcom/coui/appcompat/toolbar/COUIActionMenuView$OverflowMenuListener;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-interface {v0, p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView$OverflowMenuListener;->onOverflowMenuPreShow(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    const-string v1, ""

    invoke-static {p1, v1}, Landroidx/appcompat/widget/m0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    move-object v1, p3

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$c;

    iget-boolean v1, v1, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowMenuButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->configOverflowIconBackground()V

    const/4 v1, -0x1

    iput v1, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowMenuButton:Landroid/view/View;

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowMinWidth:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowMenuButton:Landroid/view/View;

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowHorPadding:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowHorPadding:I

    iget-object v5, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowMenuButton:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowMenuButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowMenuButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLongClickable(Z)V

    new-instance v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView$1;-><init>(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->configMenuItemViewAlignment()V

    return-void
.end method

.method public clearRedDotInfo()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mNonActionRedDotSum:I

    iput v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mNonActionRedDotCount:I

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method protected configMenuItemViewAlignment()V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getIsTitleCenterStyle()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mIsSameSide:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mIsSameSide:Z

    :goto_0
    iget-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mIsSameSide:Z

    const/4 v2, 0x6

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setTextAlignment(I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    if-ne v4, v1, :cond_6

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;

    if-eqz v0, :cond_6

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->isTextMenuItem()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v2}, Landroid/view/View;->setTextAlignment(I)V

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_2
    if-ltz v0, :cond_6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v4, :cond_5

    if-eqz v1, :cond_4

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/View;->setTextAlignment(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTextAlignment(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setTextAlignment(I)V

    :goto_3
    move-object v1, v3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    return-void
.end method

.method public dismissPopupMenus(Z)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->superDismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    invoke-direct {p0, v2, v3, p1}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->drawRedDot(Landroid/view/View;ILandroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$c;

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_4

    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mNonActionRedDotCount:I

    if-nez v3, :cond_2

    const/4 v3, -0x1

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mNonActionRedDotSum:I

    :goto_2
    invoke-direct {p0, v2, v3, p1}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->drawRedDot(Landroid/view/View;ILandroid/graphics/Canvas;)V

    invoke-direct {p0, v3}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->setRedDotDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowButtonDescription:Ljava/lang/String;

    goto :goto_3

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowButtonDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->setRedDotDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getOverFlowMenuButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowMenuButton:Landroid/view/View;

    return-object p0
.end method

.method public getOverflowPopupWindow()Lcom/coui/appcompat/poplist/COUIPopupListWindow;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    return-object p0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p4, p2

    move v0, p4

    :goto_0
    const/16 v1, 0x8

    if-ge p4, p1, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroidx/appcompat/widget/o0;->b(Landroid/view/View;)Z

    move-result p4

    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    iget-boolean p3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mIsSameSide:Z

    if-eqz p3, :cond_5

    if-eqz p4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    :goto_2
    if-ge p2, p1, :cond_13

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_3

    :cond_2
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p3, v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v4, v3, 0x2

    sub-int v4, p5, v4

    sub-int v5, p3, v2

    add-int/2addr v3, v4

    invoke-virtual {p4, v5, v4, p3, v3}, Landroid/view/View;->layout(IIII)V

    iget p4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, p4

    iget p4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mItemSpacing:I

    add-int/2addr v2, p4

    sub-int/2addr p3, v2

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    :goto_4
    if-ge p2, p1, :cond_13

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v1, :cond_4

    goto :goto_5

    :cond_4
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr p3, v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v4, v3, 0x2

    sub-int v4, p5, v4

    add-int v5, p3, v2

    add-int/2addr v3, v4

    invoke-virtual {p4, p3, v4, v5, v3}, Landroid/view/View;->layout(IIII)V

    iget p4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, p4

    iget p4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mItemSpacing:I

    add-int/2addr v2, p4

    add-int/2addr p3, v2

    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_5
    const/4 p3, 0x1

    if-eqz p4, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p1, p3

    move v2, p3

    :goto_6
    if-ltz p1, :cond_13

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v1, :cond_6

    goto :goto_8

    :cond_6
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr p4, v5

    if-eqz v2, :cond_8

    instance-of v2, v3, Landroid/widget/TextView;

    if-eqz v2, :cond_7

    move-object v2, v3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mTextExtarPadding:I

    add-int/2addr p4, v2

    :cond_7
    move v2, p2

    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v7, v6, 0x2

    sub-int v7, p5, v7

    if-nez p1, :cond_b

    if-le v0, p3, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v4

    sub-int/2addr v8, v5

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_a

    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_7

    :cond_9
    iget v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuViewPadding:I

    sub-int/2addr v8, v4

    :cond_a
    :goto_7
    add-int/2addr v5, v8

    add-int/2addr v6, v7

    invoke-virtual {v3, v8, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_8

    :cond_b
    add-int v8, p4, v5

    add-int/2addr v6, v7

    invoke-virtual {v3, p4, v7, v8, v6}, Landroid/view/View;->layout(IIII)V

    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v3

    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mItemSpacing:I

    add-int/2addr v5, v3

    add-int/2addr p4, v5

    :goto_8
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p4, v2

    sub-int/2addr p1, p3

    move v2, p3

    :goto_9
    if-ltz p1, :cond_13

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v1, :cond_d

    goto :goto_b

    :cond_d
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p4, v5

    if-eqz v2, :cond_f

    instance-of v2, v3, Landroid/widget/TextView;

    if-eqz v2, :cond_e

    move-object v2, v3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mTextExtarPadding:I

    sub-int/2addr p4, v2

    :cond_e
    move v2, p2

    :cond_f
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v7, v6, 0x2

    sub-int v7, p5, v7

    if-nez p1, :cond_12

    if-le v0, p3, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v4

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_11

    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_a

    :cond_10
    iget v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenuViewPadding:I

    add-int/2addr v8, v4

    :cond_11
    :goto_a
    add-int/2addr v5, v8

    add-int/2addr v6, v7

    invoke-virtual {v3, v8, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_b

    :cond_12
    sub-int v8, p4, v5

    add-int/2addr v6, v7

    invoke-virtual {v3, v8, v7, p4, v6}, Landroid/view/View;->layout(IIII)V

    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v3

    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mItemSpacing:I

    add-int/2addr v5, v3

    sub-int/2addr p4, v5

    :goto_b
    add-int/lit8 p1, p1, -0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->onMeasure(II)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mIsSameSide:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getIsTitleCenterStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mIsSameSide:Z

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v2, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->resetItemMargin()V

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->measureChild(II)I

    move-result p1

    move p2, v2

    move v4, p2

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge p2, v5, :cond_4

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-le v6, v4, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    iget-boolean p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mIsSameSide:Z

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_8

    const/4 v3, -0x1

    move v5, v2

    move v6, v5

    move v7, v3

    :goto_2
    if-ge v5, p2, :cond_6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    move v7, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    sub-int/2addr v6, v0

    iget p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mItemSpacing:I

    mul-int/2addr v6, p2

    add-int/2addr p1, v6

    if-eq v7, v3, :cond_7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    iget p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mTextExtarPadding:I

    add-int/2addr p1, p2

    :cond_7
    move v3, p1

    goto :goto_4

    :cond_8
    move v3, v2

    :goto_4
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0, p1, p2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_9
    invoke-virtual {p0, v3, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public refresh()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->refresh()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->refresh(Landroid/content/Context;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;

    invoke-virtual {v1}, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->refresh()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setBlurMinAnimLevel(Lcom/coui/appcompat/uiutil/AnimLevel;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

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

    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mIsFixTitleFontSize:Z

    return-void
.end method

.method public setItemSpecialColor(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method setMenuItemGap(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;

    invoke-virtual {v2, p1}, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->setItemWithGap(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnSubMenuItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOnSubMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOverflowMenuListener(Lcom/coui/appcompat/toolbar/COUIActionMenuView$OverflowMenuListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowMenuListener:Lcom/coui/appcompat/toolbar/COUIActionMenuView$OverflowMenuListener;

    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/BaseAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->tryBuildOverflowMenu()V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/BaseAdapter;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Landroid/widget/BaseAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPopupWindowOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setRedDot(II)V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v0, :cond_0

    const-string p0, "COUIActionMenuView"

    const-string p1, "The MenuBuilder is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_5

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mNonActionRedDotCount:I

    if-nez v4, :cond_2

    move v1, v3

    :cond_2
    sub-int/2addr v4, v1

    iput v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mNonActionRedDotCount:I

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mNonActionRedDotSum:I

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    sub-int/2addr v4, v3

    iput v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mNonActionRedDotSum:I

    :cond_4
    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mNonActionRedDotCount:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mNonActionRedDotCount:I

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mNonActionRedDotSum:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mNonActionRedDotSum:I

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mNonActionRedDotSum:I

    add-int/2addr v4, p2

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    sub-int/2addr v4, v3

    iput v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mNonActionRedDotSum:I

    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mRedDotMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    if-eq p2, v2, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->setRedDotDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_a
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setContentDescription(Ljava/lang/CharSequence;)Lw/b;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setSubItemSpecialColor(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSubMenuClickListener(Lcom/coui/appcompat/poplist/COUISubMenuClickListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOnSubMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setSubMenuList(Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setUseBackgroundBlur(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mUseBackgroundBlur:Z

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/uiutil/UIUtil;->contextToActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverFlowMenuButton:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->tryBuildOverflowMenu()V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOpenOverflowRunnable:Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method
