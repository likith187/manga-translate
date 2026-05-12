.class public final Lkotlinx/serialization/internal/NothingSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/NothingSerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/NothingSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/NothingSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/NothingSerializer;->INSTANCE:Lkotlinx/serialization/internal/NothingSerializer;

    sget-object v0, Lkotlinx/serialization/internal/NothingSerialDescriptor;->INSTANCE:Lkotlinx/serialization/internal/NothingSerialDescriptor;

    sput-object v0, Lkotlinx/serialization/internal/NothingSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/NothingSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Void;
    .locals 0

    const-string p0, "decoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "\'kotlin.Nothing\' does not have instances"

    invoke-direct {p0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lkotlinx/serialization/internal/NothingSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/NothingSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Void;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Void;)V
    .locals 0

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "\'kotlin.Nothing\' cannot be serialized"

    invoke-direct {p0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
