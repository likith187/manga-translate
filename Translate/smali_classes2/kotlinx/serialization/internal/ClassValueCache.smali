.class final Lkotlinx/serialization/internal/ClassValueCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/SerializerCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/SerializerCache<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final classValue:Lkotlinx/serialization/internal/ClassValueReferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/ClassValueReferences<",
            "Lkotlinx/serialization/internal/CacheEntry<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final compute:Lw8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/l;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw8/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/l;",
            ")V"
        }
    .end annotation

    const-string v0, "compute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/ClassValueCache;->compute:Lw8/l;

    new-instance p1, Lkotlinx/serialization/internal/ClassValueReferences;

    invoke-direct {p1}, Lkotlinx/serialization/internal/ClassValueReferences;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/ClassValueCache;->classValue:Lkotlinx/serialization/internal/ClassValueReferences;

    return-void
.end method


# virtual methods
.method public get(Lc9/c;)Lkotlinx/serialization/KSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc9/c;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/ClassValueCache;->classValue:Lkotlinx/serialization/internal/ClassValueReferences;

    invoke-static {p1}, Lv8/a;->a(Lc9/c;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/serialization/internal/a;->a(Lkotlinx/serialization/internal/ClassValueReferences;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/serialization/internal/MutableSoftReference;

    iget-object v1, v0, Lkotlinx/serialization/internal/MutableSoftReference;->reference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/serialization/internal/ClassValueCache$get$$inlined$getOrSet$1;

    invoke-direct {v1, p0, p1}, Lkotlinx/serialization/internal/ClassValueCache$get$$inlined$getOrSet$1;-><init>(Lkotlinx/serialization/internal/ClassValueCache;Lc9/c;)V

    invoke-virtual {v0, v1}, Lkotlinx/serialization/internal/MutableSoftReference;->getOrSetWithLock(Lw8/a;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lkotlinx/serialization/internal/CacheEntry;

    iget-object p0, v1, Lkotlinx/serialization/internal/CacheEntry;->serializer:Lkotlinx/serialization/KSerializer;

    return-object p0
.end method

.method public final getCompute()Lw8/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw8/l;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/serialization/internal/ClassValueCache;->compute:Lw8/l;

    return-object p0
.end method

.method public isStored(Lc9/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc9/c;",
            ")Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/ClassValueCache;->classValue:Lkotlinx/serialization/internal/ClassValueReferences;

    invoke-static {p1}, Lv8/a;->a(Lc9/c;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ClassValueReferences;->isStored(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method
