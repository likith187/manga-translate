.class public final Lr0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/b$a;
    }
.end annotation


# static fields
.field private static final i:Lr0/b$a;


# instance fields
.field private final a:Lq0/h;

.field private final b:Lw8/a;

.field private final c:Lr0/c;

.field private final d:Ljava/util/Map;

.field private e:Z

.field private f:Landroid/os/Bundle;

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr0/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr0/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lr0/b;->i:Lr0/b$a;

    return-void
.end method

.method public constructor <init>(Lq0/h;Lw8/a;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAttach"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/b;->a:Lq0/h;

    iput-object p2, p0, Lr0/b;->b:Lw8/a;

    new-instance p1, Lr0/c;

    invoke-direct {p1}, Lr0/c;-><init>()V

    iput-object p1, p0, Lr0/b;->c:Lr0/c;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lr0/b;->d:Ljava/util/Map;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr0/b;->h:Z

    return-void
.end method

.method public static synthetic a(Lr0/b;Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lr0/b;->g(Lr0/b;Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V

    return-void
.end method

.method public static final synthetic b(Lr0/b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lr0/b;->d:Ljava/util/Map;

    return-object p0
.end method

.method private static final g(Lr0/b;Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Landroidx/lifecycle/l$a;->ON_START:Landroidx/lifecycle/l$a;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr0/b;->h:Z

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/lifecycle/l$a;->ON_STOP:Landroidx/lifecycle/l$a;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr0/b;->h:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lr0/b;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lr0/b;->f:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lq0/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2, p1}, Lq0/b;->b(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2, p1}, Lq0/b;->c(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-static {v0}, Lq0/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3, p1}, Lq0/i;->e(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {v0}, Lq0/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lq0/b;->f(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object v1, p0, Lr0/b;->f:Landroid/os/Bundle;

    :cond_2
    return-object v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You can \'consumeRestoredStateForKey\' only after the corresponding component has moved to the \'CREATED\' state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Ljava/lang/String;)Lq0/e$b;
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/b;->c:Lr0/c;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lr0/b;->b(Lr0/b;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/e$b;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    move-object v2, v1

    :cond_1
    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lr0/b;->h:Z

    return p0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lr0/b;->a:Lq0/h;

    invoke-interface {v0}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/l$b;->INITIALIZED:Landroidx/lifecycle/l$b;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lr0/b;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lr0/b;->b:Lw8/a;

    invoke-interface {v0}, Lw8/a;->invoke()Ljava/lang/Object;

    iget-object v0, p0, Lr0/b;->a:Lq0/h;

    invoke-interface {v0}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object v0

    new-instance v1, Lr0/a;

    invoke-direct {v1, p0}, Lr0/a;-><init>(Lr0/b;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/r;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr0/b;->e:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SavedStateRegistry was already attached."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 3

    iget-boolean v0, p0, Lr0/b;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr0/b;->f()V

    :cond_0
    iget-object v0, p0, Lr0/b;->a:Lq0/h;

    invoke-interface {v0}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/l$b;->STARTED:Landroidx/lifecycle/l$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l$b;->isAtLeast(Landroidx/lifecycle/l$b;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lr0/b;->g:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lq0/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-static {p1, v1}, Lq0/b;->b(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v1}, Lq0/b;->c(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lr0/b;->f:Landroid/os/Bundle;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr0/b;->g:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SavedStateRegistry was already restored."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "performRestore cannot be called when owner is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lr0/b;->a:Lq0/h;

    invoke-interface {p0}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "outBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

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

    iget-object v2, p0, Lr0/b;->f:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    invoke-static {v1, v2}, Lq0/i;->b(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_2
    iget-object v2, p0, Lr0/b;->c:Lr0/c;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lr0/b;->b(Lr0/b;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq0/e$b;

    invoke-interface {v3}, Lq0/e$b;->saveState()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v4, v3}, Lq0/i;->c(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-static {v0}, Lq0/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lq0/b;->f(Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p1}, Lq0/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-static {p0, p1, v0}, Lq0/i;->c(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    return-void

    :goto_3
    monitor-exit v2

    throw p0
.end method

.method public final j(Ljava/lang/String;Lq0/e$b;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/b;->c:Lr0/c;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lr0/b;->b(Lr0/b;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lr0/b;->b(Lr0/b;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p0, "SavedStateProvider with the given key is already registered"

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method
