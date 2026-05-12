.class public final Lkotlinx/serialization/internal/DurationSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Ld9/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/DurationSerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/serialization/internal/DurationSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/DurationSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/DurationSerializer;->INSTANCE:Lkotlinx/serialization/internal/DurationSerializer;

    new-instance v0, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    const-string v1, "kotlin.time.Duration"

    sget-object v2, Lkotlinx/serialization/descriptors/PrimitiveKind$STRING;->INSTANCE:Lkotlinx/serialization/descriptors/PrimitiveKind$STRING;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/PrimitiveKind;)V

    sput-object v0, Lkotlinx/serialization/internal/DurationSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/DurationSerializer;->deserialize-5sfh64U(Lkotlinx/serialization/encoding/Decoder;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ld9/a;->e(J)Ld9/a;

    move-result-object p0

    return-object p0
.end method

.method public deserialize-5sfh64U(Lkotlinx/serialization/encoding/Decoder;)J
    .locals 0

    const-string p0, "decoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ld9/a;->b:Ld9/a$a;

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->decodeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld9/a$a;->c(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lkotlinx/serialization/internal/DurationSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Ld9/a;

    invoke-virtual {p2}, Ld9/a;->F()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lkotlinx/serialization/internal/DurationSerializer;->serialize-HG0u8IE(Lkotlinx/serialization/encoding/Encoder;J)V

    return-void
.end method

.method public serialize-HG0u8IE(Lkotlinx/serialization/encoding/Encoder;J)V
    .locals 0

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ld9/a;->B(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->encodeString(Ljava/lang/String;)V

    return-void
.end method
