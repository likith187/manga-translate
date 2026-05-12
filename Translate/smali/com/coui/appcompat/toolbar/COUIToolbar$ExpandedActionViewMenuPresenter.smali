.class Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/toolbar/COUIToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

.field mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/toolbar/COUIToolbar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/toolbar/COUIToolbar;Lcom/coui/appcompat/toolbar/COUIToolbar$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;-><init>(Lcom/coui/appcompat/toolbar/COUIToolbar;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 2

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-static {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$400(Lcom/coui/appcompat/toolbar/COUIToolbar;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroidx/appcompat/view/c;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-static {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$400(Lcom/coui/appcompat/toolbar/COUIToolbar;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/c;

    invoke-interface {p1}, Landroidx/appcompat/view/c;->onActionViewCollapsed()V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-static {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$400(Lcom/coui/appcompat/toolbar/COUIToolbar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-static {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$300(Lcom/coui/appcompat/toolbar/COUIToolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$402(Lcom/coui/appcompat/toolbar/COUIToolbar;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$600(Lcom/coui/appcompat/toolbar/COUIToolbar;Z)V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 2

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-static {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$200(Lcom/coui/appcompat/toolbar/COUIToolbar;)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-static {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$300(Lcom/coui/appcompat/toolbar/COUIToolbar;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eq p1, v0, :cond_0

    invoke-static {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$300(Lcom/coui/appcompat/toolbar/COUIToolbar;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$402(Lcom/coui/appcompat/toolbar/COUIToolbar;Landroid/view/View;)Landroid/view/View;

    iput-object p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-static {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$400(Lcom/coui/appcompat/toolbar/COUIToolbar;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eq p1, v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->generateDefaultLayoutParams()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-static {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$500(Lcom/coui/appcompat/toolbar/COUIToolbar;)I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    const v1, 0x800003

    or-int/2addr v0, v1

    iput v0, p1, Landroidx/appcompat/app/a$a;->gravity:I

    const/4 v0, 0x2

    iput v0, p1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-static {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$400(Lcom/coui/appcompat/toolbar/COUIToolbar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-static {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$400(Lcom/coui/appcompat/toolbar/COUIToolbar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$600(Lcom/coui/appcompat/toolbar/COUIToolbar;Z)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-static {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$400(Lcom/coui/appcompat/toolbar/COUIToolbar;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroidx/appcompat/view/c;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-static {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$400(Lcom/coui/appcompat/toolbar/COUIToolbar;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/c;

    invoke-interface {p0}, Landroidx/appcompat/view/c;->onActionViewExpanded()V

    :cond_2
    return v0
.end method

.method public flagActionItems()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    :cond_0
    iput-object p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 3

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    :cond_2
    :goto_1
    return-void
.end method
