.class abstract Landroidx/appcompat/view/menu/BaseMenuWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mMenuItems:Landroidx/collection/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/i;"
        }
    .end annotation
.end field

.field private mSubMenus:Landroidx/collection/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/i;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    instance-of v0, p1, Lw/b;

    if-eqz v0, :cond_2

    check-cast p1, Lw/b;

    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/i;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/i;

    invoke-direct {v0}, Landroidx/collection/i;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/i;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/i;

    invoke-virtual {v0, p1}, Landroidx/collection/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Lw/b;)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/i;

    invoke-virtual {p0, p1, v0}, Landroidx/collection/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method final getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 0

    return-object p1
.end method

.method final internalClear()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/collection/i;->clear()V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Landroidx/collection/i;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/collection/i;->clear()V

    :cond_1
    return-void
.end method

.method final internalRemoveGroup(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/i;

    invoke-virtual {v1}, Landroidx/collection/i;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/i;

    invoke-virtual {v1, v0}, Landroidx/collection/i;->g(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw/b;

    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/i;

    invoke-virtual {v1, v0}, Landroidx/collection/i;->i(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method final internalRemoveItem(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/i;

    invoke-virtual {v1}, Landroidx/collection/i;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/i;

    invoke-virtual {v1, v0}, Landroidx/collection/i;->g(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw/b;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object p0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/i;

    invoke-virtual {p0, v0}, Landroidx/collection/i;->i(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
