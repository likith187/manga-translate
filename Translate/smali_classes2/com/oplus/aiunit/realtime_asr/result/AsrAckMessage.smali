.class public final Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$$serializer;,
        Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion;


# instance fields
.field private ciphertext:Ljava/lang/String;

.field private code:I

.field private data:Lcom/oplus/aiunit/realtime_asr/result/AudioText;

.field private final message:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->Companion:Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/AudioText;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p6, :cond_0

    sget-object p6, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$$serializer;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$$serializer;

    invoke-virtual {p6}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->code:I

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    const-string p2, ""

    iput-object p2, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->message:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->message:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    const/4 p3, 0x0

    if-nez p2, :cond_2

    iput-object p3, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->ciphertext:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p4, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->ciphertext:Ljava/lang/String;

    :goto_1
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    iput-object p3, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->data:Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    goto :goto_2

    :cond_3
    iput-object p5, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->data:Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    :goto_2
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/AudioText;)V
    .locals 1

    .line 2
    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->code:I

    iput-object p2, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->ciphertext:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->data:Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/AudioText;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 3
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const-string p2, ""

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/AudioText;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;ILjava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/AudioText;ILjava/lang/Object;)Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->code:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->message:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->ciphertext:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->data:Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->copy(ILjava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/AudioText;)Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$aiunit_sdk_realtime_asr_release(Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    iget v0, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->code:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->message:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->message:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->ciphertext:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->ciphertext:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->data:Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lcom/oplus/aiunit/realtime_asr/result/AudioText$$serializer;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/AudioText$$serializer;

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->data:Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->code:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->ciphertext:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Lcom/oplus/aiunit/realtime_asr/result/AudioText;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->data:Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/AudioText;)Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;
    .locals 0

    const-string p0, "message"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/AudioText;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;

    iget v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->code:I

    iget v3, p1, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->code:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->ciphertext:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->ciphertext:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->data:Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    iget-object p1, p1, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->data:Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCiphertext()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->ciphertext:Ljava/lang/String;

    return-object p0
.end method

.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->code:I

    return p0
.end method

.method public final getData()Lcom/oplus/aiunit/realtime_asr/result/AudioText;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->data:Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->message:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->ciphertext:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->data:Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final setCiphertext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->ciphertext:Ljava/lang/String;

    return-void
.end method

.method public final setCode(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->code:I

    return-void
.end method

.method public final setData(Lcom/oplus/aiunit/realtime_asr/result/AudioText;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->data:Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->code:I

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->ciphertext:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->data:Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsrAckMessage(code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", message="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ciphertext="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", data="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
