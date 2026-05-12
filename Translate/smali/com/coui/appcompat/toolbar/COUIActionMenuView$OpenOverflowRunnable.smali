.class Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/toolbar/COUIActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/toolbar/COUIActionMenuView;Lcom/coui/appcompat/toolbar/COUIActionMenuView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;-><init>(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-static {v0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->access$300(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-static {v0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->access$300(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->changeMenuMode()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v0, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {v0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->access$500(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-static {v2}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->access$500(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-static {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->access$500(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v1, v0, v2, p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show(Landroid/view/View;II)V

    :cond_1
    return-void
.end method
