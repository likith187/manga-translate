.class Landroidx/appcompat/app/u;
.super Landroidx/appcompat/app/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/u$e;,
        Landroidx/appcompat/app/u$c;,
        Landroidx/appcompat/app/u$d;
    }
.end annotation


# instance fields
.field final a:Landroidx/appcompat/widget/t;

.field final b:Landroid/view/Window$Callback;

.field final c:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

.field d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;

.field private final h:Ljava/lang/Runnable;

.field private final i:Landroidx/appcompat/widget/Toolbar$h;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/u;->g:Ljava/util/ArrayList;

    new-instance v0, Landroidx/appcompat/app/u$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/u$a;-><init>(Landroidx/appcompat/app/u;)V

    iput-object v0, p0, Landroidx/appcompat/app/u;->h:Ljava/lang/Runnable;

    new-instance v0, Landroidx/appcompat/app/u$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/u$b;-><init>(Landroidx/appcompat/app/u;)V

    iput-object v0, p0, Landroidx/appcompat/app/u;->i:Landroidx/appcompat/widget/Toolbar$h;

    invoke-static {p1}, Lc0/h;->e(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/appcompat/widget/l0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroidx/appcompat/widget/l0;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v1, p0, Landroidx/appcompat/app/u;->a:Landroidx/appcompat/widget/t;

    invoke-static {p3}, Lc0/h;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Window$Callback;

    iput-object v2, p0, Landroidx/appcompat/app/u;->b:Landroid/view/Window$Callback;

    invoke-interface {v1, p3}, Landroidx/appcompat/widget/t;->setWindowCallback(Landroid/view/Window$Callback;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$h;)V

    invoke-interface {v1, p2}, Landroidx/appcompat/widget/t;->setWindowTitle(Ljava/lang/CharSequence;)V

    new-instance p1, Landroidx/appcompat/app/u$e;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/u$e;-><init>(Landroidx/appcompat/app/u;)V

    iput-object p1, p0, Landroidx/appcompat/app/u;->c:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    return-void
.end method

.method private w()Landroid/view/Menu;
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/app/u;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/u;->a:Landroidx/appcompat/widget/t;

    new-instance v1, Landroidx/appcompat/app/u$c;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/u$c;-><init>(Landroidx/appcompat/app/u;)V

    new-instance v2, Landroidx/appcompat/app/u$d;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/u$d;-><init>(Landroidx/appcompat/app/u;)V

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/t;->i(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/u;->e:Z

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/u;->a:Landroidx/appcompat/widget/t;

    invoke-interface {p0}, Landroidx/appcompat/widget/t;->q()Landroid/view/Menu;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public g()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/u;->a:Landroidx/appcompat/widget/t;

    invoke-interface {p0}, Landroidx/appcompat/widget/t;->e()Z

    move-result p0

    return p0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/u;->a:Landroidx/appcompat/widget/t;

    invoke-interface {v0}, Landroidx/appcompat/widget/t;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/u;->a:Landroidx/appcompat/widget/t;

    invoke-interface {p0}, Landroidx/appcompat/widget/t;->collapseActionView()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public i(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/u;->f:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/u;->f:Z

    iget-object p1, p0, Landroidx/appcompat/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/app/u;->g:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public j()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/u;->a:Landroidx/appcompat/widget/t;

    invoke-interface {p0}, Landroidx/appcompat/widget/t;->p()I

    move-result p0

    return p0
.end method

.method public k()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/u;->a:Landroidx/appcompat/widget/t;

    invoke-interface {p0}, Landroidx/appcompat/widget/t;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/u;->a:Landroidx/appcompat/widget/t;

    invoke-interface {v0}, Landroidx/appcompat/widget/t;->l()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/u;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/appcompat/app/u;->a:Landroidx/appcompat/widget/t;

    invoke-interface {v0}, Landroidx/appcompat/widget/t;->l()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/app/u;->h:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Landroidx/core/view/m0;->a0(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public m(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/a;->m(Landroid/content/res/Configuration;)V

    return-void
.end method

.method n()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/u;->a:Landroidx/appcompat/widget/t;

    invoke-interface {v0}, Landroidx/appcompat/widget/t;->l()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/app/u;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public o(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/app/u;->w()Landroid/view/Menu;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-interface {p0, v2}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {p0, p1, p2, v0}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public p(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/u;->q()Z

    :cond_0
    return v0
.end method

.method public q()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/u;->a:Landroidx/appcompat/widget/t;

    invoke-interface {p0}, Landroidx/appcompat/widget/t;->f()Z

    move-result p0

    return p0
.end method

.method public r(Z)V
    .locals 0

    return-void
.end method

.method public s(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/u;->y(II)V

    return-void
.end method

.method public t(Z)V
    .locals 0

    return-void
.end method

.method public u(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/u;->a:Landroidx/appcompat/widget/t;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/t;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method x()V
    .locals 5

    invoke-direct {p0}, Landroidx/appcompat/app/u;->w()Landroid/view/Menu;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/MenuBuilder;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    iget-object v3, p0, Landroidx/appcompat/app/u;->b:Landroid/view/Window$Callback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, Landroidx/appcompat/app/u;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, v4, v2, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_4
    return-void

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_5
    throw p0
.end method

.method public y(II)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/u;->a:Landroidx/appcompat/widget/t;

    invoke-interface {v0}, Landroidx/appcompat/widget/t;->p()I

    move-result v0

    iget-object p0, p0, Landroidx/appcompat/app/u;->a:Landroidx/appcompat/widget/t;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/t;->o(I)V

    return-void
.end method
