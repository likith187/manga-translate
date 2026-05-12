.class public final Lk0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;

.field private final e:Lq0/e$b;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const-string v0, "initialState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lkotlin/collections/j0;->s(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lk0/b;->a:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lk0/b;->b:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lk0/b;->c:Ljava/util/Map;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lk0/b;->d:Ljava/util/Map;

    .line 6
    new-instance p1, Lk0/a;

    invoke-direct {p1, p0}, Lk0/a;-><init>(Lk0/b;)V

    iput-object p1, p0, Lk0/b;->e:Lq0/e$b;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 7
    invoke-static {}, Lkotlin/collections/j0;->h()Ljava/util/Map;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lk0/b;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lk0/b;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0}, Lk0/b;->c(Lk0/b;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Lk0/b;)Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lk0/b;->d:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/j0;->q(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/flow/f;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/f;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lk0/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk0/b;->b:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/j0;->q(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/e$b;

    invoke-interface {v1}, Lq0/e$b;->saveState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lk0/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lk0/b;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-array p0, v1, [Ln8/q;

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-array p0, v1, [Ln8/q;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ln8/q;

    :goto_3
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ln8/q;

    invoke-static {p0}, Lz/c;->a([Ln8/q;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lq0/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public final b()Lq0/e$b;
    .locals 0

    iget-object p0, p0, Lk0/b;->e:Lq0/e$b;

    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lk0/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lk0/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lkotlinx/coroutines/flow/f;->setValue(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lk0/b;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/f;

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Lkotlinx/coroutines/flow/f;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
