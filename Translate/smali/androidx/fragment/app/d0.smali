.class Landroidx/fragment/app/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/j;
.implements Lq0/h;
.implements Landroidx/lifecycle/x0;


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Landroidx/lifecycle/w0;

.field private c:Landroidx/lifecycle/u0$c;

.field private f:Landroidx/lifecycle/u;

.field private h:Lq0/g;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/w0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/d0;->f:Landroidx/lifecycle/u;

    iput-object v0, p0, Landroidx/fragment/app/d0;->h:Lq0/g;

    iput-object p1, p0, Landroidx/fragment/app/d0;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/d0;->b:Landroidx/lifecycle/w0;

    return-void
.end method


# virtual methods
.method a(Landroidx/lifecycle/l$a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/d0;->f:Landroidx/lifecycle/u;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/u;->i(Landroidx/lifecycle/l$a;)V

    return-void
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d0;->f:Landroidx/lifecycle/u;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/u;

    invoke-direct {v0, p0}, Landroidx/lifecycle/u;-><init>(Landroidx/lifecycle/s;)V

    iput-object v0, p0, Landroidx/fragment/app/d0;->f:Landroidx/lifecycle/u;

    invoke-static {p0}, Lq0/g;->a(Lq0/h;)Lq0/g;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/d0;->h:Lq0/g;

    invoke-virtual {v0}, Lq0/g;->c()V

    invoke-static {p0}, Landroidx/lifecycle/k0;->c(Lq0/h;)V

    :cond_0
    return-void
.end method

.method c()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/d0;->f:Landroidx/lifecycle/u;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method d(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/d0;->h:Lq0/g;

    invoke-virtual {p0, p1}, Lq0/g;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method e(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/d0;->h:Lq0/g;

    invoke-virtual {p0, p1}, Lq0/g;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method f(Landroidx/lifecycle/l$b;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/d0;->f:Landroidx/lifecycle/u;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/u;->n(Landroidx/lifecycle/l$b;)V

    return-void
.end method

.method public getDefaultViewModelCreationExtras()Ll0/a;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/d0;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Ll0/b;

    invoke-direct {v1}, Ll0/b;-><init>()V

    if-eqz v0, :cond_2

    sget-object v2, Landroidx/lifecycle/u0$a;->h:Ll0/a$c;

    invoke-virtual {v1, v2, v0}, Ll0/b;->c(Ll0/a$c;Ljava/lang/Object;)V

    :cond_2
    sget-object v0, Landroidx/lifecycle/k0;->a:Ll0/a$c;

    invoke-virtual {v1, v0, p0}, Ll0/b;->c(Ll0/a$c;Ljava/lang/Object;)V

    sget-object v0, Landroidx/lifecycle/k0;->b:Ll0/a$c;

    invoke-virtual {v1, v0, p0}, Ll0/b;->c(Ll0/a$c;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/fragment/app/d0;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/lifecycle/k0;->c:Ll0/a$c;

    iget-object p0, p0, Landroidx/fragment/app/d0;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ll0/b;->c(Ll0/a$c;Ljava/lang/Object;)V

    :cond_3
    return-object v1
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/u0$c;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/d0;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/u0$c;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/d0;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/u0$c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Landroidx/fragment/app/d0;->c:Landroidx/lifecycle/u0$c;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Landroidx/lifecycle/u0$c;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/d0;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    :cond_1
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Landroidx/lifecycle/o0;

    iget-object v2, p0, Landroidx/fragment/app/d0;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Landroidx/lifecycle/o0;-><init>(Landroid/app/Application;Lq0/h;Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/fragment/app/d0;->c:Landroidx/lifecycle/u0$c;

    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/d0;->c:Landroidx/lifecycle/u0$c;

    return-object p0
.end method

.method public getLifecycle()Landroidx/lifecycle/l;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/d0;->b()V

    iget-object p0, p0, Landroidx/fragment/app/d0;->f:Landroidx/lifecycle/u;

    return-object p0
.end method

.method public getSavedStateRegistry()Lq0/e;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/d0;->b()V

    iget-object p0, p0, Landroidx/fragment/app/d0;->h:Lq0/g;

    invoke-virtual {p0}, Lq0/g;->b()Lq0/e;

    move-result-object p0

    return-object p0
.end method

.method public getViewModelStore()Landroidx/lifecycle/w0;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/d0;->b()V

    iget-object p0, p0, Landroidx/fragment/app/d0;->b:Landroidx/lifecycle/w0;

    return-object p0
.end method
