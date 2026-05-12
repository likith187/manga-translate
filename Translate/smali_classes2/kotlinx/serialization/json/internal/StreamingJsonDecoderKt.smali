.class public final Lkotlinx/serialization/json/internal/StreamingJsonDecoderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final decodeStringToJsonTree(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/Json;",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/serialization/json/JsonElement;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/json/internal/JsonFriendModuleApi;
    .end annotation

    const-string v0, "json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lkotlinx/serialization/json/internal/StringJsonLexerKt;->StringJsonLexer(Lkotlinx/serialization/json/Json;Ljava/lang/String;)Lkotlinx/serialization/json/internal/StringJsonLexer;

    move-result-object p2

    new-instance v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    sget-object v3, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-interface {p1}, Lkotlinx/serialization/DeserializationStrategy;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;)V

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeJsonElement()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->expectEof()V

    return-object p0
.end method

.method private static final parseString(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;Lw8/l;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/internal/AbstractJsonLexer;",
            "Ljava/lang/String;",
            "Lw8/l;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-interface {p2, v0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse type \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' for input \'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0
.end method
