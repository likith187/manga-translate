.class public final Lkotlinx/serialization/internal/CachingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final useClassValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "java.lang.ClassValue"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lkotlinx/serialization/internal/CachingKt;->useClassValue:Z

    return-void
.end method

.method public static final createCache(Lw8/l;)Lkotlinx/serialization/internal/SerializerCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw8/l;",
            ")",
            "Lkotlinx/serialization/internal/SerializerCache<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "factory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lkotlinx/serialization/internal/CachingKt;->useClassValue:Z

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/serialization/internal/ClassValueCache;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/ClassValueCache;-><init>(Lw8/l;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/serialization/internal/ConcurrentHashMapCache;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/ConcurrentHashMapCache;-><init>(Lw8/l;)V

    :goto_0
    return-object v0
.end method

.method public static final createParametrizedCache(Lw8/p;)Lkotlinx/serialization/internal/ParametrizedSerializerCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw8/p;",
            ")",
            "Lkotlinx/serialization/internal/ParametrizedSerializerCache<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "factory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lkotlinx/serialization/internal/CachingKt;->useClassValue:Z

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/serialization/internal/ClassValueParametrizedCache;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/ClassValueParametrizedCache;-><init>(Lw8/p;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/serialization/internal/ConcurrentHashMapParametrizedCache;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/ConcurrentHashMapParametrizedCache;-><init>(Lw8/p;)V

    :goto_0
    return-object v0
.end method
