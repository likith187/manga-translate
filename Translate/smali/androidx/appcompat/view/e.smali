.class public Landroidx/appcompat/view/e;
.super Landroidx/appcompat/view/b;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# instance fields
.field private c:Landroid/content/Context;

.field private f:Landroidx/appcompat/widget/ActionBarContextView;

.field private h:Landroidx/appcompat/view/b$a;

.field private i:Ljava/lang/ref/WeakReference;

.field private j:Z

.field private k:Z

.field private l:Landroidx/appcompat/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Landroidx/appcompat/view/b$a;Z)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/b;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/e;->c:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/e;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p3, p0, Landroidx/appcompat/view/e;->h:Landroidx/appcompat/view/b$a;

    new-instance p1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/e;->l:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    iput-boolean p4, p0, Landroidx/appcompat/view/e;->k:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/e;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/e;->j:Z

    iget-object v0, p0, Landroidx/appcompat/view/e;->h:Landroidx/appcompat/view/b$a;

    invoke-interface {v0, p0}, Landroidx/appcompat/view/b$a;->b(Landroidx/appcompat/view/b;)V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/e;->i:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public c()Landroid/view/Menu;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/e;->l:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method public d()Landroid/view/MenuInflater;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/g;

    iget-object p0, p0, Landroidx/appcompat/view/e;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/e;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/e;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/e;->h:Landroidx/appcompat/view/b$a;

    iget-object v1, p0, Landroidx/appcompat/view/e;->l:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z

    return-void
.end method

.method public j()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/e;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->j()Z

    move-result p0

    return p0
.end method

.method public k(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/e;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/view/e;->i:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public l(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/e;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/e;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public m(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/e;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public o(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/e;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/e;->p(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/view/e;->h:Landroidx/appcompat/view/b$a;

    invoke-interface {p1, p0, p2}, Landroidx/appcompat/view/b$a;->c(Landroidx/appcompat/view/b;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/e;->i()V

    iget-object p0, p0, Landroidx/appcompat/view/e;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->l()Z

    return-void
.end method

.method public p(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/e;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public q(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/b;->q(Z)V

    iget-object p0, p0, Landroidx/appcompat/view/e;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method
