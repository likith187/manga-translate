.class public final Landroidx/lifecycle/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/e$b;


# instance fields
.field private final a:Lq0/e;

.field private b:Z

.field private c:Landroid/os/Bundle;

.field private final d:Ln8/j;


# direct methods
.method public constructor <init>(Lq0/e;Landroidx/lifecycle/x0;)V
    .locals 1

    const-string v0, "savedStateRegistry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelStoreOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/m0;->a:Lq0/e;

    new-instance p1, Landroidx/lifecycle/l0;

    invoke-direct {p1, p2}, Landroidx/lifecycle/l0;-><init>(Landroidx/lifecycle/x0;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/m0;->d:Ln8/j;

    return-void
.end method

.method public static synthetic a(Landroidx/lifecycle/x0;)Landroidx/lifecycle/n0;
    .locals 0

    invoke-static {p0}, Landroidx/lifecycle/m0;->e(Landroidx/lifecycle/x0;)Landroidx/lifecycle/n0;

    move-result-object p0

    return-object p0
.end method

.method private final c()Landroidx/lifecycle/n0;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/m0;->d:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/n0;

    return-object p0
.end method

.method private static final e(Landroidx/lifecycle/x0;)Landroidx/lifecycle/n0;
    .locals 0

    invoke-static {p0}, Landroidx/lifecycle/k0;->e(Landroidx/lifecycle/x0;)Landroidx/lifecycle/n0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/lifecycle/m0;->d()V

    iget-object v0, p0, Landroidx/lifecycle/m0;->c:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lq0/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2, p1}, Lq0/b;->b(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-static {v0}, Lq0/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2, p1}, Lq0/b;->d(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/collections/j0;->h()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    new-array v2, v4, [Ln8/q;

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-array v2, v4, [Ln8/q;

    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ln8/q;

    :goto_1
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ln8/q;

    invoke-static {v2}, Lz/c;->a([Ln8/q;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lq0/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_4
    invoke-static {v0}, Lq0/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3, p1}, Lq0/i;->e(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {v0}, Lq0/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lq0/b;->f(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-object v1, p0, Landroidx/lifecycle/m0;->c:Landroid/os/Bundle;

    :cond_5
    return-object v2
.end method

.method public final d()V
    .locals 6

    iget-boolean v0, p0, Landroidx/lifecycle/m0;->b:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/lifecycle/m0;->a:Lq0/e;

    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v0, v1}, Lq0/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/j0;->h()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-array v1, v3, [Ln8/q;

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array v1, v3, [Ln8/q;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ln8/q;

    :goto_1
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ln8/q;

    invoke-static {v1}, Lz/c;->a([Ln8/q;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lq0/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Landroidx/lifecycle/m0;->c:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    invoke-static {v2, v3}, Lq0/i;->b(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v2, v0}, Lq0/i;->b(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_3
    iput-object v1, p0, Landroidx/lifecycle/m0;->c:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/m0;->b:Z

    invoke-direct {p0}, Landroidx/lifecycle/m0;->c()Landroidx/lifecycle/n0;

    :cond_4
    return-void
.end method

.method public saveState()Landroid/os/Bundle;
    .locals 7

    invoke-static {}, Lkotlin/collections/j0;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array v0, v2, [Ln8/q;

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array v0, v2, [Ln8/q;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln8/q;

    :goto_1
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln8/q;

    invoke-static {v0}, Lz/c;->a([Ln8/q;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lq0/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v3, p0, Landroidx/lifecycle/m0;->c:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    invoke-static {v1, v3}, Lq0/i;->b(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_2
    invoke-direct {p0}, Landroidx/lifecycle/m0;->c()Landroidx/lifecycle/n0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/n0;->e()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/h0;

    invoke-virtual {v4}, Landroidx/lifecycle/h0;->a()Lq0/e$b;

    move-result-object v4

    invoke-interface {v4}, Lq0/e$b;->saveState()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lq0/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Lq0/b;->f(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v1, v5, v4}, Lq0/i;->c(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_4
    iput-boolean v2, p0, Landroidx/lifecycle/m0;->b:Z

    return-object v0
.end method
