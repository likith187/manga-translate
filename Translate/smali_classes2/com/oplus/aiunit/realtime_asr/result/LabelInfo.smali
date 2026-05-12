.class public final Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/realtime_asr/result/LabelInfo$$serializer;,
        Lcom/oplus/aiunit/realtime_asr/result/LabelInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/realtime_asr/result/LabelInfo$Companion;


# instance fields
.field private final desc:Ljava/lang/String;

.field private final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->Companion:Lcom/oplus/aiunit/realtime_asr/result/LabelInfo$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p4, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p4, :cond_0

    sget-object p4, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo$$serializer;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/LabelInfo$$serializer;

    invoke-virtual {p4}, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->id:I

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->desc:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->desc:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->id:I

    iput-object p2, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->desc:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 3
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;ILjava/lang/String;ILjava/lang/Object;)Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->id:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->desc:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->copy(ILjava/lang/String;)Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$aiunit_sdk_realtime_asr_release(Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    iget v0, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->id:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->desc:Ljava/lang/String;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->desc:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->id:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;)Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;
    .locals 0

    new-instance p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;

    iget v1, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->id:I

    iget v3, p1, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->desc:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->desc:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->id:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->desc:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->id:I

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/LabelInfo;->desc:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LabelInfo(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", desc="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
