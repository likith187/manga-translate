.class public Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;
    }
.end annotation


# static fields
.field private static final DROP_DOWN_GRAVITY:I = 0x800055

.field private static final DROP_DOWN_GRAVITY_RTL:I = 0x800055

.field private static final ITEM_LAYOUT:I

.field private static final POINT_FIVE:F = 0.5f

.field private static final POPUP_WINDOW_BACKGROUND:I


# instance fields
.field private final mAdapter:Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;

.field private mAnchor:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mListViewUsedToMeasure:Landroid/widget/ListView;

.field private mMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mPopup:Landroidx/appcompat/widget/ListPopupWindow;

.field private mPopupHorizontalMargin:I

.field private mPopupMaxHeight:I

.field private mPopupVerticalMargin:I

.field private mPopupWidth:I

.field private mScreenWidth:I

.field private final mSuitableFontSize:F

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mUsedSpace:I

.field private mVisibleMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/support/bottomnavigation/R$layout;->coui_navigation_popup_item:I

    sput v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->ITEM_LAYOUT:I

    sget v0, Lcom/support/bottomnavigation/R$drawable;->coui_navigation_popup_bg:I

    sput v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->POPUP_WINDOW_BACKGROUND:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mMenuList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    iput-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mAnchor:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p2, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;)V

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mAdapter:Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;

    invoke-static {p2}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result p2

    const v0, 0x800055

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mDropDownGravity:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mDropDownGravity:I

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_popup_text_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    const/4 v3, 0x5

    invoke-static {v0, v2, v3}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mSuitableFontSize:F

    sget v0, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_popup_horizontal_margin:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopupHorizontalMargin:I

    sget v0, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_popup_vertical_margin:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopupVerticalMargin:I

    sget v0, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_popup_item_used_space:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mUsedSpace:I

    sget v0, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_popup_item_min_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopupWidth:I

    sget v0, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_popup_max_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopupMaxHeight:I

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mScreenWidth:I

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mScreenWidth:I

    :goto_1
    new-instance p2, Landroid/widget/ListView;

    invoke-direct {p2, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mListViewUsedToMeasure:Landroid/widget/ListView;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mListViewUsedToMeasure:Landroid/widget/ListView;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->ITEM_LAYOUT:I

    return v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;)Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mAnchor:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mSuitableFontSize:F

    return p0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private measureHeightOfChildrenCompat(I)I
    .locals 10

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mAdapter:Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    move v6, v5

    move-object v7, v3

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-interface {v0, v4}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v6, :cond_0

    move-object v7, v3

    move v6, v8

    :cond_0
    iget-object v8, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mListViewUsedToMeasure:Landroid/widget/ListView;

    invoke-interface {v0, v4, v7, v8}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_1

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v8, :cond_1

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_1

    :cond_1
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    :goto_1
    invoke-virtual {v7, p1, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method private tryShow()Z
    .locals 11

    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->G(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->H(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mAdapter:Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->k(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->F(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mAnchor:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iput-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v4, :cond_1

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/ListPopupWindow;->y(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    iget v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mDropDownGravity:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->B(I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->POPUP_WINDOW_BACKGROUND:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopupWidth:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v7

    iget v8, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mScreenWidth:I

    iget v9, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopupHorizontalMargin:I

    const/4 v10, 0x2

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    add-int/2addr v8, v6

    add-int/2addr v8, v7

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ListPopupWindow;->A(I)V

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->measureHeightOfChildrenCompat(I)I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v6, v4}, Landroidx/appcompat/widget/ListPopupWindow;->a(Landroid/graphics/drawable/Drawable;)V

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int v6, v5, v4

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iget v8, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopupMaxHeight:I

    if-lt v6, v8, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    iget-object v9, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    add-int/2addr v5, v4

    add-int/2addr v5, v7

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v9, v4}, Landroidx/appcompat/widget/ListPopupWindow;->D(I)V

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v4, v10}, Landroidx/appcompat/widget/ListPopupWindow;->E(I)V

    iget v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopupHorizontalMargin:I

    neg-int v4, v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopupVerticalMargin:I

    sub-int/2addr v5, v7

    iget-object v7, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/ListPopupWindow;->g(I)V

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ListPopupWindow;->e(I)V

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v4, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return v1

    :cond_4
    return v3
.end method


# virtual methods
.method public addMenuItem(Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mMenuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/coui/appcompat/material/navigation/NavigationBarItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iget v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mSuitableFontSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptBoldAndMediumFont(Landroid/graphics/Paint;Z)V

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopupWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mUsedSpace:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopupWidth:I

    :cond_0
    return-void
.end method

.method public clearMenuItems()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyMenuChange()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    invoke-virtual {v1}, Lcom/coui/appcompat/material/navigation/NavigationBarItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mAdapter:Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mAnchor:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mAnchor:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mVisibleMenus:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->dismiss()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->mDropDownGravity:I

    return-void
.end method

.method public show()V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->tryShow()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
