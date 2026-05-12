.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior$1;
.super Landroidx/recyclerview/widget/RecyclerView$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;

.field final synthetic val$child:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior$1;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;

    iput-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior$1;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$u;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$u;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$u;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior$1;->val$child:Landroid/view/View;

    instance-of p2, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior$1;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;

    check-cast p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p0, p1, p3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->access$2200(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)V

    :cond_0
    return-void
.end method
