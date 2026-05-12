.class public Landroidx/core/view/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/q$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/view/q;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/view/q;->c:Ljava/util/Map;

    iput-object p1, p0, Landroidx/core/view/q;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Landroidx/core/view/q;Landroidx/lifecycle/l$b;Landroidx/core/view/t;Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/core/view/q;->g(Landroidx/lifecycle/l$b;Landroidx/core/view/t;Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V

    return-void
.end method

.method public static synthetic b(Landroidx/core/view/q;Landroidx/core/view/t;Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/core/view/q;->f(Landroidx/core/view/t;Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V

    return-void
.end method

.method private synthetic f(Landroidx/core/view/t;Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 0

    sget-object p2, Landroidx/lifecycle/l$a;->ON_DESTROY:Landroidx/lifecycle/l$a;

    if-ne p3, p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/core/view/q;->l(Landroidx/core/view/t;)V

    :cond_0
    return-void
.end method

.method private synthetic g(Landroidx/lifecycle/l$b;Landroidx/core/view/t;Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 0

    invoke-static {p1}, Landroidx/lifecycle/l$a;->upTo(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;

    move-result-object p3

    if-ne p4, p3, :cond_0

    invoke-virtual {p0, p2}, Landroidx/core/view/q;->c(Landroidx/core/view/t;)V

    goto :goto_0

    :cond_0
    sget-object p3, Landroidx/lifecycle/l$a;->ON_DESTROY:Landroidx/lifecycle/l$a;

    if-ne p4, p3, :cond_1

    invoke-virtual {p0, p2}, Landroidx/core/view/q;->l(Landroidx/core/view/t;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroidx/lifecycle/l$a;->downFrom(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;

    move-result-object p1

    if-ne p4, p1, :cond_2

    iget-object p1, p0, Landroidx/core/view/q;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/core/view/q;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public c(Landroidx/core/view/t;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/q;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/core/view/q;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public d(Landroidx/core/view/t;Landroidx/lifecycle/s;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/core/view/q;->c(Landroidx/core/view/t;)V

    invoke-interface {p2}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p2

    iget-object v0, p0, Landroidx/core/view/q;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/q$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/view/q$a;->a()V

    :cond_0
    new-instance v0, Landroidx/core/view/p;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/p;-><init>(Landroidx/core/view/q;Landroidx/core/view/t;)V

    iget-object p0, p0, Landroidx/core/view/q;->c:Ljava/util/Map;

    new-instance v1, Landroidx/core/view/q$a;

    invoke-direct {v1, p2, v0}, Landroidx/core/view/q$a;-><init>(Landroidx/lifecycle/l;Landroidx/lifecycle/p;)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Landroidx/core/view/t;Landroidx/lifecycle/s;Landroidx/lifecycle/l$b;)V
    .locals 1

    invoke-interface {p2}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p2

    iget-object v0, p0, Landroidx/core/view/q;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/q$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/view/q$a;->a()V

    :cond_0
    new-instance v0, Landroidx/core/view/o;

    invoke-direct {v0, p0, p3, p1}, Landroidx/core/view/o;-><init>(Landroidx/core/view/q;Landroidx/lifecycle/l$b;Landroidx/core/view/t;)V

    iget-object p0, p0, Landroidx/core/view/q;->c:Ljava/util/Map;

    new-instance p3, Landroidx/core/view/q$a;

    invoke-direct {p3, p2, v0}, Landroidx/core/view/q$a;-><init>(Landroidx/lifecycle/l;Landroidx/lifecycle/p;)V

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    iget-object p0, p0, Landroidx/core/view/q;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/t;

    invoke-interface {v0, p1, p2}, Landroidx/core/view/t;->c(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(Landroid/view/Menu;)V
    .locals 1

    iget-object p0, p0, Landroidx/core/view/q;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/t;

    invoke-interface {v0, p1}, Landroidx/core/view/t;->b(Landroid/view/Menu;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object p0, p0, Landroidx/core/view/q;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/t;

    invoke-interface {v0, p1}, Landroidx/core/view/t;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public k(Landroid/view/Menu;)V
    .locals 1

    iget-object p0, p0, Landroidx/core/view/q;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/t;

    invoke-interface {v0, p1}, Landroidx/core/view/t;->d(Landroid/view/Menu;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l(Landroidx/core/view/t;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/q;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/core/view/q;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/view/q$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/core/view/q$a;->a()V

    :cond_0
    iget-object p0, p0, Landroidx/core/view/q;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
