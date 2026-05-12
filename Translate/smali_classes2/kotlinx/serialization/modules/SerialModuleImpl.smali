.class public final Lkotlinx/serialization/modules/SerialModuleImpl;
.super Lkotlinx/serialization/modules/SerializersModule;
.source "SourceFile"


# instance fields
.field private final class2ContextualFactory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc9/c;",
            "Lkotlinx/serialization/modules/ContextualProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final hasInterfaceContextualSerializers:Z

.field private final polyBase2DefaultDeserializerProvider:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc9/c;",
            "Lw8/l;",
            ">;"
        }
    .end annotation
.end field

.field private final polyBase2DefaultSerializerProvider:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc9/c;",
            "Lw8/l;",
            ">;"
        }
    .end annotation
.end field

.field private final polyBase2NamedSerializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc9/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/KSerializer<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public final polyBase2Serializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc9/c;",
            "Ljava/util/Map<",
            "Lc9/c;",
            "Lkotlinx/serialization/KSerializer<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lc9/c;",
            "+",
            "Lkotlinx/serialization/modules/ContextualProvider;",
            ">;",
            "Ljava/util/Map<",
            "Lc9/c;",
            "+",
            "Ljava/util/Map<",
            "Lc9/c;",
            "+",
            "Lkotlinx/serialization/KSerializer<",
            "*>;>;>;",
            "Ljava/util/Map<",
            "Lc9/c;",
            "+",
            "Lw8/l;",
            ">;",
            "Ljava/util/Map<",
            "Lc9/c;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/serialization/KSerializer<",
            "*>;>;>;",
            "Ljava/util/Map<",
            "Lc9/c;",
            "+",
            "Lw8/l;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "class2ContextualFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "polyBase2Serializers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "polyBase2DefaultSerializerProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "polyBase2NamedSerializers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "polyBase2DefaultDeserializerProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/serialization/modules/SerializersModule;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->class2ContextualFactory:Ljava/util/Map;

    iput-object p2, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2Serializers:Ljava/util/Map;

    iput-object p3, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2DefaultSerializerProvider:Ljava/util/Map;

    iput-object p4, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2NamedSerializers:Ljava/util/Map;

    iput-object p5, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2DefaultDeserializerProvider:Ljava/util/Map;

    iput-boolean p6, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->hasInterfaceContextualSerializers:Z

    return-void
.end method


# virtual methods
.method public dumpTo(Lkotlinx/serialization/modules/SerializersModuleCollector;)V
    .locals 7

    const-string v0, "collector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->class2ContextualFactory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc9/c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/modules/ContextualProvider;

    instance-of v4, v1, Lkotlinx/serialization/modules/ContextualProvider$Argless;

    if-eqz v4, :cond_0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlinx/serialization/modules/ContextualProvider$Argless;

    invoke-virtual {v1}, Lkotlinx/serialization/modules/ContextualProvider$Argless;->getSerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3, v1}, Lkotlinx/serialization/modules/SerializersModuleCollector;->contextual(Lc9/c;Lkotlinx/serialization/KSerializer;)V

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lkotlinx/serialization/modules/ContextualProvider$WithTypeArguments;

    if-eqz v2, :cond_1

    check-cast v1, Lkotlinx/serialization/modules/ContextualProvider$WithTypeArguments;

    invoke-virtual {v1}, Lkotlinx/serialization/modules/ContextualProvider$WithTypeArguments;->getProvider()Lw8/l;

    move-result-object v1

    invoke-interface {p1, v3, v1}, Lkotlinx/serialization/modules/SerializersModuleCollector;->contextual(Lc9/c;Lw8/l;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ln8/o;

    invoke-direct {p0}, Ln8/o;-><init>()V

    throw p0

    :cond_2
    iget-object v0, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2Serializers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc9/c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc9/c;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3, v5, v4}, Lkotlinx/serialization/modules/SerializersModuleCollector;->polymorphic(Lc9/c;Lc9/c;Lkotlinx/serialization/KSerializer;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2DefaultSerializerProvider:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc9/c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw8/l;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = \"value\")] kotlin.Any, kotlinx.serialization.SerializationStrategy<kotlin.Any>?>"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i0;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw8/l;

    invoke-interface {p1, v4, v1}, Lkotlinx/serialization/modules/SerializersModuleCollector;->polymorphicDefaultSerializer(Lc9/c;Lw8/l;)V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2DefaultDeserializerProvider:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc9/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw8/l;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = \"className\")] kotlin.String?, kotlinx.serialization.DeserializationStrategy<kotlin.Any>?>"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/i0;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw8/l;

    invoke-interface {p1, v1, v0}, Lkotlinx/serialization/modules/SerializersModuleCollector;->polymorphicDefaultDeserializer(Lc9/c;Lw8/l;)V

    goto :goto_3

    :cond_6
    return-void
.end method

.method public getContextual(Lc9/c;Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 1
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

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeArgumentsSerializers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->class2ContextualFactory:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/modules/ContextualProvider;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lkotlinx/serialization/modules/ContextualProvider;->invoke(Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_1

    move-object p1, p0

    :cond_1
    return-object p1
.end method

.method public getHasInterfaceContextualSerializers$kotlinx_serialization_core()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->hasInterfaceContextualSerializers:Z

    return p0
.end method

.method public getPolymorphic(Lc9/c;Ljava/lang/String;)Lkotlinx/serialization/DeserializationStrategy;
    .locals 2
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

    const-string v0, "baseClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2NamedSerializers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    iget-object p0, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2DefaultDeserializerProvider:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i0;->i(Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_3

    check-cast p0, Lw8/l;

    goto :goto_2

    :cond_3
    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_4

    invoke-interface {p0, p2}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    :cond_4
    return-object v1
.end method

.method public getPolymorphic(Lc9/c;Ljava/lang/Object;)Lkotlinx/serialization/SerializationStrategy;
    .locals 3
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

    const-string v0, "baseClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p2}, Lc9/c;->b(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2Serializers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lc9/c;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    return-object v0

    .line 3
    :cond_3
    iget-object p0, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2DefaultSerializerProvider:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i0;->i(Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_4

    check-cast p0, Lw8/l;

    goto :goto_2

    :cond_4
    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_5

    invoke-interface {p0, p2}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    :cond_5
    return-object v1
.end method
