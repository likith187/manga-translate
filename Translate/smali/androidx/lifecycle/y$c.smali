.class Landroidx/lifecycle/y$c;
.super Landroidx/lifecycle/y$d;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final h:Landroidx/lifecycle/s;

.field final synthetic i:Landroidx/lifecycle/y;


# direct methods
.method constructor <init>(Landroidx/lifecycle/y;Landroidx/lifecycle/s;Landroidx/lifecycle/b0;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/y$c;->i:Landroidx/lifecycle/y;

    invoke-direct {p0, p1, p3}, Landroidx/lifecycle/y$d;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/b0;)V

    iput-object p2, p0, Landroidx/lifecycle/y$c;->h:Landroidx/lifecycle/s;

    return-void
.end method


# virtual methods
.method b()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/y$c;->h:Landroidx/lifecycle/s;

    invoke-interface {v0}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/r;)V

    return-void
.end method

.method c(Landroidx/lifecycle/s;)Z
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/y$c;->h:Landroidx/lifecycle/s;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method d()Z
    .locals 1

    iget-object p0, p0, Landroidx/lifecycle/y$c;->h:Landroidx/lifecycle/s;

    invoke-interface {p0}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object p0

    sget-object v0, Landroidx/lifecycle/l$b;->STARTED:Landroidx/lifecycle/l$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/l$b;->isAtLeast(Landroidx/lifecycle/l$b;)Z

    move-result p0

    return p0
.end method

.method public onStateChanged(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 1

    iget-object p1, p0, Landroidx/lifecycle/y$c;->h:Landroidx/lifecycle/s;

    invoke-interface {p1}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/l$b;->DESTROYED:Landroidx/lifecycle/l$b;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/y$c;->i:Landroidx/lifecycle/y;

    iget-object p0, p0, Landroidx/lifecycle/y$d;->a:Landroidx/lifecycle/b0;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/y;->l(Landroidx/lifecycle/b0;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eq p2, p1, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/y$c;->d()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/lifecycle/y$d;->a(Z)V

    iget-object p2, p0, Landroidx/lifecycle/y$c;->h:Landroidx/lifecycle/s;

    invoke-interface {p2}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object p2

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
