.class Lcom/coui/appcompat/poplist/COUIPopupListWindow$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/poplist/COUIPopupListWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$3;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-static {p3}, Lcom/coui/appcompat/poplist/DefaultAdapter;->realPositionToDataIndex(I)I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$3;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$600(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->isCurrentContainerSmallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p3, p3, -0x1

    :cond_0
    move v3, p3

    if-gez v3, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$3;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$1000(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->performSubMenuHeader(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object p3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$3;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {p3}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$1200(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$3;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {p3}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$1200(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$3;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$1300(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Lcom/coui/appcompat/poplist/DefaultAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
