.class Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/toolbar/COUIActionMenuView;->tryBuildOverflowMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-static {p1}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->access$300(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p3, p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IndexOutOfBoundsException! position = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " non action items size = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-static {p2}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->access$300(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "popup menu size = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->getItemList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIActionMenuView"

    invoke-static {p1, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-static {p1}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->access$400(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/PopupListItem;->getSubMenuItemList()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-static {p1}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->access$300(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-static {p2}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->access$300(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MenuItem;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-static {p1}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->access$300(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-static {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->access$300(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/MenuItem;

    const/4 p2, 0x4

    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    :goto_0
    return-void
.end method
