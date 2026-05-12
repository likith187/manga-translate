.class public Lcom/coui/appcompat/poplist/COUIContextMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "COUIContextMenu"


# instance fields
.field private mHelper:Lcom/coui/appcompat/poplist/PreciseLongPressHelper;

.field private mMenuShowStateListener:Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;

.field private mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIContextMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUIContextMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {v0, p2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setAnchorView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/poplist/COUIContextMenu;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIContextMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/poplist/COUIContextMenu;)Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIContextMenu;->mMenuShowStateListener:Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIContextMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIContextMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public getPopupListWindow()Lcom/coui/appcompat/poplist/COUIPopupListWindow;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIContextMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    return-object p0
.end method

.method public registerForContextMenu(Landroid/view/View;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    invoke-direct {v1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 6
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setId(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v4

    .line 7
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v4

    .line 8
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setTitle(Ljava/lang/String;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v4

    .line 9
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setIsChecked(Z)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v4

    .line 10
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setIsEnable(Z)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    .line 11
    invoke-virtual {v1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->build()Lcom/coui/appcompat/poplist/PopupListItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUIContextMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setItemList(Ljava/util/List;)V

    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setLongClickable(Z)V

    .line 14
    new-instance p2, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;

    new-instance v0, Lcom/coui/appcompat/poplist/COUIContextMenu$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/COUIContextMenu$1;-><init>(Lcom/coui/appcompat/poplist/COUIContextMenu;)V

    invoke-direct {p2, p1, v0}, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;-><init>(Landroid/view/View;Lcom/coui/appcompat/poplist/PreciseLongPressHelper$OnPreciseLongClickListener;)V

    iput-object p2, p0, Lcom/coui/appcompat/poplist/COUIContextMenu;->mHelper:Lcom/coui/appcompat/poplist/PreciseLongPressHelper;

    .line 15
    invoke-virtual {p2}, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->setup()V

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V
    .locals 2

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p2, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->setDismissTouchOutside(Z)V

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 18
    new-instance v0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;

    new-instance v1, Lcom/coui/appcompat/poplist/COUIContextMenu$2;

    invoke-direct {v1, p0, p2}, Lcom/coui/appcompat/poplist/COUIContextMenu$2;-><init>(Lcom/coui/appcompat/poplist/COUIContextMenu;Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V

    invoke-direct {v0, p1, v1}, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;-><init>(Landroid/view/View;Lcom/coui/appcompat/poplist/PreciseLongPressHelper$OnPreciseLongClickListener;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUIContextMenu;->mHelper:Lcom/coui/appcompat/poplist/PreciseLongPressHelper;

    .line 19
    new-instance p1, Lcom/coui/appcompat/poplist/COUIContextMenu$3;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/poplist/COUIContextMenu$3;-><init>(Lcom/coui/appcompat/poplist/COUIContextMenu;)V

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 20
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIContextMenu;->mHelper:Lcom/coui/appcompat/poplist/PreciseLongPressHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->setup()V

    return-void
.end method

.method public setMenuShowStateListener(Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;)V
    .locals 1

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIContextMenu;->mMenuShowStateListener:Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIContextMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    new-instance v0, Lcom/coui/appcompat/poplist/COUIContextMenu$4;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/COUIContextMenu$4;-><init>(Lcom/coui/appcompat/poplist/COUIContextMenu;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIContextMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIContextMenu;->mHelper:Lcom/coui/appcompat/poplist/PreciseLongPressHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->setTouchListenerTransfer(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_0
    const-string p0, "COUIContextMenu"

    const-string p1, "Please call registerForContextMenu first!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
