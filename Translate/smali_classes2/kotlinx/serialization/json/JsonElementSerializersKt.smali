.class public final Lkotlinx/serialization/json/JsonElementSerializersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$defer(Lw8/a;)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementSerializersKt;->defer(Lw8/a;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$verify(Lkotlinx/serialization/encoding/Decoder;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementSerializersKt;->verify(Lkotlinx/serialization/encoding/Decoder;)V

    return-void
.end method

.method public static final synthetic access$verify(Lkotlinx/serialization/encoding/Encoder;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementSerializersKt;->verify(Lkotlinx/serialization/encoding/Encoder;)V

    return-void
.end method

.method public static final asJsonDecoder(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/JsonDecoder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlinx/serialization/json/JsonDecoder;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/JsonDecoder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lc9/c;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final asJsonEncoder(Lkotlinx/serialization/encoding/Encoder;)Lkotlinx/serialization/json/JsonEncoder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlinx/serialization/json/JsonEncoder;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/JsonEncoder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lc9/c;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final defer(Lw8/a;)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/a;",
            ")",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;"
        }
    .end annotation

    new-instance v0, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lw8/a;)V

    return-object v0
.end method

.method private static final verify(Lkotlinx/serialization/encoding/Decoder;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementSerializersKt;->asJsonDecoder(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/JsonDecoder;

    return-void
.end method

.method private static final verify(Lkotlinx/serialization/encoding/Encoder;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementSerializersKt;->asJsonEncoder(Lkotlinx/serialization/encoding/Encoder;)Lkotlinx/serialization/json/JsonEncoder;

    return-void
.end method
