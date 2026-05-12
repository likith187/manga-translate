.class public final Lkotlinx/serialization/modules/PolymorphicModuleBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Base:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final baseClass:Lc9/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc9/c;"
        }
    .end annotation
.end field

.field private final baseSerializer:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TBase;>;"
        }
    .end annotation
.end field

.field private defaultDeserializerProvider:Lw8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/l;"
        }
    .end annotation
.end field

.field private defaultSerializerProvider:Lw8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/l;"
        }
    .end annotation
.end field

.field private final subclasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln8/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc9/c;Lkotlinx/serialization/KSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc9/c;",
            "Lkotlinx/serialization/KSerializer<",
            "TBase;>;)V"
        }
    .end annotation

    const-string v0, "baseClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/serialization/modules/PolymorphicModuleBuilder;->baseClass:Lc9/c;

    .line 3
    iput-object p2, p0, Lkotlinx/serialization/modules/PolymorphicModuleBuilder;->baseSerializer:Lkotlinx/serialization/KSerializer;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/modules/PolymorphicModuleBuilder;->subclasses:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lc9/c;Lkotlinx/serialization/KSerializer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/modules/PolymorphicModuleBuilder;-><init>(Lc9/c;Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public final buildTo(Lkotlinx/serialization/modules/SerializersModuleBuilder;)V
    .locals 10

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lkotlinx/serialization/modules/PolymorphicModuleBuilder;->baseSerializer:Lkotlinx/serialization/KSerializer;

    if-eqz v4, :cond_0

    iget-object v3, p0, Lkotlinx/serialization/modules/PolymorphicModuleBuilder;->baseClass:Lc9/c;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, v3

    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->registerPolymorphicSerializer$default(Lkotlinx/serialization/modules/SerializersModuleBuilder;Lc9/c;Lc9/c;Lkotlinx/serialization/KSerializer;ZILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/modules/PolymorphicModuleBuilder;->subclasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln8/q;

    invoke-virtual {v1}, Ln8/q;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lc9/c;

    invoke-virtual {v1}, Ln8/q;->component2()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lkotlinx/serialization/KSerializer;

    iget-object v4, p0, Lkotlinx/serialization/modules/PolymorphicModuleBuilder;->baseClass:Lc9/c;

    const-string v1, "null cannot be cast to non-null type kotlin.reflect.KClass<Base of kotlinx.serialization.modules.PolymorphicModuleBuilder>"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->registerPolymorphicSerializer$default(Lkotlinx/serialization/modules/SerializersModuleBuilder;Lc9/c;Lc9/c;Lkotlinx/serialization/KSerializer;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkotlinx/serialization/modules/PolymorphicModuleBuilder;->defaultSerializerProvider:Lw8/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lkotlinx/serialization/modules/PolymorphicModuleBuilder;->baseClass:Lc9/c;

    invoke-virtual {p1, v2, v0, v1}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->registerDefaultPolymorphicSerializer(Lc9/c;Lw8/l;Z)V

    :cond_2
    iget-object v0, p0, Lkotlinx/serialization/modules/PolymorphicModuleBuilder;->defaultDeserializerProvider:Lw8/l;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lkotlinx/serialization/modules/PolymorphicModuleBuilder;->baseClass:Lc9/c;

    invoke-virtual {p1, p0, v0, v1}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->registerDefaultPolymorphicDeserializer(Lc9/c;Lw8/l;Z)V

    :cond_3
    return-void
.end method

.method public final default(Lw8/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/l;",
            ")V"
        }
    .end annotation

    const-string v0, "defaultSerializerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/modules/PolymorphicModuleBuilder;->defaultDeserializer(Lw8/l;)V

    return-void
.end method

.method public final defaultDeserializer(Lw8/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/l;",
            ")V"
        }
    .end annotation

    const-string v0, "defaultDeserializerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/modules/PolymorphicModuleBuilder;->defaultDeserializerProvider:Lw8/l;

    if-nez v0, :cond_0

    iput-object p1, p0, Lkotlinx/serialization/modules/PolymorphicModuleBuilder;->defaultDeserializerProvider:Lw8/l;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Default deserializer provider is already registered for class "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lkotlinx/serialization/modules/PolymorphicModuleBuilder;->baseClass:Lc9/c;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/serialization/modules/PolymorphicModuleBuilder;->defaultDeserializerProvider:Lw8/l;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final subclass(Lc9/c;Lkotlinx/serialization/KSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::TBase;>(",
            "Lc9/c;",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "subclass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/modules/PolymorphicModuleBuilder;->subclasses:Ljava/util/List;

    invoke-static {p1, p2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
