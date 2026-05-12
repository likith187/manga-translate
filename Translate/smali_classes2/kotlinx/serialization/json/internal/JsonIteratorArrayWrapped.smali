.class final Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lx8/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lx8/a;"
    }
.end annotation


# instance fields
.field private final deserializer:Lkotlinx/serialization/DeserializationStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/DeserializationStrategy<",
            "TT;>;"
        }
    .end annotation
.end field

.field private finished:Z

.field private first:Z

.field private final json:Lkotlinx/serialization/json/Json;

.field private final lexer:Lkotlinx/serialization/json/internal/ReaderJsonLexer;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/ReaderJsonLexer;Lkotlinx/serialization/DeserializationStrategy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/Json;",
            "Lkotlinx/serialization/json/internal/ReaderJsonLexer;",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lexer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->json:Lkotlinx/serialization/json/Json;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->lexer:Lkotlinx/serialization/json/internal/ReaderJsonLexer;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->deserializer:Lkotlinx/serialization/DeserializationStrategy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->first:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 8

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->lexer:Lkotlinx/serialization/json/internal/ReaderJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-ne v0, v3, :cond_3

    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->finished:Z

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->lexer:Lkotlinx/serialization/json/internal/ReaderJsonLexer;

    invoke-virtual {v0, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->lexer:Lkotlinx/serialization/json/internal/ReaderJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->isNotEof()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->lexer:Lkotlinx/serialization/json/internal/ReaderJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->lexer:Lkotlinx/serialization/json/internal/ReaderJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->expectEof()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->lexer:Lkotlinx/serialization/json/internal/ReaderJsonLexer;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "There is a start of the new array after the one parsed to sequence. ARRAY_WRAPPED mode doesn\'t merge consecutive arrays.\nIf you need to parse a stream of arrays, please use WHITESPACE_SEPARATED mode instead."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->lexer:Lkotlinx/serialization/json/internal/ReaderJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->isNotEof()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->finished:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->lexer:Lkotlinx/serialization/json/internal/ReaderJsonLexer;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v3, v1, v0, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$kotlinx_serialization_json$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;BZILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    :cond_5
    :goto_1
    return v2
.end method

.method public next()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->first:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->first:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->lexer:Lkotlinx/serialization/json/internal/ReaderJsonLexer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->consumeNextToken(C)V

    :goto_0
    new-instance v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->json:Lkotlinx/serialization/json/Json;

    sget-object v4, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->lexer:Lkotlinx/serialization/json/internal/ReaderJsonLexer;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->deserializer:Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1}, Lkotlinx/serialization/DeserializationStrategy;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;)V

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;->deserializer:Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v0, p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
