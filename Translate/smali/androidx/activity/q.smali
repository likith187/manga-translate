.class public Landroidx/activity/q;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/s;
.implements Landroidx/activity/x;
.implements Lq0/h;


# instance fields
.field private _lifecycleRegistry:Landroidx/lifecycle/u;

.field private final onBackPressedDispatcher:Landroidx/activity/v;

.field private final savedStateRegistryController:Lq0/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sget-object p1, Lq0/g;->c:Lq0/g$a;

    invoke-virtual {p1, p0}, Lq0/g$a;->b(Lq0/h;)Lq0/g;

    move-result-object p1

    iput-object p1, p0, Landroidx/activity/q;->savedStateRegistryController:Lq0/g;

    new-instance p1, Landroidx/activity/v;

    new-instance p2, Landroidx/activity/p;

    invoke-direct {p2, p0}, Landroidx/activity/p;-><init>(Landroidx/activity/q;)V

    invoke-direct {p1, p2}, Landroidx/activity/v;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Landroidx/activity/q;->onBackPressedDispatcher:Landroidx/activity/v;

    return-void
.end method

.method public static synthetic a(Landroidx/activity/q;)V
    .locals 0

    invoke-static {p0}, Landroidx/activity/q;->c(Landroidx/activity/q;)V

    return-void
.end method

.method private final b()Landroidx/lifecycle/u;
    .locals 1

    iget-object v0, p0, Landroidx/activity/q;->_lifecycleRegistry:Landroidx/lifecycle/u;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/u;

    invoke-direct {v0, p0}, Landroidx/lifecycle/u;-><init>(Landroidx/lifecycle/s;)V

    iput-object v0, p0, Landroidx/activity/q;->_lifecycleRegistry:Landroidx/lifecycle/u;

    :cond_0
    return-object v0
.end method

.method private static final c(Landroidx/activity/q;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method public static synthetic getOnBackPressedDispatcher$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/activity/q;->initializeViewTreeOwners()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/l;
    .locals 0

    invoke-direct {p0}, Landroidx/activity/q;->b()Landroidx/lifecycle/u;

    move-result-object p0

    return-object p0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/v;
    .locals 0

    iget-object p0, p0, Landroidx/activity/q;->onBackPressedDispatcher:Landroidx/activity/v;

    return-object p0
.end method

.method public getSavedStateRegistry()Lq0/e;
    .locals 0

    iget-object p0, p0, Landroidx/activity/q;->savedStateRegistryController:Lq0/g;

    invoke-virtual {p0}, Lq0/g;->b()Lq0/e;

    move-result-object p0

    return-object p0
.end method

.method public initializeViewTreeOwners()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window!!.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroidx/lifecycle/y0;->a(Landroid/view/View;Landroidx/lifecycle/s;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroidx/activity/z;->a(Landroid/view/View;Landroidx/activity/x;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lq0/l;->a(Landroid/view/View;Lq0/h;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/q;->onBackPressedDispatcher:Landroidx/activity/v;

    invoke-virtual {p0}, Landroidx/activity/v;->k()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/activity/q;->onBackPressedDispatcher:Landroidx/activity/v;

    invoke-static {p0}, Landroidx/activity/o;->a(Landroidx/activity/q;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    const-string v2, "onBackInvokedDispatcher"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/activity/v;->n(Landroid/window/OnBackInvokedDispatcher;)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/q;->savedStateRegistryController:Lq0/g;

    invoke-virtual {v0, p1}, Lq0/g;->d(Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroidx/activity/q;->b()Landroidx/lifecycle/u;

    move-result-object p0

    sget-object p1, Landroidx/lifecycle/l$a;->ON_CREATE:Landroidx/lifecycle/l$a;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/u;->i(Landroidx/lifecycle/l$a;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "super.onSaveInstanceState()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/activity/q;->savedStateRegistryController:Lq0/g;

    invoke-virtual {p0, v0}, Lq0/g;->e(Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-direct {p0}, Landroidx/activity/q;->b()Landroidx/lifecycle/u;

    move-result-object p0

    sget-object v0, Landroidx/lifecycle/l$a;->ON_RESUME:Landroidx/lifecycle/l$a;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/u;->i(Landroidx/lifecycle/l$a;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-direct {p0}, Landroidx/activity/q;->b()Landroidx/lifecycle/u;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/l$a;->ON_DESTROY:Landroidx/lifecycle/l$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/u;->i(Landroidx/lifecycle/l$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/q;->_lifecycleRegistry:Landroidx/lifecycle/u;

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/q;->initializeViewTreeOwners()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/activity/q;->initializeViewTreeOwners()V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroidx/activity/q;->initializeViewTreeOwners()V

    .line 6
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
