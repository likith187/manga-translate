.class public Lcom/coui/appcompat/poplist/DefaultAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;,
        Lcom/coui/appcompat/poplist/DefaultAdapter$HeaderViewHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_TRANSPARENT_HOLDER:Landroid/graphics/drawable/Drawable;

.field private static final DESCRIPTION_TEXT_SIZE_DP:F = 12.0f

.field private static final FLAG_DESCRIPTION:I = 0x2

.field private static final FLAG_HAS_SUB_MENU:I = 0x10

.field private static final FLAG_HINT:I = 0x4

.field private static final FLAG_ICON:I = 0x1

.field private static final FLAG_STATE_ICON:I = 0x8

.field private static final MEDIUM_TYPEFACE:Landroid/graphics/Typeface;

.field private static final STATE_DISABLED:[I

.field private static final STATE_SELECTED:[I

.field private static final TAG:Ljava/lang/String; = "DefaultAdapter"

.field private static final TITLE_MAX_LINE_WITHOUT_DESCRIPTION:I = 0x3

.field private static final TITLE_MAX_LINE_WITH_DESCRIPTION:I = 0x2

.field private static final TITLE_TEXT_SIZE_DP:F = 16.0f

.field public static final TYPE_DIVIDER_DEFAULT:I = 0x1

.field public static final TYPE_DIVIDER_GROUP:I = 0x2

.field public static final TYPE_DIVIDER_HEADER:I = 0x5

.field public static final TYPE_ITEM_CUSTOM:I = 0x3

.field public static final TYPE_ITEM_DEFAULT:I = 0x0

.field public static final TYPE_ITEM_HEADER:I = 0x4

.field private static final VIEW_TYPE_COUNT:I = 0x6


# instance fields
.field private final mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mAlertColor:I

.field private final mContext:Landroid/content/Context;

.field private mDefaultDividerHeight:I

.field private mDefaultDividerMarginHorizontal:I

.field private mDefaultDividerMarginStartWithIcon:I

.field private mDescriptionColor:I

.field private mGroupDividerHeight:I

.field private mGroupSets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSubMenuHeader:Z

.field private mIsAdaptiveFontSize:Z

.field private mIsFixedFontSize:Z

.field private mItemTintList:Landroid/content/res/ColorStateList;

.field private mMenuItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupListItemMinHeight:I

.field private mPopupListItemPaddingVertical:I

.field private mPopupListMenuItemMinHeight:I

.field private mPopupListPaddingVertical:I

.field private mPrivateFlags:I

.field private mSharedDrawable:Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

.field private mStateIconTintList:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x101009e

    const v1, 0x10100a1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/poplist/DefaultAdapter;->STATE_SELECTED:[I

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/poplist/DefaultAdapter;->STATE_DISABLED:[I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/coui/appcompat/poplist/DefaultAdapter;->DEFAULT_TRANSPARENT_HOLDER:Landroid/graphics/drawable/Drawable;

    const-string v0, "sans-serif-medium"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/poplist/DefaultAdapter;->MEDIUM_TYPEFACE:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/coui/appcompat/poplist/DefaultAdapter$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/DefaultAdapter$1;-><init>(Lcom/coui/appcompat/poplist/DefaultAdapter;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPrivateFlags:I

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mIsAdaptiveFontSize:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mIsFixedFontSize:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mGroupSets:Ljava/util/Set;

    iput-object p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setItemList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/poplist/R$dimen;->coui_popup_list_divider_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mDefaultDividerHeight:I

    sget v0, Lcom/support/poplist/R$dimen;->coui_popup_list_group_divider_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mGroupDividerHeight:I

    sget v0, Lcom/support/poplist/R$dimen;->coui_popup_list_padding_vertical:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListPaddingVertical:I

    sget v0, Lcom/support/poplist/R$dimen;->coui_popup_list_window_item_padding_top_and_bottom:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListItemPaddingVertical:I

    sget v0, Lcom/support/poplist/R$dimen;->coui_popup_list_window_header_item_min_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListMenuItemMinHeight:I

    sget v0, Lcom/support/poplist/R$dimen;->coui_popup_list_window_item_min_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListItemMinHeight:I

    sget v0, Lcom/support/poplist/R$dimen;->coui_popup_list_default_divider_margin_start_with_icon:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mDefaultDividerMarginStartWithIcon:I

    sget v0, Lcom/support/poplist/R$dimen;->coui_popup_list_default_divider_margin_horizontal:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mDefaultDividerMarginHorizontal:I

    sget p2, Lcom/support/poplist/R$color;->coui_popup_list_window_item_tint_selector:I

    invoke-static {p1, p2}, Lcom/coui/appcompat/uiutil/UIUtil;->getColorStateListCompatNoCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mItemTintList:Landroid/content/res/ColorStateList;

    sget p2, Lcom/support/poplist/R$color;->coui_popup_list_window_item_status_icon_tint_selector:I

    invoke-static {p1, p2}, Lcom/coui/appcompat/uiutil/UIUtil;->getColorStateListCompatNoCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mStateIconTintList:Landroid/content/res/ColorStateList;

    sget p2, Lcom/support/appcompat/R$attr;->couiColorError:I

    sget v0, Lcom/support/appcompat/R$color;->coui_color_error:I

    invoke-static {p1, p2, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mAlertColor:I

    sget p2, Lcom/support/appcompat/R$attr;->couiColorLabelSecondary:I

    sget v0, Lcom/support/appcompat/R$color;->coui_color_secondary_neutral:I

    invoke-static {p1, p2, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mDescriptionColor:I

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->lambda$configStateEffectBackground$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private configItemVerticalPadding(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListItemMinHeight:I

    iget v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListPaddingVertical:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListItemPaddingVertical:I

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListPaddingVertical:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListItemPaddingVertical:I

    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListPaddingVertical:I

    add-int/2addr v2, p0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListItemMinHeight:I

    iget v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListPaddingVertical:I

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListItemPaddingVertical:I

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListPaddingVertical:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListItemPaddingVertical:I

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_2

    iget p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListItemMinHeight:I

    iget v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListPaddingVertical:I

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListItemPaddingVertical:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListItemPaddingVertical:I

    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListPaddingVertical:I

    add-int/2addr v2, p0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListItemMinHeight:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListItemPaddingVertical:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListItemPaddingVertical:I

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method private configStateEffectBackground(Landroid/view/View;Lcom/coui/appcompat/poplist/PopupListItem;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getGroupState()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

    if-nez v2, :cond_0

    new-instance p2, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;-><init>(Landroid/content/Context;ILcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getGroupState()I

    move-result p2

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mSharedDrawable:Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;->getChild()Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p2, p2, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    if-nez p2, :cond_2

    new-instance p2, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;-><init>(Landroid/content/Context;I)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->enableFocusedState(Z)V

    invoke-virtual {p2, p0}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setIsRoundStyle(Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    new-instance p0, Lcom/coui/appcompat/poplist/g;

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/g;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static dataIndexToRealPosition(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static final dataindexToRealPosition(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static getAccessibilityDelegate(I)Landroid/view/View$AccessibilityDelegate;
    .locals 1

    new-instance v0, Lcom/coui/appcompat/poplist/DefaultAdapter$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/DefaultAdapter$2;-><init>(I)V

    return-object v0
.end method

.method private getCustomItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->realPositionToDataIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem;->getCustomItemView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "DefaultAdapter"

    const-string v2, "Popup list item custom view is null! Return an empty view."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {v1, p3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Landroid/view/View;->setClickable(Z)V

    move-object p2, v1

    :cond_1
    invoke-static {p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getAccessibilityDelegate(I)Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-direct {p0, p2, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->configStateEffectBackground(Landroid/view/View;Lcom/coui/appcompat/poplist/PopupListItem;)V

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem;->isEnable()Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setEnabled(Z)V

    return-object v1
.end method

.method private getDefaultDividerDrawable(Z)Landroid/graphics/drawable/InsetDrawable;
    .locals 8

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mDefaultDividerMarginHorizontal:I

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->hasIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mDefaultDividerMarginStartWithIcon:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mDefaultDividerMarginHorizontal:I

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->hasIcon()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mDefaultDividerMarginStartWithIcon:I

    :goto_2
    move v6, p1

    goto :goto_3

    :cond_2
    iget p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mDefaultDividerMarginHorizontal:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mDefaultDividerMarginHorizontal:I

    goto :goto_2

    :goto_3
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {p0, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {v3, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object p1
.end method

.method private getDefaultDividerView(Landroid/view/View;Z)Landroid/view/View;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroidx/core/view/m0;->t0(Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    invoke-direct {p0, p2}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getDefaultDividerDrawable(Z)Landroid/graphics/drawable/InsetDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mDefaultDividerHeight:I

    invoke-direct {p2, v1, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    return-object p1
.end method

.method private getDefaultItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-static {p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->realPositionToDataIndex(I)I

    move-result v0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/support/poplist/R$layout;->coui_popup_list_window_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->access$100(Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v1, p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    :goto_1
    invoke-static {p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getAccessibilityDelegate(I)Landroid/view/View$AccessibilityDelegate;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-direct {p0, p2, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->configItemVerticalPadding(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object v1, p3, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setIcon(Landroid/widget/ImageView;Lcom/coui/appcompat/poplist/PopupListItem;)V

    iget-object v1, p3, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0, p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setTitle(Landroid/widget/TextView;Lcom/coui/appcompat/poplist/PopupListItem;I)V

    iget-object p1, p3, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setDescription(Landroid/widget/TextView;Lcom/coui/appcompat/poplist/PopupListItem;)V

    invoke-direct {p0, p3, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setGap(Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;Lcom/coui/appcompat/poplist/PopupListItem;)V

    iget-object p1, p3, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->mHintLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setHint(Landroid/view/ViewGroup;Lcom/coui/appcompat/poplist/PopupListItem;)V

    iget-object p1, p3, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setStateIcon(Landroid/widget/CheckBox;Lcom/coui/appcompat/poplist/PopupListItem;)V

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem;->isEnable()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0, p2, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->configStateEffectBackground(Landroid/view/View;Lcom/coui/appcompat/poplist/PopupListItem;)V

    return-object p2
.end method

.method private getDividerView(ILandroid/view/View;I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v0, :cond_1

    const/4 p1, 0x5

    if-eq p3, p1, :cond_0

    invoke-direct {p0, p2, v2}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getDefaultDividerView(Landroid/view/View;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getDefaultDividerView(Landroid/view/View;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-boolean p3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mHasSubMenuHeader:Z

    if-eqz p3, :cond_2

    if-ne p1, v1, :cond_2

    invoke-direct {p0, p2, v2}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getDefaultDividerView(Landroid/view/View;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getGroupDividerView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    return-object p0
.end method

.method private getGroupDividerView(Landroid/view/View;)Landroid/view/View;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroidx/core/view/m0;->t0(Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/poplist/R$color;->coui_popup_list_group_divider_color:I

    iget-object v2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lt/h;->d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mGroupDividerHeight:I

    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object p1
.end method

.method private getHeaderItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-static {p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->realPositionToDataIndex(I)I

    move-result v0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/coui/appcompat/poplist/DefaultAdapter$HeaderViewHolder;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/poplist/DefaultAdapter$HeaderViewHolder;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p2, Lcom/coui/appcompat/poplist/DefaultAdapter$HeaderViewHolder;

    invoke-direct {p2}, Lcom/coui/appcompat/poplist/DefaultAdapter$HeaderViewHolder;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/support/poplist/R$layout;->coui_popup_list_window_header_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/coui/appcompat/poplist/DefaultAdapter$HeaderViewHolder;->access$000(Lcom/coui/appcompat/poplist/DefaultAdapter$HeaderViewHolder;Landroid/view/View;)V

    invoke-virtual {p3, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    :goto_1
    invoke-static {p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getAccessibilityDelegate(I)Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-direct {p0, p2, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->configItemVerticalPadding(Landroid/view/View;I)V

    iget p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPopupListMenuItemMinHeight:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object p1, p3, Lcom/coui/appcompat/poplist/DefaultAdapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/PopupListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/PopupListItem;->getTitleContentDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p3, Lcom/coui/appcompat/poplist/DefaultAdapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/PopupListItem;->getTitleContentDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p2
.end method

.method private getItemView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x3

    if-eq p4, v0, :cond_1

    const/4 v0, 0x4

    if-eq p4, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getDefaultItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getHeaderItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getCustomItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getRedDotHint(Lcom/coui/appcompat/poplist/PopupListItem;)Landroid/view/View;
    .locals 3

    new-instance v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/support/reddot/R$style;->Widget_COUI_COUIHintRedDot_Small:I

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/PopupListItem;->getRedDotText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v1, 0x2

    if-nez p0, :cond_0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/PopupListItem;->getRedDotText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/PopupListItem;->getRedDotAmount()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointNumber(I)V

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/PopupListItem;->getRedDotAmount()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_2

    if-eqz p0, :cond_1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    :goto_0
    return-object v0
.end method

.method private getTintColorByState(Landroid/content/res/ColorStateList;Lcom/coui/appcompat/poplist/PopupListItem;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getTintColorByState(Landroid/content/res/ColorStateList;Lcom/coui/appcompat/poplist/PopupListItem;Z)I

    move-result p0

    return p0
.end method

.method private getTintColorByState(Landroid/content/res/ColorStateList;Lcom/coui/appcompat/poplist/PopupListItem;Z)I
    .locals 1

    .line 2
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getItemType()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getGroupState()I

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    sget-object p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->STATE_SELECTED:[I

    sget p2, Lcom/support/appcompat/R$color;->coui_color_error:I

    invoke-virtual {p1, p0, p2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 7
    sget-object p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->STATE_SELECTED:[I

    sget p2, Lcom/support/appcompat/R$color;->coui_color_error:I

    invoke-virtual {p1, p0, p2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getItemType()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    .line 9
    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mAlertColor:I

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    goto :goto_0

    .line 11
    :cond_4
    sget-object p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->STATE_DISABLED:[I

    sget p2, Lcom/support/appcompat/R$color;->coui_color_error:I

    invoke-virtual {p1, p0, p2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static isDataIndex(I)Z
    .locals 0

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLayoutRTL()Z
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$configStateEffectBackground$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {v1}, Lcom/coui/appcompat/state/StatefulDrawable;->setTouchEntered()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    :cond_2
    instance-of p1, p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    if-eqz p1, :cond_3

    check-cast p0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/state/StatefulDrawable;->setTouchExited()V

    :cond_3
    return v0
.end method

.method private listNotEmpty(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static realPositionToDataIndex(I)I
    .locals 0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static final realPositionToDataindex(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->realPositionToDataIndex(I)I

    move-result p0

    return p0
.end method

.method private setDescription(Landroid/widget/TextView;Lcom/coui/appcompat/poplist/PopupListItem;)V
    .locals 2

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/support/appcompat/R$style;->couiTextBodyXS:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mIsFixedFontSize:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mIsAdaptiveFontSize:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    :cond_1
    :goto_0
    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mDescriptionColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getDescriptionContentDescription()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getDescriptionContentDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setGap(Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;Lcom/coui/appcompat/poplist/PopupListItem;)V
    .locals 4

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getHintType()I

    move-result p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getStateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getStateIconId()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getStateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getStateIconId()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->hasSubMenu()Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    const/16 p2, 0x8

    if-nez p0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p1, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->mTitleEndGap:Landroid/widget/Space;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v0, p1, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->mTitleEndGap:Landroid/widget/Space;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p0, :cond_6

    if-eqz v1, :cond_6

    iget-object p0, p1, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->mHintEndGap:Landroid/widget/Space;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object p0, p1, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->mHintEndGap:Landroid/widget/Space;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private setHint(Landroid/view/ViewGroup;Lcom/coui/appcompat/poplist/PopupListItem;)V
    .locals 1

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getHintType()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getRedDotHint(Lcom/coui/appcompat/poplist/PopupListItem;)Landroid/view/View;

    move-result-object p0

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getHintType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getCustomHintView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getCustomHintView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getCustomHintView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getCustomHintView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setIcon(Landroid/widget/ImageView;Lcom/coui/appcompat/poplist/PopupListItem;)V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getIconId()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getIconId()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lt/h;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getForceTint()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mItemTintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, v1, p2}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setIconTint(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Lcom/coui/appcompat/poplist/PopupListItem;)V

    :cond_2
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->isEnable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private setIconTint(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Lcom/coui/appcompat/poplist/PopupListItem;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setIconTint(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Lcom/coui/appcompat/poplist/PopupListItem;Z)V

    return-void
.end method

.method private setIconTint(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Lcom/coui/appcompat/poplist/PopupListItem;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getTintColorByState(Landroid/content/res/ColorStateList;Lcom/coui/appcompat/poplist/PopupListItem;Z)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method private setStateIcon(Landroid/widget/CheckBox;Lcom/coui/appcompat/poplist/PopupListItem;)V
    .locals 4

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getStateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getStateIconId()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->hasSubMenu()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/coui/appcompat/poplist/DefaultAdapter;->DEFAULT_TRANSPARENT_HOLDER:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->hasSubMenu()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/listview/R$drawable;->coui_list_expandable_indicator:I

    iget-object v3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lt/h;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mStateIconTintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setIconTint(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Lcom/coui/appcompat/poplist/PopupListItem;Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getStateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getStateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getStateIconId()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getStateIconId()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lt/h;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/poplist/R$drawable;->coui_menu_ic_checkbox:I

    iget-object v3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lt/h;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getForceTint()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mStateIconTintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setIconTint(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Lcom/coui/appcompat/poplist/PopupListItem;Z)V

    :cond_6
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_3
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->isEnable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private setTextViewTint(Landroid/widget/TextView;Landroid/content/res/ColorStateList;Lcom/coui/appcompat/poplist/PopupListItem;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getTintColorByState(Landroid/content/res/ColorStateList;Lcom/coui/appcompat/poplist/PopupListItem;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setTitle(Landroid/widget/TextView;Lcom/coui/appcompat/poplist/PopupListItem;I)V
    .locals 3

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    sget v1, Lcom/support/appcompat/R$style;->couiTextBodyL:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getGroupState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-nez p3, :cond_0

    sget-object p3, Lcom/coui/appcompat/poplist/DefaultAdapter;->MEDIUM_TYPEFACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getTitleContentDescription()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getTitleContentDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-boolean p3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mIsFixedFontSize:Z

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p1, p3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_2
    iget-boolean p3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mIsAdaptiveFontSize:Z

    if-eqz p3, :cond_3

    const/4 p3, 0x4

    invoke-static {p1, p3}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    goto :goto_1

    :cond_3
    const/4 p3, 0x5

    invoke-static {p1, p3}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    :goto_1
    if-nez v0, :cond_4

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_2

    :cond_4
    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_2
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getForceTint()I

    move-result p3

    and-int/2addr p3, v2

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mItemTintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, p1, p3, p2}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setTextViewTint(Landroid/widget/TextView;Landroid/content/res/ColorStateList;Lcom/coui/appcompat/poplist/PopupListItem;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getTitleColorList()Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->getTitleColorList()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_6
    :goto_3
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupListItem;->isEnable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mMenuItemList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->listNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->dataIndexToRealPosition(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getDividerHeight(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mDefaultDividerHeight:I

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mGroupDividerHeight:I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->realPositionToDataIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mMenuItemList:Ljava/util/List;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->realPositionToDataIndex(I)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-static {p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->isDataIndex(I)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->realPositionToDataIndex(I)I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mMenuItemList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->listNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/PopupListItem;->getItemType()I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->isHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->isGroupIndex(I)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p3, 0x5

    if-eq v0, p3, :cond_0

    const-string p0, "DefaultAdapter"

    const-string p1, "View type error!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getDividerView(ILandroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getViewTypeCount()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public hasIcon()Z
    .locals 1

    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPrivateFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSubMenu()Z
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPrivateFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(I)Z
    .locals 0

    invoke-static {p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->isDataIndex(I)Z

    move-result p0

    return p0
.end method

.method isGroupIndex(I)Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mGroupSets:Ljava/util/Set;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method isHeaderPosition(I)Z
    .locals 3

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-static {p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->realPositionToDataIndex(I)I

    move-result p1

    iget-object v2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mMenuItemList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/poplist/DefaultAdapter;->listNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/PopupListItem;->getItemType()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public setAdapterFontSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mIsAdaptiveFontSize:Z

    return-void
.end method

.method setGroup([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method setGroupSets(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mGroupSets:Ljava/util/Set;

    return-void
.end method

.method public setIsFixedFontSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mIsFixedFontSize:Z

    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mMenuItemList:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/poplist/PopupListItem;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/PopupListItem;->getGroupState()I

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mHasSubMenuHeader:Z

    iput v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPrivateFlags:I

    iget-object p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/poplist/PopupListItem;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem;->getIconId()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5

    :cond_4
    iget v2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPrivateFlags:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPrivateFlags:I

    :cond_5
    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPrivateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPrivateFlags:I

    :cond_6
    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem;->getHintType()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPrivateFlags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPrivateFlags:I

    :cond_7
    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem;->getStateIconId()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem;->getStateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_9

    :cond_8
    iget v2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPrivateFlags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPrivateFlags:I

    :cond_9
    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mPrivateFlags:I

    goto :goto_1

    :cond_a
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setMaxLine(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSelectItemColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSharedBackground(Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->mSharedDrawable:Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

    return-void
.end method
