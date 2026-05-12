.class public final Lcom/oplus/aiunit/realtime_asr/result/Sentence;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;,
        Lcom/oplus/aiunit/realtime_asr/result/Sentence$Companion;
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

.field public static final Companion:Lcom/oplus/aiunit/realtime_asr/result/Sentence$Companion;


# instance fields
.field private final biz_id:Ljava/lang/String;

.field private final endOffset:Ljava/lang/Long;

.field private final languageCode:Ljava/lang/String;

.field private final roleId:Ljava/lang/String;

.field private final startOffset:Ljava/lang/Long;

.field private text:Ljava/lang/String;

.field private wordsPosList:[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/result/Sentence$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/realtime_asr/result/Sentence$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->Companion:Lcom/oplus/aiunit/realtime_asr/result/Sentence$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ReferenceArraySerializer;

    const-class v2, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    invoke-static {v2}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lc9/c;

    move-result-object v2

    sget-object v3, Lcom/oplus/aiunit/realtime_asr/result/WordPosDto$$serializer;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/WordPosDto$$serializer;

    invoke-direct {v0, v2, v3}, Lkotlinx/serialization/internal/ReferenceArraySerializer;-><init>(Lc9/c;Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x7

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sput-object v2, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p9, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p9, :cond_0

    sget-object p9, Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;

    invoke-virtual {p9}, Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p9

    invoke-static {p1, v0, p9}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->text:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    const/4 p9, 0x0

    if-nez p2, :cond_1

    iput-object p9, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->wordsPosList:[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->wordsPosList:[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object p9, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->biz_id:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p4, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->biz_id:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object p9, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->languageCode:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iput-object p5, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->languageCode:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    iput-object p9, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->startOffset:Ljava/lang/Long;

    goto :goto_3

    :cond_4
    iput-object p6, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->startOffset:Ljava/lang/Long;

    :goto_3
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    iput-object p9, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->endOffset:Ljava/lang/Long;

    goto :goto_4

    :cond_5
    iput-object p7, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->endOffset:Ljava/lang/Long;

    :goto_4
    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_6

    iput-object p9, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->roleId:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iput-object p8, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->roleId:Ljava/lang/String;

    :goto_5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    .line 2
    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->wordsPosList:[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    iput-object p3, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->biz_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->languageCode:Ljava/lang/String;

    iput-object p5, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->startOffset:Ljava/lang/Long;

    iput-object p6, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->endOffset:Ljava/lang/Long;

    iput-object p7, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->roleId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    .line 3
    and-int/lit8 v0, p8, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_3

    move-object v4, v1

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_4

    move-object v5, v1

    goto :goto_4

    :cond_4
    move-object v5, p6

    :goto_4
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    move-object v1, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v2

    move-object p6, v3

    move-object p7, v4

    move-object p8, v5

    move-object/from16 p9, v1

    invoke-direct/range {p2 .. p9}, Lcom/oplus/aiunit/realtime_asr/result/Sentence;-><init>(Ljava/lang/String;[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/String;[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/aiunit/realtime_asr/result/Sentence;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->text:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->wordsPosList:[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->biz_id:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->languageCode:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->startOffset:Ljava/lang/Long;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->endOffset:Ljava/lang/Long;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->roleId:Ljava/lang/String;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->copy(Ljava/lang/String;[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$aiunit_sdk_realtime_asr_release(Lcom/oplus/aiunit/realtime_asr/result/Sentence;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->text:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->wordsPosList:[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    if-eqz v2, :cond_1

    :goto_0
    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->wordsPosList:[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->biz_id:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->biz_id:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->languageCode:Ljava/lang/String;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->languageCode:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->startOffset:Ljava/lang/Long;

    if-eqz v1, :cond_7

    :goto_3
    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->startOffset:Ljava/lang/Long;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    const/4 v0, 0x5

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->endOffset:Ljava/lang/Long;

    if-eqz v1, :cond_9

    :goto_4
    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->endOffset:Ljava/lang/Long;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    const/4 v0, 0x6

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->roleId:Ljava/lang/String;

    if-eqz v1, :cond_b

    :goto_5
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->roleId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->text:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->wordsPosList:[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->biz_id:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->languageCode:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->startOffset:Ljava/lang/Long;

    return-object p0
.end method

.method public final component6()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->endOffset:Ljava/lang/Long;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->roleId:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/oplus/aiunit/realtime_asr/result/Sentence;
    .locals 8

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/oplus/aiunit/realtime_asr/result/Sentence;-><init>(Ljava/lang/String;[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.oplus.aiunit.realtime_asr.result.Sentence"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->wordsPosList:[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->wordsPosList:[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    if-nez v3, :cond_4

    return v2

    :cond_4
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_5
    iget-object v1, p1, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->wordsPosList:[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->biz_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->biz_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->languageCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->languageCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->startOffset:Ljava/lang/Long;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->startOffset:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->endOffset:Ljava/lang/Long;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->endOffset:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->roleId:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->roleId:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getBiz_id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->biz_id:Ljava/lang/String;

    return-object p0
.end method

.method public final getEndOffset()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->endOffset:Ljava/lang/Long;

    return-object p0
.end method

.method public final getLanguageCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->languageCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getRoleId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->roleId:Ljava/lang/String;

    return-object p0
.end method

.method public final getStartOffset()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->startOffset:Ljava/lang/Long;

    return-object p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->text:Ljava/lang/String;

    return-object p0
.end method

.method public final getWordsPosList()[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->wordsPosList:[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->wordsPosList:[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->biz_id:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->languageCode:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->startOffset:Ljava/lang/Long;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->endOffset:Ljava/lang/Long;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->roleId:Ljava/lang/String;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    return v0
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->text:Ljava/lang/String;

    return-void
.end method

.method public final setWordsPosList([Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->wordsPosList:[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->wordsPosList:[Lcom/oplus/aiunit/realtime_asr/result/WordPosDto;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->biz_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->languageCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->startOffset:Ljava/lang/Long;

    iget-object v5, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->endOffset:Ljava/lang/Long;

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->roleId:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sentence(text="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", wordsPosList="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", biz_id="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", languageCode="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", startOffset="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", endOffset="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", roleId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
