.class Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/COUIPopupListWindow;->createContentView()Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;
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

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private requestAccessibilityFocusForListHeader(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x40

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method private setListViewFocusable(Landroid/widget/ListView;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setFocusable(Z)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onMainMenuEntered()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$1400(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/widget/ListView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->requestAccessibilityFocusForListHeader(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onSubMenuAnimationCanceled()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$1600(Lcom/coui/appcompat/poplist/COUIPopupListWindow;Z)V

    return-void
.end method

.method public onSubMenuEntered()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$1500(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/widget/ListView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->requestAccessibilityFocusForListHeader(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onSubMenuExited()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$1700(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$1500(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$1500(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$1500(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {p0, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$1702(Lcom/coui/appcompat/poplist/COUIPopupListWindow;Landroid/view/View;)Landroid/view/View;

    :cond_1
    return-void
.end method

.method public onSubMenuStartToEnter()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$1600(Lcom/coui/appcompat/poplist/COUIPopupListWindow;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$1400(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->setListViewFocusable(Landroid/widget/ListView;Z)V

    return-void
.end method

.method public onSubMenuStartToExit()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$1600(Lcom/coui/appcompat/poplist/COUIPopupListWindow;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$1400(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;->setListViewFocusable(Landroid/widget/ListView;Z)V

    return-void
.end method
