.class public final Lkotlinx/serialization/internal/UShortSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Ln8/e0;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/UShortSerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/UShortSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/UShortSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/UShortSerializer;->INSTANCE:Lkotlinx/serialization/internal/UShortSerializer;

    sget-object v0, Lkotlin/jvm/internal/f0;->INSTANCE:Lkotlin/jvm/internal/f0;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/f0;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const-string v1, "kotlin.UShort"

    invoke-static {v1, v0}, Lkotlinx/serialization/internal/InlineClassDescriptorKt;->InlinePrimitiveDescriptor(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/internal/UShortSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/UShortSerializer;->deserialize-BwKQO78(Lkotlinx/serialization/encoding/Decoder;)S

    move-result p0

    invoke-static {p0}, Ln8/e0;->a(S)Ln8/e0;

    move-result-object p0

    return-object p0
.end method

.method public deserialize-BwKQO78(Lkotlinx/serialization/encoding/Decoder;)S
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/UShortSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/encoding/Decoder;->decodeShort()S

    move-result p0

    invoke-static {p0}, Ln8/e0;->b(S)S

    move-result p0

    return p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lkotlinx/serialization/internal/UShortSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ln8/e0;

    invoke-virtual {p2}, Ln8/e0;->f()S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/UShortSerializer;->serialize-i8woANY(Lkotlinx/serialization/encoding/Encoder;S)V

    return-void
.end method

.method public serialize-i8woANY(Lkotlinx/serialization/encoding/Encoder;S)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/UShortSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->encodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    move-result-object p0

    invoke-interface {p0, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeShort(S)V

    return-void
.end method
