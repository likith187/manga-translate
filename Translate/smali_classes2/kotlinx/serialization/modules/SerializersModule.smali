.class public abstract Lkotlinx/serialization/modules/SerializersModule;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/modules/SerializersModule;-><init>()V

    return-void
.end method

.method public static synthetic getContextual$default(Lkotlinx/serialization/modules/SerializersModule;Lc9/c;Ljava/util/List;ILjava/lang/Object;)Lkotlinx/serialization/KSerializer;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/modules/SerializersModule;->getContextual(Lc9/c;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getContextual"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getHasInterfaceContextualSerializers$kotlinx_serialization_core$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/InternalSerializationApi;
    .end annotation

    return-void
.end method


# virtual methods
.method public abstract dumpTo(Lkotlinx/serialization/modules/SerializersModuleCollector;)V
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation
.end method

.method public final synthetic getContextual(Lc9/c;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    const-string v0, "kclass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/modules/SerializersModule;->getContextual(Lc9/c;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public abstract getContextual(Lc9/c;Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc9/c;",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/KSerializer<",
            "*>;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation
.end method

.method public abstract getHasInterfaceContextualSerializers$kotlinx_serialization_core()Z
.end method

.method public abstract getPolymorphic(Lc9/c;Ljava/lang/String;)Lkotlinx/serialization/DeserializationStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc9/c;",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation
.end method

.method public abstract getPolymorphic(Lc9/c;Ljava/lang/Object;)Lkotlinx/serialization/SerializationStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc9/c;",
            "TT;)",
            "Lkotlinx/serialization/SerializationStrategy<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation
.end method
