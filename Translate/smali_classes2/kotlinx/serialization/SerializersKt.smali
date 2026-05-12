.class public final Lkotlinx/serialization/SerializersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final moduleThenPolymorphic(Lkotlinx/serialization/modules/SerializersModule;Lc9/c;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lc9/c;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/serialization/SerializersKt__SerializersKt;->moduleThenPolymorphic(Lkotlinx/serialization/modules/SerializersModule;Lc9/c;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final moduleThenPolymorphic(Lkotlinx/serialization/modules/SerializersModule;Lc9/c;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lc9/c;",
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;)",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/SerializersKt__SerializersKt;->moduleThenPolymorphic(Lkotlinx/serialization/modules/SerializersModule;Lc9/c;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final noCompiledSerializer(Ljava/lang/String;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/SerializersKt__SerializersKt;->noCompiledSerializer(Ljava/lang/String;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final noCompiledSerializer(Lkotlinx/serialization/modules/SerializersModule;Lc9/c;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lc9/c;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lkotlinx/serialization/SerializersKt__SerializersKt;->noCompiledSerializer(Lkotlinx/serialization/modules/SerializersModule;Lc9/c;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final noCompiledSerializer(Lkotlinx/serialization/modules/SerializersModule;Lc9/c;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lc9/c;",
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;)",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/SerializersKt__SerializersKt;->noCompiledSerializer(Lkotlinx/serialization/modules/SerializersModule;Lc9/c;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final parametrizedSerializerOrNull(Lc9/c;Ljava/util/List;Lw8/a;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc9/c;",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lw8/a;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/serialization/SerializersKt__SerializersKt;->parametrizedSerializerOrNull(Lc9/c;Ljava/util/List;Lw8/a;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic serializer()Lkotlinx/serialization/KSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x6

    .line 1
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->i(ILjava/lang/String;)V

    const-string v0, "kotlinx.serialization.serializer.simple"

    invoke-static {v0}, Lkotlin/jvm/internal/u;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/serialization/SerializersKt;->serializer(Lc9/j;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static final serializer(Lc9/c;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc9/c;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/InternalSerializationApi;
    .end annotation

    .line 2
    invoke-static {p0}, Lkotlinx/serialization/SerializersKt__SerializersKt;->serializer(Lc9/c;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializer(Lc9/c;Ljava/util/List;Z)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc9/c;",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/KSerializer<",
            "*>;>;Z)",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    .line 3
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/SerializersKt__SerializersKt;->serializer(Lc9/c;Ljava/util/List;Z)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializer(Lc9/j;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc9/j;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Lkotlinx/serialization/SerializersKt__SerializersKt;->serializer(Lc9/j;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializer(Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-static {p0}, Lkotlinx/serialization/SerializersKt__SerializersJvmKt;->serializer(Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic serializer(Lkotlinx/serialization/modules/SerializersModule;)Lkotlinx/serialization/KSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x6

    .line 6
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->i(ILjava/lang/String;)V

    const-string v0, "kotlinx.serialization.serializer.withModule"

    invoke-static {v0}, Lkotlin/jvm/internal/u;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lc9/j;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializer(Lkotlinx/serialization/modules/SerializersModule;Lc9/c;Ljava/util/List;Z)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lc9/c;",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/KSerializer<",
            "*>;>;Z)",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    .line 7
    invoke-static {p0, p1, p2, p3}, Lkotlinx/serialization/SerializersKt__SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lc9/c;Ljava/util/List;Z)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializer(Lkotlinx/serialization/modules/SerializersModule;Lc9/j;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lc9/j;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-static {p0, p1}, Lkotlinx/serialization/SerializersKt__SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lc9/j;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializer(Lkotlinx/serialization/modules/SerializersModule;Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 9
    invoke-static {p0, p1}, Lkotlinx/serialization/SerializersKt__SerializersJvmKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializerOrNull(Lc9/c;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc9/c;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/InternalSerializationApi;
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/SerializersKt__SerializersKt;->serializerOrNull(Lc9/c;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializerOrNull(Lc9/j;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc9/j;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lkotlinx/serialization/SerializersKt__SerializersKt;->serializerOrNull(Lc9/j;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializerOrNull(Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p0}, Lkotlinx/serialization/SerializersKt__SerializersJvmKt;->serializerOrNull(Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializerOrNull(Lkotlinx/serialization/modules/SerializersModule;Lc9/j;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lc9/j;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-static {p0, p1}, Lkotlinx/serialization/SerializersKt__SerializersKt;->serializerOrNull(Lkotlinx/serialization/modules/SerializersModule;Lc9/j;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializerOrNull(Lkotlinx/serialization/modules/SerializersModule;Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-static {p0, p1}, Lkotlinx/serialization/SerializersKt__SerializersJvmKt;->serializerOrNull(Lkotlinx/serialization/modules/SerializersModule;Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializersForParameters(Lkotlinx/serialization/modules/SerializersModule;Ljava/util/List;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Ljava/util/List<",
            "+",
            "Lc9/j;",
            ">;Z)",
            "Ljava/util/List<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/serialization/SerializersKt__SerializersKt;->serializersForParameters(Lkotlinx/serialization/modules/SerializersModule;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
