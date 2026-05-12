.class Landroidx/fragment/app/FragmentActivity$a;
.super Landroidx/fragment/app/l;
.source "SourceFile"

# interfaces
.implements Lr/c;
.implements Lr/d;
.implements Landroidx/core/app/l;
.implements Landroidx/core/app/m;
.implements Landroidx/lifecycle/x0;
.implements Landroidx/activity/x;
.implements Landroidx/activity/result/e;
.implements Lq0/h;
.implements Landroidx/fragment/app/v;
.implements Landroidx/core/view/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic i:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0, p1}, Landroidx/fragment/app/l;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentActivity;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public addMenuProvider(Landroidx/core/view/t;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/core/view/t;)V

    return-void
.end method

.method public addOnConfigurationChangedListener(Lc0/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->addOnConfigurationChangedListener(Lc0/a;)V

    return-void
.end method

.method public addOnMultiWindowModeChangedListener(Lc0/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->addOnMultiWindowModeChangedListener(Lc0/a;)V

    return-void
.end method

.method public addOnPictureInPictureModeChangedListener(Lc0/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->addOnPictureInPictureModeChangedListener(Lc0/a;)V

    return-void
.end method

.method public addOnTrimMemoryListener(Lc0/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->addOnTrimMemoryListener(Lc0/a;)V

    return-void
.end method

.method public c(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public d()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getActivityResultRegistry()Landroidx/activity/result/d;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/d;

    move-result-object p0

    return-object p0
.end method

.method public getLifecycle()Landroidx/lifecycle/l;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/u;

    return-object p0
.end method

.method public getOnBackPressedDispatcher()Landroidx/activity/v;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/v;

    move-result-object p0

    return-object p0
.end method

.method public getSavedStateRegistry()Lq0/e;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Lq0/e;

    move-result-object p0

    return-object p0
.end method

.method public getViewModelStore()Landroidx/lifecycle/w0;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/w0;

    move-result-object p0

    return-object p0
.end method

.method public h(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic i()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity$a;->q()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    return-object p0
.end method

.method public j()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public l(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0, p1}, Landroidx/core/app/a;->r(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public o()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity$a;->p()V

    return-void
.end method

.method public p()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public q()Landroidx/fragment/app/FragmentActivity;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method public removeMenuProvider(Landroidx/core/view/t;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->removeMenuProvider(Landroidx/core/view/t;)V

    return-void
.end method

.method public removeOnConfigurationChangedListener(Lc0/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->removeOnConfigurationChangedListener(Lc0/a;)V

    return-void
.end method

.method public removeOnMultiWindowModeChangedListener(Lc0/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->removeOnMultiWindowModeChangedListener(Lc0/a;)V

    return-void
.end method

.method public removeOnPictureInPictureModeChangedListener(Lc0/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->removeOnPictureInPictureModeChangedListener(Lc0/a;)V

    return-void
.end method

.method public removeOnTrimMemoryListener(Lc0/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$a;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->removeOnTrimMemoryListener(Lc0/a;)V

    return-void
.end method
