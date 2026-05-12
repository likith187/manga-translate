.class public final Lkotlinx/serialization/json/internal/JsonStreamsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HIGH_SURROGATE_HEADER:I = 0xd7c0

.field private static final LOW_SURROGATE_HEADER:I = 0xdc00

.field private static final SINGLE_CHAR_MAX_CODEPOINT:I = 0xffff


# direct methods
.method public static final decodeByReader(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/internal/InternalJsonReader;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/Json;",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "+TT;>;",
            "Lkotlinx/serialization/json/internal/InternalJsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/json/internal/JsonFriendModuleApi;
    .end annotation

    const-string v0, "json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p2, v0, v1, v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerKt;->ReaderJsonLexer$default(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/InternalJsonReader;[CILjava/lang/Object;)Lkotlinx/serialization/json/internal/ReaderJsonLexer;

    move-result-object p2

    :try_start_0
    new-instance v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    sget-object v4, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-interface {p1}, Lkotlinx/serialization/DeserializationStrategy;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;)V

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->expectEof()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->release()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->release()V

    throw p0
.end method

.method public static final decodeToSequenceByReader(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/InternalJsonReader;Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/DecodeSequenceMode;)Lkotlin/sequences/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/Json;",
            "Lkotlinx/serialization/json/internal/InternalJsonReader;",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "+TT;>;",
            "Lkotlinx/serialization/json/DecodeSequenceMode;",
            ")",
            "Lkotlin/sequences/f;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    .annotation runtime Lkotlinx/serialization/json/internal/JsonFriendModuleApi;
    .end annotation

    const-string v0, "json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x4000

    .line 1
    new-array v0, v0, [C

    invoke-static {p0, p1, v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerKt;->ReaderJsonLexer(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/InternalJsonReader;[C)Lkotlinx/serialization/json/internal/ReaderJsonLexer;

    move-result-object p1

    .line 2
    invoke-static {p3, p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonIteratorKt;->JsonIterator(Lkotlinx/serialization/json/DecodeSequenceMode;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/ReaderJsonLexer;Lkotlinx/serialization/DeserializationStrategy;)Ljava/util/Iterator;

    move-result-object p0

    .line 3
    new-instance p1, Lkotlinx/serialization/json/internal/JsonStreamsKt$decodeToSequenceByReader$$inlined$Sequence$1;

    invoke-direct {p1, p0}, Lkotlinx/serialization/json/internal/JsonStreamsKt$decodeToSequenceByReader$$inlined$Sequence$1;-><init>(Ljava/util/Iterator;)V

    invoke-static {p1}, Lkotlin/sequences/i;->d(Lkotlin/sequences/f;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic decodeToSequenceByReader(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/InternalJsonReader;Lkotlinx/serialization/json/DecodeSequenceMode;)Lkotlin/sequences/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/Json;",
            "Lkotlinx/serialization/json/internal/InternalJsonReader;",
            "Lkotlinx/serialization/json/DecodeSequenceMode;",
            ")",
            "Lkotlin/sequences/f;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    .annotation runtime Lkotlinx/serialization/json/internal/JsonFriendModuleApi;
    .end annotation

    const-string v0, "json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
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

    invoke-static {p0, p1, v0, p2}, Lkotlinx/serialization/json/internal/JsonStreamsKt;->decodeToSequenceByReader(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/InternalJsonReader;Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/DecodeSequenceMode;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic decodeToSequenceByReader$default(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/InternalJsonReader;Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/DecodeSequenceMode;ILjava/lang/Object;)Lkotlin/sequences/f;
    .locals 0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    .line 1
    sget-object p3, Lkotlinx/serialization/json/DecodeSequenceMode;->AUTO_DETECT:Lkotlinx/serialization/json/DecodeSequenceMode;

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/JsonStreamsKt;->decodeToSequenceByReader(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/InternalJsonReader;Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/DecodeSequenceMode;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic decodeToSequenceByReader$default(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/InternalJsonReader;Lkotlinx/serialization/json/DecodeSequenceMode;ILjava/lang/Object;)Lkotlin/sequences/f;
    .locals 1

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 3
    sget-object p2, Lkotlinx/serialization/json/DecodeSequenceMode;->AUTO_DETECT:Lkotlinx/serialization/json/DecodeSequenceMode;

    .line 4
    :cond_0
    const-string p3, "json"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "reader"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "format"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object p3

    const/4 p4, 0x6

    const-string v0, "T"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->i(ILjava/lang/String;)V

    const-string p4, "kotlinx.serialization.serializer.withModule"

    invoke-static {p4}, Lkotlin/jvm/internal/u;->a(Ljava/lang/Object;)V

    const/4 p4, 0x0

    invoke-static {p3, p4}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lc9/j;)Lkotlinx/serialization/KSerializer;

    move-result-object p3

    invoke-static {p0, p1, p3, p2}, Lkotlinx/serialization/json/internal/JsonStreamsKt;->decodeToSequenceByReader(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/InternalJsonReader;Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/DecodeSequenceMode;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static final encodeByWriter(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/InternalJsonWriter;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/Json;",
            "Lkotlinx/serialization/json/internal/InternalJsonWriter;",
            "Lkotlinx/serialization/SerializationStrategy<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/json/internal/JsonFriendModuleApi;
    .end annotation

    const-string v0, "json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-static {}, Lkotlinx/serialization/json/internal/WriteMode;->getEntries()Lr8/a;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lkotlinx/serialization/json/JsonEncoder;

    invoke-direct {v0, p1, p0, v1, v2}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;-><init>(Lkotlinx/serialization/json/internal/InternalJsonWriter;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V

    invoke-virtual {v0, p2, p3}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeSerializableValue(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method
