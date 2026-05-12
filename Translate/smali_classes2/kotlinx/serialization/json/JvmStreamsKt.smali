.class public final Lkotlinx/serialization/json/JvmStreamsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic decodeFromStream(Lkotlinx/serialization/json/Json;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/Json;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

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

    invoke-static {p0, v0, p1}, Lkotlinx/serialization/json/JvmStreamsKt;->decodeFromStream(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/DeserializationStrategy;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final decodeFromStream(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/DeserializationStrategy;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/Json;",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "+TT;>;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stream"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlinx/serialization/json/internal/JavaStreamSerialReader;

    invoke-direct {v0, p2}, Lkotlinx/serialization/json/internal/JavaStreamSerialReader;-><init>(Ljava/io/InputStream;)V

    .line 2
    :try_start_0
    invoke-static {p0, p1, v0}, Lkotlinx/serialization/json/internal/JsonStreamsKt;->decodeByReader(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/internal/InternalJsonReader;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JavaStreamSerialReader;->release()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JavaStreamSerialReader;->release()V

    throw p0
.end method

.method public static final decodeToSequence(Lkotlinx/serialization/json/Json;Ljava/io/InputStream;Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/DecodeSequenceMode;)Lkotlin/sequences/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/Json;",
            "Ljava/io/InputStream;",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "+TT;>;",
            "Lkotlinx/serialization/json/DecodeSequenceMode;",
            ")",
            "Lkotlin/sequences/f;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlinx/serialization/json/internal/JavaStreamSerialReader;

    invoke-direct {v0, p1}, Lkotlinx/serialization/json/internal/JavaStreamSerialReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, v0, p2, p3}, Lkotlinx/serialization/json/internal/JsonStreamsKt;->decodeToSequenceByReader(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/InternalJsonReader;Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/DecodeSequenceMode;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic decodeToSequence(Lkotlinx/serialization/json/Json;Ljava/io/InputStream;Lkotlinx/serialization/json/DecodeSequenceMode;)Lkotlin/sequences/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/Json;",
            "Ljava/io/InputStream;",
            "Lkotlinx/serialization/json/DecodeSequenceMode;",
            ")",
            "Lkotlin/sequences/f;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
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

    invoke-static {p0, p1, v0, p2}, Lkotlinx/serialization/json/JvmStreamsKt;->decodeToSequence(Lkotlinx/serialization/json/Json;Ljava/io/InputStream;Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/DecodeSequenceMode;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic decodeToSequence$default(Lkotlinx/serialization/json/Json;Ljava/io/InputStream;Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/DecodeSequenceMode;ILjava/lang/Object;)Lkotlin/sequences/f;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 1
    sget-object p3, Lkotlinx/serialization/json/DecodeSequenceMode;->AUTO_DETECT:Lkotlinx/serialization/json/DecodeSequenceMode;

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlinx/serialization/json/JvmStreamsKt;->decodeToSequence(Lkotlinx/serialization/json/Json;Ljava/io/InputStream;Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/DecodeSequenceMode;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic decodeToSequence$default(Lkotlinx/serialization/json/Json;Ljava/io/InputStream;Lkotlinx/serialization/json/DecodeSequenceMode;ILjava/lang/Object;)Lkotlin/sequences/f;
    .locals 1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 3
    sget-object p2, Lkotlinx/serialization/json/DecodeSequenceMode;->AUTO_DETECT:Lkotlinx/serialization/json/DecodeSequenceMode;

    .line 4
    :cond_0
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "stream"

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

    invoke-static {p0, p1, p3, p2}, Lkotlinx/serialization/json/JvmStreamsKt;->decodeToSequence(Lkotlinx/serialization/json/Json;Ljava/io/InputStream;Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/DecodeSequenceMode;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic encodeToStream(Lkotlinx/serialization/json/Json;Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/Json;",
            "TT;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stream"

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

    invoke-static {p0, v0, p1, p2}, Lkotlinx/serialization/json/JvmStreamsKt;->encodeToStream(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static final encodeToStream(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/Json;",
            "Lkotlinx/serialization/SerializationStrategy<",
            "-TT;>;TT;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stream"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;

    invoke-direct {v0, p3}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2
    :try_start_0
    invoke-static {p0, v0, p1, p2}, Lkotlinx/serialization/json/internal/JsonStreamsKt;->encodeByWriter(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/InternalJsonWriter;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->release()V

    throw p0
.end method
