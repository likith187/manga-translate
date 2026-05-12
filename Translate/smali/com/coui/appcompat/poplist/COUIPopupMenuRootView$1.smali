.class Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mCancelSubMenuEnterAndStartExit:Landroid/view/View$OnClickListener;

.field private final mCancelSubMenuExitAndStartEnter:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/coui/appcompat/poplist/e;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/poplist/e;-><init>(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;)V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->mCancelSubMenuEnterAndStartExit:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/coui/appcompat/poplist/f;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/poplist/f;-><init>(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;)V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->mCancelSubMenuExitAndStartEnter:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->lambda$$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->lambda$$1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->hideSubMenu(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$300(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$$1(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->showSubMenu()V

    return-void
.end method


# virtual methods
.method public onMainMenuEntered()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$000(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$000(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;->onMainMenuEntered()V

    :cond_0
    return-void
.end method

.method public onMainMenuStartToEnter()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$000(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$000(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;->onMainMenuStartToEnter()V

    :cond_0
    return-void
.end method

.method public onSubMenuAnimationCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$000(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$000(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;->onSubMenuAnimationCanceled()V

    :cond_0
    return-void
.end method

.method public onSubMenuEntered()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$000(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$000(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;->onSubMenuEntered()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$200(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$500(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$200(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$200(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->clearOverrideOutline()V

    :cond_1
    return-void
.end method

.method public onSubMenuExited()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$102(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Z)Z

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$200(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$200(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->setAllowDispatchEvent(Z)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$000(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$000(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;->onSubMenuExited()V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$300(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$500(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$600(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->removeSubMenuView()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$700(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$700(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {p0, v1}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$702(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public onSubMenuStartToEnter()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$102(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Z)Z

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$200(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$200(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->setAllowDispatchEvent(Z)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$000(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$000(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;->onSubMenuStartToEnter()V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$300(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$300(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$400(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$300(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$500(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$200(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$500(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->mCancelSubMenuEnterAndStartExit:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$600(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$300(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->mCancelSubMenuEnterAndStartExit:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public onSubMenuStartToExit()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$102(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Z)Z

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$200(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$200(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->setAllowDispatchEvent(Z)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$000(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$000(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;->onSubMenuStartToExit()V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$300(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$300(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$300(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$300(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$300(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$400(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$200(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$500(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;->mCancelSubMenuExitAndStartEnter:Landroid/view/View$OnClickListener;

    invoke-static {v0, p0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->access$600(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method
