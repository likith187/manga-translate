.class public Lcom/coui/appcompat/poplist/COUIPopupMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/poplist/COUIPopupMenu$OnMenuItemClickListener;,
        Lcom/coui/appcompat/poplist/COUIPopupMenu$OnDismissListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mMenuItemClickListener:Lcom/coui/appcompat/poplist/COUIPopupMenu$OnMenuItemClickListener;

.field private mOnDismissListener:Lcom/coui/appcompat/poplist/COUIPopupMenu$OnDismissListener;

.field private mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/poplist/COUIPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 6

    .line 3
    sget v4, Landroidx/appcompat/R$attr;->popupMenuStyle:I

    sget v5, Lcom/support/poplist/R$style;->Widget_COUI_PopupMenu:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/poplist/COUIPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mRedDotMap:Ljava/util/HashMap;

    .line 6
    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mContext:Landroid/content/Context;

    .line 7
    new-instance p3, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {p3, p1}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 8
    new-instance p3, Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-direct {p3, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p3, p2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setAnchorView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/poplist/COUIPopupMenu;)Lcom/coui/appcompat/poplist/COUIPopupMenu$OnMenuItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mMenuItemClickListener:Lcom/coui/appcompat/poplist/COUIPopupMenu$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/poplist/COUIPopupMenu;)Lcom/coui/appcompat/poplist/COUIPopupMenu$OnDismissListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mOnDismissListener:Lcom/coui/appcompat/poplist/COUIPopupMenu$OnDismissListener;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    return-void
.end method

.method public dismissImmediatly()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->superDismiss()V

    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    new-instance v0, Landroid/view/MenuInflater;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getPopup()Lcom/coui/appcompat/poplist/COUIPopupListWindow;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    return-object p0
.end method

.method public inflate(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    invoke-direct {v0}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    move v6, v1

    :goto_1
    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-interface {v5, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->reset()Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v8

    invoke-interface {v7}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v8

    invoke-interface {v7}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_1
    const-string v9, ""

    :goto_2
    invoke-virtual {v8, v9}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setTitle(Ljava/lang/String;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v8

    invoke-interface {v7}, Landroid/view/MenuItem;->isChecked()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setIsChecked(Z)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v8

    invoke-interface {v7}, Landroid/view/MenuItem;->getGroupId()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setGroupId(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->build()Lcom/coui/appcompat/poplist/PopupListItem;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :cond_3
    iget-object v5, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mRedDotMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mRedDotMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v6

    :goto_4
    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->reset()Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v7

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v7

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setTitle(Ljava/lang/String;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v7

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setIsChecked(Z)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setRedDotAmount(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v7

    if-ne v5, v6, :cond_6

    goto :goto_5

    :cond_6
    move v6, v1

    :goto_5
    invoke-virtual {v7, v6}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setHintType(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setSubMenuItemList(Ljava/util/ArrayList;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v4

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setGroupId(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->build()Lcom/coui/appcompat/poplist/PopupListItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setItemList(Ljava/util/List;)V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setAnchorView(Landroid/view/View;)V

    return-void
.end method

.method public setMenuRedDot(II)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->getItemList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/poplist/PopupListItem;->setRedDotAmount(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mRedDotMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mRedDotMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public setOnDismissListener(Lcom/coui/appcompat/poplist/COUIPopupMenu$OnDismissListener;)V
    .locals 1

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mOnDismissListener:Lcom/coui/appcompat/poplist/COUIPopupMenu$OnDismissListener;

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    new-instance v0, Lcom/coui/appcompat/poplist/COUIPopupMenu$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/COUIPopupMenu$2;-><init>(Lcom/coui/appcompat/poplist/COUIPopupMenu;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/coui/appcompat/poplist/COUIPopupMenu$OnMenuItemClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mMenuItemClickListener:Lcom/coui/appcompat/poplist/COUIPopupMenu$OnMenuItemClickListener;

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance v0, Lcom/coui/appcompat/poplist/COUIPopupMenu$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/COUIPopupMenu$1;-><init>(Lcom/coui/appcompat/poplist/COUIPopupMenu;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu;->mPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show()V

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupMenu;->setAnchorView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupMenu;->show()V

    return-void
.end method
