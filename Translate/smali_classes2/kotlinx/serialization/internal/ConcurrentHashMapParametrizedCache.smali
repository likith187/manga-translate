.class final Lkotlinx/serialization/internal/ConcurrentHashMapParametrizedCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/ParametrizedSerializerCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/ParametrizedSerializerCache<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lkotlinx/serialization/internal/ParametrizedCacheEntry<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final compute:Lw8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/p;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw8/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/p;",
            ")V"
        }
    .end annotation

    const-string v0, "compute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/ConcurrentHashMapParametrizedCache;->compute:Lw8/p;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/ConcurrentHashMapParametrizedCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public get-gIAlu-s(Lc9/c;Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc9/c;",
            "Ljava/util/List<",
            "+",
            "Lc9/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/ConcurrentHashMapParametrizedCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lv8/a;->a(Lc9/c;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lkotlinx/serialization/internal/ParametrizedCacheEntry;

    invoke-direct {v2}, Lkotlinx/serialization/internal/ParametrizedCacheEntry;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :cond_1
    :goto_0
    check-cast v2, Lkotlinx/serialization/internal/ParametrizedCacheEntry;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc9/j;

    new-instance v4, Lkotlinx/serialization/internal/KTypeWrapper;

    invoke-direct {v4, v3}, Lkotlinx/serialization/internal/KTypeWrapper;-><init>(Lc9/j;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lkotlinx/serialization/internal/ParametrizedCacheEntry;->access$getSerializers$p(Lkotlinx/serialization/internal/ParametrizedCacheEntry;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lkotlinx/serialization/internal/ConcurrentHashMapParametrizedCache;->compute:Lw8/p;

    invoke-interface {p0, p1, p2}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/KSerializer;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->box-impl(Ljava/lang/Object;)Ln8/r;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    move-object v2, p0

    goto :goto_3

    :cond_3
    move-object v2, p1

    :cond_4
    :goto_3
    const-string p0, "getOrPut(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ln8/r;

    invoke-virtual {v2}, Ln8/r;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
