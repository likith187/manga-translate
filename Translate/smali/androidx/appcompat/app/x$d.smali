.class public Landroidx/appcompat/app/x$d;
.super Landroidx/appcompat/view/b;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private final c:Landroid/content/Context;

.field private final f:Landroidx/appcompat/view/menu/MenuBuilder;

.field private h:Landroidx/appcompat/view/b$a;

.field private i:Ljava/lang/ref/WeakReference;

.field final synthetic j:Landroidx/appcompat/app/x;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/x;Landroid/content/Context;Landroidx/appcompat/view/b$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/x$d;->j:Landroidx/appcompat/app/x;

    invoke-direct {p0}, Landroidx/appcompat/view/b;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/app/x$d;->c:Landroid/content/Context;

    iput-object p3, p0, Landroidx/appcompat/app/x$d;->h:Landroidx/appcompat/view/b$a;

    new-instance p1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/x$d;->f:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/x$d;->j:Landroidx/appcompat/app/x;

    iget-object v1, v0, Landroidx/appcompat/app/x;->m:Landroidx/appcompat/app/x$d;

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Landroidx/appcompat/app/x;->u:Z

    iget-boolean v0, v0, Landroidx/appcompat/app/x;->v:Z

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroidx/appcompat/app/x;->x(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/x$d;->j:Landroidx/appcompat/app/x;

    iput-object p0, v0, Landroidx/appcompat/app/x;->n:Landroidx/appcompat/view/b;

    iget-object v1, p0, Landroidx/appcompat/app/x$d;->h:Landroidx/appcompat/view/b$a;

    iput-object v1, v0, Landroidx/appcompat/app/x;->o:Landroidx/appcompat/view/b$a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/x$d;->h:Landroidx/appcompat/view/b$a;

    invoke-interface {v0, p0}, Landroidx/appcompat/view/b$a;->b(Landroidx/appcompat/view/b;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/x$d;->h:Landroidx/appcompat/view/b$a;

    iget-object v1, p0, Landroidx/appcompat/app/x$d;->j:Landroidx/appcompat/app/x;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/x;->w(Z)V

    iget-object v1, p0, Landroidx/appcompat/app/x$d;->j:Landroidx/appcompat/app/x;

    iget-object v1, v1, Landroidx/appcompat/app/x;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->g()V

    iget-object v1, p0, Landroidx/appcompat/app/x$d;->j:Landroidx/appcompat/app/x;

    iget-object v2, v1, Landroidx/appcompat/app/x;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v1, v1, Landroidx/appcompat/app/x;->A:Z

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object p0, p0, Landroidx/appcompat/app/x$d;->j:Landroidx/appcompat/app/x;

    iput-object v0, p0, Landroidx/appcompat/app/x;->m:Landroidx/appcompat/app/x$d;

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/x$d;->i:Ljava/lang/ref/WeakReference;

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

    iget-object p0, p0, Landroidx/appcompat/app/x$d;->f:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method public d()Landroid/view/MenuInflater;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/g;

    iget-object p0, p0, Landroidx/appcompat/app/x$d;->c:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/x$d;->j:Landroidx/appcompat/app/x;

    iget-object p0, p0, Landroidx/appcompat/app/x;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/x$d;->j:Landroidx/appcompat/app/x;

    iget-object p0, p0, Landroidx/appcompat/app/x;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/x$d;->j:Landroidx/appcompat/app/x;

    iget-object v0, v0, Landroidx/appcompat/app/x;->m:Landroidx/appcompat/app/x$d;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/x$d;->f:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/x$d;->h:Landroidx/appcompat/view/b$a;

    iget-object v1, p0, Landroidx/appcompat/app/x$d;->f:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/appcompat/app/x$d;->f:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/appcompat/app/x$d;->f:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public j()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/x$d;->j:Landroidx/appcompat/app/x;

    iget-object p0, p0, Landroidx/appcompat/app/x;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->j()Z

    move-result p0

    return p0
.end method

.method public k(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/x$d;->j:Landroidx/appcompat/app/x;

    iget-object v0, v0, Landroidx/appcompat/app/x;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/x$d;->i:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public l(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/x$d;->j:Landroidx/appcompat/app/x;

    iget-object v0, v0, Landroidx/appcompat/app/x;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/x$d;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public m(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/x$d;->j:Landroidx/appcompat/app/x;

    iget-object p0, p0, Landroidx/appcompat/app/x;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public o(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/x$d;->j:Landroidx/appcompat/app/x;

    iget-object v0, v0, Landroidx/appcompat/app/x;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/x$d;->p(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/app/x$d;->h:Landroidx/appcompat/view/b$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Landroidx/appcompat/view/b$a;->c(Landroidx/appcompat/view/b;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/app/x$d;->h:Landroidx/appcompat/view/b$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/x$d;->i()V

    iget-object p0, p0, Landroidx/appcompat/app/x$d;->j:Landroidx/appcompat/app/x;

    iget-object p0, p0, Landroidx/appcompat/app/x;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->l()Z

    return-void
.end method

.method public p(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/x$d;->j:Landroidx/appcompat/app/x;

    iget-object p0, p0, Landroidx/appcompat/app/x;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public q(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/b;->q(Z)V

    iget-object p0, p0, Landroidx/appcompat/app/x$d;->j:Landroidx/appcompat/app/x;

    iget-object p0, p0, Landroidx/appcompat/app/x;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public r()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/x$d;->f:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/x$d;->h:Landroidx/appcompat/view/b$a;

    iget-object v1, p0, Landroidx/appcompat/app/x$d;->f:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroidx/appcompat/view/b$a;->d(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/appcompat/app/x$d;->f:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/appcompat/app/x$d;->f:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method
