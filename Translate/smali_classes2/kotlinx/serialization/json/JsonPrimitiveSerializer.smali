.class public final Lkotlinx/serialization/json/JsonPrimitiveSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lkotlinx/serialization/json/JsonPrimitive;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonPrimitiveSerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonPrimitiveSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonPrimitiveSerializer;

    sget-object v2, Lkotlinx/serialization/descriptors/PrimitiveKind$STRING;->INSTANCE:Lkotlinx/serialization/descriptors/PrimitiveKind$STRING;

    const/4 v0, 0x0

    new-array v3, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "kotlinx.serialization.json.JsonPrimitive"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->buildSerialDescriptor$default(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lw8/l;ILjava/lang/Object;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    return-object p0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 1

    const-string p0, "decoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementSerializersKt;->asJsonDecoder(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/JsonDecoder;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/json/JsonDecoder;->decodeJsonElement()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    .line 3
    instance-of p1, p0, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz p1, :cond_0

    .line 4
    check-cast p0, Lkotlinx/serialization/json/JsonPrimitive;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected JSON element, expected JsonPrimitive, had "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lc9/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0, p1, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lkotlinx/serialization/json/JsonPrimitive;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lkotlinx/serialization/json/JsonPrimitive;)V
    .locals 0

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementSerializersKt;->access$verify(Lkotlinx/serialization/encoding/Encoder;)V

    .line 3
    instance-of p0, p2, Lkotlinx/serialization/json/JsonNull;

    if-eqz p0, :cond_0

    .line 4
    sget-object p0, Lkotlinx/serialization/json/JsonNullSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonNullSerializer;

    sget-object p2, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeSerializableValue(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p0, Lkotlinx/serialization/json/JsonLiteralSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonLiteralSerializer;

    check-cast p2, Lkotlinx/serialization/json/JsonLiteral;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeSerializableValue(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
