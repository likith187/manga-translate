.class public Landroidx/appcompat/view/f;
.super Landroid/view/ActionMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/f$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroidx/appcompat/view/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/f;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->a()V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->b()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/MenuWrapperICS;

    iget-object v1, p0, Landroidx/appcompat/view/f;->a:Landroid/content/Context;

    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->c()Landroid/view/Menu;

    move-result-object p0

    check-cast p0, Lw/a;

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/view/menu/MenuWrapperICS;-><init>(Landroid/content/Context;Lw/a;)V

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->d()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->e()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->f()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->g()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTitleOptionalHint()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->h()Z

    move-result p0

    return p0
.end method

.method public invalidate()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->i()V

    return-void
.end method

.method public isTitleOptional()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->j()Z

    move-result p0

    return p0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/b;->k(Landroid/view/View;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/b;->l(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/b;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/b;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/b;->o(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/b;->p(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/b;->q(Z)V

    return-void
.end method
