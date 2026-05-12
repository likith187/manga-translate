.class public final Landroidx/activity/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/v$f;,
        Landroidx/activity/v$g;,
        Landroidx/activity/v$h;,
        Landroidx/activity/v$i;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Lc0/a;

.field private final c:Lkotlin/collections/h;

.field private d:Landroidx/activity/u;

.field private e:Landroid/window/OnBackInvokedCallback;

.field private f:Landroid/window/OnBackInvokedDispatcher;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Landroidx/activity/v;-><init>(Ljava/lang/Runnable;Lc0/a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lc0/a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/activity/v;->a:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Landroidx/activity/v;->b:Lc0/a;

    .line 4
    new-instance p1, Lkotlin/collections/h;

    invoke-direct {p1}, Lkotlin/collections/h;-><init>()V

    iput-object p1, p0, Landroidx/activity/v;->c:Lkotlin/collections/h;

    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    if-lt p1, p2, :cond_1

    const/16 p2, 0x22

    if-lt p1, p2, :cond_0

    .line 6
    sget-object p1, Landroidx/activity/v$g;->INSTANCE:Landroidx/activity/v$g;

    new-instance p2, Landroidx/activity/v$a;

    invoke-direct {p2, p0}, Landroidx/activity/v$a;-><init>(Landroidx/activity/v;)V

    new-instance v0, Landroidx/activity/v$b;

    invoke-direct {v0, p0}, Landroidx/activity/v$b;-><init>(Landroidx/activity/v;)V

    new-instance v1, Landroidx/activity/v$c;

    invoke-direct {v1, p0}, Landroidx/activity/v$c;-><init>(Landroidx/activity/v;)V

    new-instance v2, Landroidx/activity/v$d;

    invoke-direct {v2, p0}, Landroidx/activity/v$d;-><init>(Landroidx/activity/v;)V

    invoke-virtual {p1, p2, v0, v1, v2}, Landroidx/activity/v$g;->a(Lw8/l;Lw8/l;Lw8/a;Lw8/a;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Landroidx/activity/v$f;->INSTANCE:Landroidx/activity/v$f;

    new-instance p2, Landroidx/activity/v$e;

    invoke-direct {p2, p0}, Landroidx/activity/v$e;-><init>(Landroidx/activity/v;)V

    invoke-virtual {p1, p2}, Landroidx/activity/v$f;->b(Lw8/a;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Landroidx/activity/v;->e:Landroid/window/OnBackInvokedCallback;

    :cond_1
    return-void
.end method

.method public static final synthetic a(Landroidx/activity/v;)Landroidx/activity/u;
    .locals 0

    iget-object p0, p0, Landroidx/activity/v;->d:Landroidx/activity/u;

    return-object p0
.end method

.method public static final synthetic b(Landroidx/activity/v;)Lkotlin/collections/h;
    .locals 0

    iget-object p0, p0, Landroidx/activity/v;->c:Lkotlin/collections/h;

    return-object p0
.end method

.method public static final synthetic c(Landroidx/activity/v;)V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/v;->j()V

    return-void
.end method

.method public static final synthetic d(Landroidx/activity/v;Landroidx/activity/b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/activity/v;->l(Landroidx/activity/b;)V

    return-void
.end method

.method public static final synthetic e(Landroidx/activity/v;Landroidx/activity/b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/activity/v;->m(Landroidx/activity/b;)V

    return-void
.end method

.method public static final synthetic f(Landroidx/activity/v;Landroidx/activity/u;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/v;->d:Landroidx/activity/u;

    return-void
.end method

.method public static final synthetic g(Landroidx/activity/v;)V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/v;->p()V

    return-void
.end method

.method private final j()V
    .locals 4

    iget-object v0, p0, Landroidx/activity/v;->d:Landroidx/activity/u;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/activity/v;->c:Lkotlin/collections/h;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/activity/u;

    invoke-virtual {v3}, Landroidx/activity/u;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    move-object v0, v2

    check-cast v0, Landroidx/activity/u;

    :cond_2
    iput-object v1, p0, Landroidx/activity/v;->d:Landroidx/activity/u;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/activity/u;->c()V

    :cond_3
    return-void
.end method

.method private final l(Landroidx/activity/b;)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/v;->d:Landroidx/activity/u;

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/activity/v;->c:Lkotlin/collections/h;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/activity/u;

    invoke-virtual {v1}, Landroidx/activity/u;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroidx/activity/u;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroidx/activity/u;->e(Landroidx/activity/b;)V

    :cond_3
    return-void
.end method

.method private final m(Landroidx/activity/b;)V
    .locals 3

    iget-object v0, p0, Landroidx/activity/v;->c:Lkotlin/collections/h;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/activity/u;

    invoke-virtual {v2}, Landroidx/activity/u;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroidx/activity/u;

    iget-object v0, p0, Landroidx/activity/v;->d:Landroidx/activity/u;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/activity/v;->j()V

    :cond_2
    iput-object v1, p0, Landroidx/activity/v;->d:Landroidx/activity/u;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroidx/activity/u;->f(Landroidx/activity/b;)V

    :cond_3
    return-void
.end method

.method private final o(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/activity/v;->f:Landroid/window/OnBackInvokedDispatcher;

    iget-object v1, p0, Landroidx/activity/v;->e:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Landroidx/activity/v;->g:Z

    if-nez v3, :cond_0

    sget-object p1, Landroidx/activity/v$f;->INSTANCE:Landroidx/activity/v$f;

    invoke-virtual {p1, v0, v2, v1}, Landroidx/activity/v$f;->d(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/activity/v;->g:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/activity/v;->g:Z

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/activity/v$f;->INSTANCE:Landroidx/activity/v$f;

    invoke-virtual {p1, v0, v1}, Landroidx/activity/v$f;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/activity/v;->g:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private final p()V
    .locals 4

    iget-boolean v0, p0, Landroidx/activity/v;->h:Z

    iget-object v1, p0, Landroidx/activity/v;->c:Lkotlin/collections/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/activity/u;

    invoke-virtual {v3}, Landroidx/activity/u;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    iput-boolean v2, p0, Landroidx/activity/v;->h:Z

    if-eq v2, v0, :cond_4

    iget-object v0, p0, Landroidx/activity/v;->b:Lc0/a;

    if-eqz v0, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lc0/a;->accept(Ljava/lang/Object;)V

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_4

    invoke-direct {p0, v2}, Landroidx/activity/v;->o(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final h(Landroidx/lifecycle/s;Landroidx/activity/u;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/l$b;->DESTROYED:Landroidx/lifecycle/l$b;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/activity/v$h;

    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/v$h;-><init>(Landroidx/activity/v;Landroidx/lifecycle/l;Landroidx/activity/u;)V

    invoke-virtual {p2, v0}, Landroidx/activity/u;->a(Landroidx/activity/c;)V

    invoke-direct {p0}, Landroidx/activity/v;->p()V

    new-instance p1, Landroidx/activity/v$j;

    invoke-direct {p1, p0}, Landroidx/activity/v$j;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroidx/activity/u;->k(Lw8/a;)V

    return-void
.end method

.method public final i(Landroidx/activity/u;)Landroidx/activity/c;
    .locals 2

    const-string v0, "onBackPressedCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/activity/v;->c:Lkotlin/collections/h;

    invoke-virtual {v0, p1}, Lkotlin/collections/h;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroidx/activity/v$i;

    invoke-direct {v0, p0, p1}, Landroidx/activity/v$i;-><init>(Landroidx/activity/v;Landroidx/activity/u;)V

    invoke-virtual {p1, v0}, Landroidx/activity/u;->a(Landroidx/activity/c;)V

    invoke-direct {p0}, Landroidx/activity/v;->p()V

    new-instance v1, Landroidx/activity/v$k;

    invoke-direct {v1, p0}, Landroidx/activity/v$k;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/activity/u;->k(Lw8/a;)V

    return-object v0
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Landroidx/activity/v;->d:Landroidx/activity/u;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/activity/v;->c:Lkotlin/collections/h;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/activity/u;

    invoke-virtual {v3}, Landroidx/activity/u;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    move-object v0, v2

    check-cast v0, Landroidx/activity/u;

    :cond_2
    iput-object v1, p0, Landroidx/activity/v;->d:Landroidx/activity/u;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/activity/u;->d()V

    return-void

    :cond_3
    iget-object p0, p0, Landroidx/activity/v;->a:Ljava/lang/Runnable;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method public final n(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 1

    const-string v0, "invoker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/activity/v;->f:Landroid/window/OnBackInvokedDispatcher;

    iget-boolean p1, p0, Landroidx/activity/v;->h:Z

    invoke-direct {p0, p1}, Landroidx/activity/v;->o(Z)V

    return-void
.end method
