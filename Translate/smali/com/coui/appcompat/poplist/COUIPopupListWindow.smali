.class public Lcom/coui/appcompat/poplist/COUIPopupListWindow;
.super Lcom/coui/appcompat/poplist/COUIPopupWindow;
.source "SourceFile"


# static fields
.field private static final COUI_DEBUG:Z

.field private static final GROUP_MIN_ITEMS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "COUIPopupListWindow"


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mContentView:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

.field private mContext:Landroid/content/Context;

.field private mCustomMenuMaxWidth:I

.field private mCustomMenuWidth:I

.field private mDismissWhenLayoutChange:Z

.field private mDismissWhenWindowSizeChange:Z

.field private mGlobalOffsetX:I

.field private mGlobalOffsetY:I

.field private mIsAdaptiveFontSize:Z

.field private mIsFixedFontSize:Z

.field private mLastClickedMainMenuItemPosition:I

.field private mListViewUsedToMeasure:Landroid/widget/ListView;

.field private mLocateHelper:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

.field private mMainListView:Landroid/widget/ListView;

.field private mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

.field private mMainMenuHeight:I

.field private final mMainMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMainMenuItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMainMenuWidth:I

.field private mMainMenuWrapper:Lcom/coui/appcompat/poplist/RoundFrameLayout;

.field private final mMenuDismissWhenRootChange:Landroid/view/View$OnLayoutChangeListener;

.field private mOnMainMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnSubMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRootView:Landroid/view/View;

.field private mShowOffsetX:I

.field private mShowOffsetY:I

.field private mSubListView:Landroid/widget/ListView;

.field private mSubMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

.field private mSubMenuAnchorView:Landroid/view/View;

.field private mSubMenuHeight:I

.field private final mSubMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSubMenuWidth:I

.field private mSubMenuWrapper:Lcom/coui/appcompat/poplist/RoundFrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->LOG_DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "COUIPopupListWindow"

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
    sput-boolean v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->COUI_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;-><init>(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMenuDismissWhenRootChange:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;-><init>(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$3;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow$3;-><init>(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mRootView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAnchorView:Landroid/view/View;

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mGlobalOffsetX:I

    iput v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mGlobalOffsetY:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mCustomMenuWidth:I

    iput v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mCustomMenuMaxWidth:I

    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mShowOffsetX:I

    iput v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mShowOffsetY:I

    iput v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLastClickedMainMenuItemPosition:I

    iput-boolean v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mDismissWhenLayoutChange:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mDismissWhenWindowSizeChange:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mIsAdaptiveFontSize:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mIsFixedFontSize:Z

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->setElevationInPopupwindow(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    sget v1, Lcom/support/poplist/R$style;->Animation_COUI_PopupListWindow:I

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mListViewUsedToMeasure:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mListViewUsedToMeasure:Landroid/widget/ListView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuItemList:Ljava/util/List;

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->createContentView()Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContentView:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->setContentView(Landroid/view/View;)V

    new-instance p1, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLocateHelper:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/poplist/COUIPopupListWindow;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->lambda$createContentView$0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mDismissWhenLayoutChange:Z

    return p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mDismissWhenWindowSizeChange:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContentView:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/poplist/COUIPopupListWindow;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->triggerShowSubMenu(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mOnSubMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Lcom/coui/appcompat/poplist/DefaultAdapter;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/poplist/COUIPopupListWindow;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setSubMenuGroupItemActivation(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAnchorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/coui/appcompat/poplist/COUIPopupListWindow;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAnchorView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mShowOffsetX:I

    return p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mShowOffsetY:I

    return p0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLocateHelper:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mOnMainMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Lcom/coui/appcompat/poplist/RoundFrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuWrapper:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLastClickedMainMenuItemPosition:I

    return p0
.end method

.method public static synthetic b(Lcom/coui/appcompat/poplist/PopupListItem;Lcom/coui/appcompat/poplist/PopupListItem;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->lambda$setItemListInternal$1(Lcom/coui/appcompat/poplist/PopupListItem;Lcom/coui/appcompat/poplist/PopupListItem;)I

    move-result p0

    return p0
.end method

.method private checkListElementsNotNull(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private checkListNotNull(Ljava/util/List;)Z
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

.method private configMainListView()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLastClickedMainMenuItemPosition:I

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mOnMainMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainListView:Landroid/widget/ListView;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method private configSubListView()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubListView:Landroid/widget/ListView;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private createContentView()Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;
    .locals 5

    new-instance v0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/coui/appcompat/poplist/c;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/poplist/c;-><init>(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/support/poplist/R$layout;->coui_popup_list_window_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    iput-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuWrapper:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/support/poplist/R$layout;->coui_popup_list_window_layout:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    iput-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuWrapper:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuWrapper:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    sget v2, Lcom/support/poplist/R$id;->coui_popup_list_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuWrapper:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    sget v2, Lcom/support/poplist/R$id;->coui_popup_list_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/support/poplist/R$attr;->couiPopupWindowBackground:I

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/poplist/R$drawable;->coui_popup_window_background:I

    iget-object v4, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lt/h;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuWrapper:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuWrapper:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;-><init>(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->setOnSubMenuStateChangedListener(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;)V

    return-object v0
.end method

.method private getMainMenuMaxWidth()I
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mCustomMenuWidth:I

    const-string v1, "COUIPopupListWindow"

    if-ltz v0, :cond_1

    sget-boolean v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->COUI_DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use custom menu width = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mCustomMenuWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mCustomMenuWidth:I

    return p0

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mCustomMenuMaxWidth:I

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->getMainMenuMinWidth()I

    move-result v2

    if-lt v0, v2, :cond_2

    iget p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mCustomMenuMaxWidth:I

    return p0

    :cond_2
    const-string v0, "Illegal max width! Custom menu max width smaller than min width!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    if-nez v0, :cond_3

    const-string p0, "Get main menu max width fail! Adapter is NULL!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/poplist/R$dimen;->coui_popup_list_window_max_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_4
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/poplist/R$dimen;->coui_popup_list_window_width_with_icon:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_5
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/poplist/R$dimen;->coui_popup_list_window_max_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method private getMainMenuMinWidth()I
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mCustomMenuWidth:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    if-nez v0, :cond_1

    const-string p0, "COUIPopupListWindow"

    const-string v0, "Get main menu min width fail! Adapter is NULL!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/poplist/R$dimen;->coui_popup_list_window_max_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/poplist/R$dimen;->coui_popup_list_window_width_with_icon:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/poplist/R$dimen;->coui_popup_list_window_min_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method private isRtl(Landroid/view/View;)Z
    .locals 0

    invoke-static {p1}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static isSmallScreen(Landroid/content/Context;II)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;

    sget-object v1, Lcom/coui/component/responsiveui/unit/Dp;->Companion:Lcom/coui/component/responsiveui/unit/Dp$Companion;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v1, p0, p1}, Lcom/coui/component/responsiveui/unit/Dp$Companion;->pixel2Dp(Landroid/content/Context;I)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {v1, p0, p2}, Lcom/coui/component/responsiveui/unit/Dp$Companion;->pixel2Dp(Landroid/content/Context;I)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;->calculateFromSize(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowWidthSizeClass()Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p1

    sget-object p2, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowHeightSizeClass()Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    move-result-object p0

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$createContentView$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$setItemListInternal$1(Lcom/coui/appcompat/poplist/PopupListItem;Lcom/coui/appcompat/poplist/PopupListItem;)I
    .locals 0

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/PopupListItem;->getGroupId()I

    move-result p0

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/PopupListItem;->getGroupId()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private refreshAdapter(Ljava/util/List;Lcom/coui/appcompat/poplist/DefaultAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;",
            "Lcom/coui/appcompat/poplist/DefaultAdapter;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mIsAdaptiveFontSize:Z

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setAdapterFontSize(Z)V

    iget-boolean p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mIsFixedFontSize:Z

    invoke-virtual {p2, p0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setIsFixedFontSize(Z)V

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setItemList(Ljava/util/List;)V

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setAnchorHoveredState(ZLandroid/view/View;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    instance-of p0, p2, Lcom/coui/appcompat/list/IListSelectedItem;

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p0, p0, Lcom/coui/appcompat/state/DrawableStateProxy;

    const/4 v0, 0x1

    const v1, 0x1010367

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/state/DrawableStateProxy;

    invoke-interface {p0, v1, p1, p1, v0}, Lcom/coui/appcompat/state/DrawableStateProxy;->setStateLocked(IZZZ)V

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p0, p0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-virtual {p0, v1, p1, p1, v0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setStateLocked(IZZZ)V

    :cond_2
    return-void
.end method

.method private setItemListInternal(Ljava/util/List;Lcom/coui/appcompat/poplist/DefaultAdapter;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;",
            "Lcom/coui/appcompat/poplist/DefaultAdapter;",
            "Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p3, :cond_1

    new-instance p3, Lcom/coui/appcompat/poplist/b;

    invoke-direct {p3}, Lcom/coui/appcompat/poplist/b;-><init>()V

    invoke-static {p1, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem;->getGroupId()I

    move-result v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {v1}, Lcom/coui/appcompat/poplist/PopupListItem;->getGroupId()I

    move-result v1

    if-eq v1, v0, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setGroupSets(Ljava/util/Set;)V

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->refreshAdapter(Ljava/util/List;Lcom/coui/appcompat/poplist/DefaultAdapter;)V

    return-void
.end method

.method private setSubMenuGroupItemActivation(Z)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLocateHelper:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->isCurrentContainerSmallScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/coui/appcompat/poplist/PopupListItem;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/poplist/PopupListItem;->setGroupState(I)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLastClickedMainMenuItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->dataIndexToRealPosition(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/coui/appcompat/poplist/PopupListItem;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/poplist/PopupListItem;->setGroupState(I)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAnchorView:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAnchorView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p1, v0}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setHoverStateLocked(ZZZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private showSub(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuWrapper:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLastClickedMainMenuItemPosition:I

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContentView:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->showSubMenu()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->configSubListView()V

    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->measurePopupWindow(Lcom/coui/appcompat/poplist/DefaultAdapter;)V

    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContentView:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    iget v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuWidth:I

    iget v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuHeight:I

    invoke-virtual {p2, v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->setSubMenuSize(II)V

    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLocateHelper:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    iget v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuWidth:I

    iget v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuHeight:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->isRtl(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->prepareShowSubMenu(Landroid/view/View;IIZ)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContentView:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuWrapper:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->addSubMenuView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private triggerShowSubMenu(Landroid/view/View;I)V
    .locals 5

    iput p2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLastClickedMainMenuItemPosition:I

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/poplist/PopupListItem;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem;->getSubMenuItemList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->checkListNotNull(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem;->getSubMenuItemList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->checkListElementsNotNull(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLocateHelper:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-virtual {v2}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->isCurrentContainerSmallScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLocateHelper:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    const/4 v3, 0x0

    if-nez p2, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setSubMenuAnchorIsFirstItem(Z)V

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem;->getSubMenuItemList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    if-nez v0, :cond_3

    new-instance v0, Lcom/coui/appcompat/poplist/DefaultAdapter;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Lcom/coui/appcompat/poplist/DefaultAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    invoke-direct {p0, v1, v0, v3}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setItemListInternal(Ljava/util/List;Lcom/coui/appcompat/poplist/DefaultAdapter;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setSharedBackground(Lcom/coui/appcompat/poplist/ListItemMaskEffectDrawable;)V

    :cond_4
    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAnchorView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->showSub(Landroid/view/View;I)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public configPopupValue(Landroid/view/View;Z)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public dismiss()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMenuDismissWhenRootChange:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLastClickedMainMenuItemPosition:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LastClickedMainMenuItemPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLastClickedMainMenuItemPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIPopupListWindow"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    iget v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLastClickedMainMenuItemPosition:I

    invoke-static {v1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->dataIndexToRealPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/coui/appcompat/poplist/PopupListItem;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/poplist/PopupListItem;->setGroupState(I)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAnchorView:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, v2, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setAnchorHoveredState(ZLandroid/view/View;)V

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainListView:Landroid/widget/ListView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method public getItemList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuItemList:Ljava/util/List;

    return-object p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainListView:Landroid/widget/ListView;

    return-object p0
.end method

.method protected getLocateHelper()Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLocateHelper:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    return-object p0
.end method

.method public getMainMenuListView()Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public getSubMenuListView()Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubListView:Landroid/widget/ListView;

    return-object p0
.end method

.method protected initElevationInPopupwindow()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method measurePopupWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->measurePopupWindow(Lcom/coui/appcompat/poplist/DefaultAdapter;)V

    return-void
.end method

.method measurePopupWindow(Lcom/coui/appcompat/poplist/DefaultAdapter;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    .line 3
    :goto_0
    iget-object v5, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLocateHelper:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    if-eqz v2, :cond_1

    invoke-virtual {v5}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->getMaxMainMenuHeight()I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->getMaxSubMenuHeight()I

    move-result v5

    .line 4
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->getMainMenuMaxWidth()I

    move-result v7

    const/high16 v8, -0x80000000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 6
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getCount()I

    move-result v9

    const/4 v10, 0x0

    move v11, v4

    move v12, v11

    move v13, v12

    move v15, v13

    move/from16 v17, v15

    move-object v14, v10

    const/16 v16, 0x1

    :goto_2
    if-ge v11, v9, :cond_f

    .line 8
    invoke-static {v11}, Lcom/coui/appcompat/poplist/DefaultAdapter;->isDataIndex(I)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 9
    invoke-virtual {v1, v11}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getItemViewType(I)I

    move-result v4

    const/4 v3, 0x3

    if-ne v4, v3, :cond_2

    .line 10
    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mListViewUsedToMeasure:Landroid/widget/ListView;

    invoke-virtual {v1, v11, v10, v3}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_3

    .line 11
    :cond_2
    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mListViewUsedToMeasure:Landroid/widget/ListView;

    invoke-virtual {v1, v11, v14, v3}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    move-object v3, v14

    :goto_3
    if-nez v3, :cond_3

    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_8

    .line 12
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v4, :cond_4

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 14
    iget v4, v4, Landroid/widget/AbsListView$LayoutParams;->height:I

    const/4 v10, -0x2

    if-eq v4, v10, :cond_4

    const/high16 v8, 0x40000000    # 2.0f

    .line 15
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 16
    :cond_4
    invoke-virtual {v3, v7, v8}, Landroid/view/View;->measure(II)V

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-le v4, v13, :cond_5

    move v13, v4

    :cond_5
    if-eqz v16, :cond_6

    add-int v4, v12, v3

    if-le v4, v5, :cond_6

    sub-int v12, v12, v17

    const/16 v16, 0x0

    :cond_6
    if-eqz v16, :cond_7

    add-int/2addr v12, v3

    :cond_7
    add-int/2addr v15, v3

    if-eqz v11, :cond_9

    .line 19
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v11, -0x1

    .line 20
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 21
    :cond_9
    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 22
    :cond_a
    invoke-virtual {v1, v11}, Lcom/coui/appcompat/poplist/DefaultAdapter;->isGroupIndex(I)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x2

    .line 23
    invoke-virtual {v1, v3}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getDividerHeight(I)I

    move-result v3

    move/from16 v17, v3

    const/4 v3, 0x1

    goto :goto_6

    :cond_b
    const/4 v3, 0x1

    .line 24
    invoke-virtual {v1, v3}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getDividerHeight(I)I

    move-result v4

    move/from16 v17, v4

    :goto_6
    if-eqz v16, :cond_c

    add-int v12, v12, v17

    :cond_c
    add-int v15, v15, v17

    if-eqz v11, :cond_e

    .line 25
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_7

    :cond_d
    add-int/lit8 v4, v11, -0x1

    .line 26
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int v4, v17, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 27
    :cond_e
    :goto_7
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_f
    if-nez v12, :cond_10

    goto :goto_9

    :cond_10
    move v5, v12

    :goto_9
    if-eqz v2, :cond_11

    .line 28
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->getMainMenuMinWidth()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuWidth:I

    .line 29
    iput v5, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuHeight:I

    .line 30
    iget-object v0, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainListView:Landroid/widget/ListView;

    instance-of v1, v0, Lcom/coui/appcompat/poplist/COUITouchListView;

    if-eqz v1, :cond_12

    .line 31
    check-cast v0, Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-virtual {v0, v6, v15}, Lcom/coui/appcompat/poplist/COUITouchListView;->setItemHeightMap(Ljava/util/List;I)V

    goto :goto_a

    .line 32
    :cond_11
    iget v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuWidth:I

    iput v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuWidth:I

    .line 33
    iput v5, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuHeight:I

    .line 34
    iget-object v0, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubListView:Landroid/widget/ListView;

    instance-of v1, v0, Lcom/coui/appcompat/poplist/COUITouchListView;

    if-eqz v1, :cond_12

    .line 35
    check-cast v0, Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-virtual {v0, v6, v15}, Lcom/coui/appcompat/poplist/COUITouchListView;->setItemHeightMap(Ljava/util/List;I)V

    :cond_12
    :goto_a
    return-void
.end method

.method public measurePopupWindow(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->measurePopupWindow()V

    return-void
.end method

.method protected prepareShowMainMenu(Landroid/view/View;IIZ)V
    .locals 6

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->configMainListView()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLocateHelper:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->prepareWindowAndAnchor(Landroid/view/View;IILandroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContentView:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLocateHelper:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->getDomain()Lcom/coui/appcompat/poplist/PopupMenuDomain;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->setDomain(Lcom/coui/appcompat/poplist/PopupMenuDomain;)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContentView:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuWrapper:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->addMainMenuView(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->measurePopupWindow()V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContentView:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    iget p2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuWidth:I

    iget p3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuHeight:I

    invoke-virtual {p1, p2, p3}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->setMainMenuSize(II)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLocateHelper:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    iget v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuWidth:I

    iget v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuHeight:I

    iget v4, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mGlobalOffsetX:I

    iget v5, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mGlobalOffsetY:I

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->prepareShowMainMenu(IIZII)V

    return-void
.end method

.method public refresh()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/support/poplist/R$attr;->couiPopupWindowBackground:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/poplist/R$drawable;->coui_popup_window_background:I

    iget-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lt/h;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuWrapper:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuWrapper:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public resetOffset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setGlobalOffset(II)V

    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setAdapter(Landroid/widget/BaseAdapter;Z)V

    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public setAdapterFontSize(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setIsAdaptiveFontSize(Z)V

    return-void
.end method

.method public setAlwaysBelowAnchor(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setContentWidth(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setDismissWhenLayoutChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mDismissWhenLayoutChange:Z

    return-void
.end method

.method public setDismissWhenWindowSizeChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mDismissWhenWindowSizeChange:Z

    return-void
.end method

.method public setEnableAddExtraWidth(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setGlobalOffset(II)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mGlobalOffsetX:I

    iput p2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mGlobalOffsetY:I

    return-void
.end method

.method public setIsAdaptiveFontSize(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mIsAdaptiveFontSize:Z

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setAdapterFontSize(Z)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mIsAdaptiveFontSize:Z

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setAdapterFontSize(Z)V

    :cond_1
    return-void
.end method

.method public setIsFixedFontSize(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mIsFixedFontSize:Z

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setIsFixedFontSize(Z)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mIsFixedFontSize:Z

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->setIsFixedFontSize(Z)V

    :cond_1
    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setItemList(Ljava/util/List;Z)V

    return-void
.end method

.method public setItemList(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->checkListNotNull(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->checkListElementsNotNull(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuItemList:Ljava/util/List;

    .line 4
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lcom/coui/appcompat/poplist/DefaultAdapter;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/coui/appcompat/poplist/DefaultAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuItemList:Ljava/util/List;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    invoke-direct {p0, p1, v0, p2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setItemListInternal(Ljava/util/List;Lcom/coui/appcompat/poplist/DefaultAdapter;Z)V

    return-void

    .line 7
    :cond_2
    :goto_0
    const-string p0, "COUIPopupListWindow"

    const-string p1, "Error! Item list must not be empty or null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setMaxShowItemCount(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setMaxShowItemCountSubWindow(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setMenuMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mCustomMenuMaxWidth:I

    return-void
.end method

.method public setMenuWidth(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mCustomMenuWidth:I

    return-void
.end method

.method public setNonApplicationType(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLocateHelper:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->useWindowBarrier(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLocateHelper:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setCenterAlign(Z)V

    return-void
.end method

.method public setOffset(IIII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    neg-int p1, p1

    neg-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setGlobalOffset(II)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set main menu item click listener = null. caller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIPopupListWindow"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mOnMainMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setPopupWindowLimitedRootView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mRootView:Landroid/view/View;

    return-void
.end method

.method public setSelectItemColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setShowInBottomSheetDialog(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSubMenuClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set sub menu item click listener = null. caller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIPopupListWindow"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mOnSubMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setSubMenuClickListener(Lcom/coui/appcompat/poplist/COUISubMenuClickListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mOnSubMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setSubMenuOffset(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setUseBackgroundBlur(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/coui/appcompat/uiutil/UIUtil;->ANIM_LEVEL_SUPPORT_BLUR_MIN:Lcom/coui/appcompat/uiutil/AnimLevel;

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setUseBackgroundBlur(ZLcom/coui/appcompat/uiutil/AnimLevel;)V

    return-void
.end method

.method public setUseBackgroundBlur(ZLcom/coui/appcompat/uiutil/AnimLevel;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mSubMenuWrapper:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->initUseBackgroundBlur(ZLcom/coui/appcompat/uiutil/AnimLevel;)V

    .line 3
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuWrapper:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->initUseBackgroundBlur(ZLcom/coui/appcompat/uiutil/AnimLevel;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show(Landroid/view/View;Z)V

    return-void
.end method

.method public show(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show(Landroid/view/View;ZII)V

    return-void
.end method

.method public show(Landroid/view/View;Z)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 4
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show(Landroid/view/View;ZII)V

    return-void
.end method

.method public show(Landroid/view/View;ZII)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mContext:Landroid/content/Context;

    const-string v1, "COUIPopupListWindow"

    if-nez v0, :cond_0

    .line 7
    const-string p0, " The context of COUIPopupListWindow is null "

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_0
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    const-string p0, " The context of COUIPopupListWindow is Finish "

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMainMenuAdapter:Lcom/coui/appcompat/poplist/DefaultAdapter;

    if-nez v0, :cond_3

    .line 12
    const-string p0, "The MainMenuAdapter is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 13
    :cond_3
    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mAnchorView:Landroid/view/View;

    .line 14
    iput p3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mShowOffsetX:I

    .line 15
    iput p4, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mShowOffsetY:I

    .line 16
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->prepareShowMainMenu(Landroid/view/View;IIZ)V

    .line 17
    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLocateHelper:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    iget-object p2, p2, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 18
    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mLocateHelper:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    iget-object p2, p2, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    invoke-super {p0, p2, p3, p3, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->mMenuDismissWhenRootChange:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p2, 0x1

    .line 21
    invoke-direct {p0, p2, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setAnchorHoveredState(ZLandroid/view/View;)V

    return-void

    .line 22
    :cond_4
    :goto_0
    const-string p0, " COUIPopupListWindow\'s anchor state is wrong "

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 0

    return-void
.end method

.method public showAtAbove(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show(Landroid/view/View;Z)V

    return-void
.end method

.method public showAtAboveOrBelow(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show(Landroid/view/View;Z)V

    return-void
.end method

.method public showEndOfAnchorViewStart(Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public superDismiss()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
