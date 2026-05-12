.class public final Lkotlinx/serialization/json/JsonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final defaultDiscriminator:Ljava/lang/String; = "type"

.field private static final defaultIndent:Ljava/lang/String; = "    "


# direct methods
.method public static final Json(Lkotlinx/serialization/json/Json;Lw8/l;)Lkotlinx/serialization/json/Json;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/Json;",
            "Lw8/l;",
            ")",
            "Lkotlinx/serialization/json/Json;"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/JsonBuilder;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonBuilder;-><init>(Lkotlinx/serialization/json/Json;)V

    invoke-interface {p1, v0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonBuilder;->build$kotlinx_serialization_json()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object p0

    new-instance p1, Lkotlinx/serialization/json/JsonImpl;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonBuilder;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lkotlinx/serialization/json/JsonImpl;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/SerializersModule;)V

    return-object p1
.end method

.method public static synthetic Json$default(Lkotlinx/serialization/json/Json;Lw8/l;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/serialization/json/JsonKt;->Json(Lkotlinx/serialization/json/Json;Lw8/l;)Lkotlinx/serialization/json/Json;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic decodeFromJsonElement(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/Json;",
            "Lkotlinx/serialization/json/JsonElement;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->i(ILjava/lang/String;)V

    const-string v1, "kotlinx.serialization.serializer.withModule"

    invoke-static {v1}, Lkotlin/jvm/internal/u;->a(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lc9/j;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic encodeToJsonElement(Lkotlinx/serialization/json/Json;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/Json;",
            "TT;)",
            "Lkotlinx/serialization/json/JsonElement;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->i(ILjava/lang/String;)V

    const-string v1, "kotlinx.serialization.serializer.withModule"

    invoke-static {v1}, Lkotlin/jvm/internal/u;->a(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lc9/j;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    return-object p0
.end method
