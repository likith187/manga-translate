.class public final Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/realtime_asr/result/WordPosDto$$serializer;,
        Lcom/oplus/aiunit/realtime_asr/result/WordPosDto$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/oplus/aiunit/realtime_asr/result/WordPosDto$Companion;


# instance fields
.field private final end:I

.field private final labels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final start:I

.field private final text:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->Companion:Lcom/oplus/aiunit/realtime_asr/result/WordPosDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    sget-object v3, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo$$serializer;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/LabelInfo$$serializer;

    invoke-direct {v0, v2, v3}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x4

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v1, 0x3

    aput-object v0, v2, v1

    sput-object v2, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;IILjava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p6, :cond_0

    sget-object p6, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto$$serializer;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/WordPosDto$$serializer;

    invoke-virtual {p6}, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->text:Ljava/lang/String;

    iput p3, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->start:I

    iput p4, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->end:I

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->labels:Ljava/util/Map;

    goto :goto_0

    :cond_1
    iput-object p5, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->labels:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->text:Ljava/lang/String;

    iput p2, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->start:I

    iput p3, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->end:I

    iput-object p4, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->labels:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 3
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;-><init>(Ljava/lang/String;IILjava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;Ljava/lang/String;IILjava/util/Map;ILjava/lang/Object;)Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->text:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->start:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->end:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->labels:Ljava/util/Map;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->copy(Ljava/lang/String;IILjava/util/Map;)Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$aiunit_sdk_realtime_asr_release(Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->text:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget v1, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->start:I

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget v1, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->end:I

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->labels:Ljava/util/Map;

    if-eqz v2, :cond_1

    :goto_0
    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->labels:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->text:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->start:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->end:I

    return p0
.end method

.method public final component4()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->labels:Ljava/util/Map;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;IILjava/util/Map;)Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;",
            ">;)",
            "Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;"
        }
    .end annotation

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;-><init>(Ljava/lang/String;IILjava/util/Map;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->start:I

    iget v3, p1, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->start:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->end:I

    iget v3, p1, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->end:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->labels:Ljava/util/Map;

    iget-object p1, p1, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->labels:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getEnd()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->end:I

    return p0
.end method

.method public final getLabels()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->labels:Ljava/util/Map;

    return-object p0
.end method

.method public final getStart()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->start:I

    return p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->text:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->start:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->end:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->labels:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->text:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->start:I

    iget v2, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->end:I

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;->labels:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WordPosDto(text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", start="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", end="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", labels="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
