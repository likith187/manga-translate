.class public final Lcom/oplus/aiunit/realtime_asr/result/AudioText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/protocol/ValueType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/realtime_asr/result/AudioText$$serializer;,
        Lcom/oplus/aiunit/realtime_asr/result/AudioText$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/realtime_asr/result/AudioText$Companion;


# instance fields
.field private final callId:Ljava/lang/String;

.field private final endOffset:J

.field private final index:Ljava/lang/Integer;

.field private final language:Ljava/lang/String;

.field private final msgId:Ljava/lang/String;

.field private final originalText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

.field private smoothText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

.field private final speaker:Ljava/lang/String;

.field private final startOffset:J

.field private final text:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

.field private final type:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/realtime_asr/result/AudioText$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->Companion:Lcom/oplus/aiunit/realtime_asr/result/AudioText$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/Integer;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 4

    .line 1
    move-object v0, p0

    move v1, p1

    and-int/lit8 v2, v1, 0x1d

    const/16 v3, 0x1d

    if-eq v3, v2, :cond_0

    sget-object v2, Lcom/oplus/aiunit/realtime_asr/result/AudioText$$serializer;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/AudioText$$serializer;

    invoke-virtual {v2}, Lcom/oplus/aiunit/realtime_asr/result/AudioText$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p2

    iput-object v2, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->msgId:Ljava/lang/String;

    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    const-string v2, "-1"

    :goto_0
    iput-object v2, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->callId:Ljava/lang/String;

    move-wide v2, p4

    goto :goto_1

    :cond_1
    move-object v2, p3

    goto :goto_0

    :goto_1
    iput-wide v2, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->startOffset:J

    move-wide v2, p6

    iput-wide v2, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->endOffset:J

    move-object v2, p8

    iput-object v2, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->type:Ljava/lang/String;

    and-int/lit8 v2, v1, 0x20

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iput-object v3, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->text:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    goto :goto_2

    :cond_2
    move-object v2, p9

    iput-object v2, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->text:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    :goto_2
    and-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_3

    iput-object v3, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->index:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object v2, p10

    iput-object v2, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->index:Ljava/lang/Integer;

    :goto_3
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_4

    iput-object v3, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->speaker:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v2, p11

    iput-object v2, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->speaker:Ljava/lang/String;

    :goto_4
    and-int/lit16 v2, v1, 0x100

    if-nez v2, :cond_5

    iput-object v3, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->smoothText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    goto :goto_5

    :cond_5
    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->smoothText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    :goto_5
    and-int/lit16 v2, v1, 0x200

    if-nez v2, :cond_6

    iput-object v3, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->originalText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    goto :goto_6

    :cond_6
    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->originalText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    :goto_6
    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_7

    iput-object v3, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->language:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->language:Ljava/lang/String;

    :goto_7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/Integer;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/String;)V
    .locals 1

    .line 2
    const-string v0, "msgId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->msgId:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->callId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->startOffset:J

    iput-wide p5, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->endOffset:J

    iput-object p7, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->type:Ljava/lang/String;

    iput-object p8, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->text:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    iput-object p9, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->index:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->speaker:Ljava/lang/String;

    iput-object p11, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->smoothText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    iput-object p12, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->originalText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    iput-object p13, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->language:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/Integer;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    .line 3
    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const-string v1, "-1"

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v11, v2

    goto :goto_2

    :cond_2
    move-object/from16 v11, p9

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move-object v12, v2

    goto :goto_3

    :cond_3
    move-object/from16 v12, p10

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move-object v13, v2

    goto :goto_4

    :cond_4
    move-object/from16 v13, p11

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move-object v14, v2

    goto :goto_5

    :cond_5
    move-object/from16 v14, p12

    :goto_5
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_6

    move-object v15, v2

    goto :goto_6

    :cond_6
    move-object/from16 v15, p13

    :goto_6
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v15}, Lcom/oplus/aiunit/realtime_asr/result/AudioText;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/Integer;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/aiunit/realtime_asr/result/AudioText;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/Integer;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/aiunit/realtime_asr/result/AudioText;
    .locals 14

    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->msgId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->callId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->startOffset:J

    goto :goto_2

    :cond_2
    move-wide/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->endOffset:J

    goto :goto_3

    :cond_3
    move-wide/from16 v6, p5

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->type:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->text:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->index:Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->speaker:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-object v12, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->smoothText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    goto :goto_8

    :cond_8
    move-object/from16 v12, p11

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-object v13, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->originalText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p12

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->language:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p13

    :goto_a
    move-object p1, v2

    move-object/from16 p2, v3

    move-wide/from16 p3, v4

    move-wide/from16 p5, v6

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->copy(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/Integer;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/String;)Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic write$Self$aiunit_sdk_realtime_asr_release(Lcom/oplus/aiunit/realtime_asr/result/AudioText;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->msgId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->callId:Ljava/lang/String;

    const-string v2, "-1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->callId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    iget-wide v0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->startOffset:J

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    iget-wide v0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->endOffset:J

    const/4 v2, 0x3

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->type:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x5

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->text:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->text:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x6

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->index:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->index:Ljava/lang/Integer;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x7

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->speaker:Ljava/lang/String;

    if-eqz v1, :cond_7

    :goto_3
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->speaker:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    const/16 v0, 0x8

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->smoothText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    if-eqz v1, :cond_9

    :goto_4
    sget-object v1, Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->smoothText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    const/16 v0, 0x9

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->originalText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    if-eqz v1, :cond_b

    :goto_5
    sget-object v1, Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;

    iget-object v2, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->originalText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    const/16 v0, 0xa

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->language:Ljava/lang/String;

    if-eqz v1, :cond_d

    :goto_6
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->language:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->msgId:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Lcom/oplus/aiunit/realtime_asr/result/Sentence;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->originalText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    return-object p0
.end method

.method public final component11()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->language:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->callId:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->startOffset:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->endOffset:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Lcom/oplus/aiunit/realtime_asr/result/Sentence;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->text:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    return-object p0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->index:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->speaker:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Lcom/oplus/aiunit/realtime_asr/result/Sentence;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->smoothText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/Integer;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/String;)Lcom/oplus/aiunit/realtime_asr/result/AudioText;
    .locals 15

    const-string v0, "msgId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    move-object v1, v0

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/oplus/aiunit/realtime_asr/result/AudioText;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/Integer;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->msgId:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->msgId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->callId:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->callId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->startOffset:J

    iget-wide v5, p1, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->startOffset:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->endOffset:J

    iget-wide v5, p1, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->endOffset:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->text:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->text:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->index:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->index:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->speaker:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->speaker:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->smoothText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->smoothText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->originalText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    iget-object v3, p1, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->originalText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->language:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->language:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getCallId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->callId:Ljava/lang/String;

    return-object p0
.end method

.method public final getEndOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->endOffset:J

    return-wide v0
.end method

.method public final getIndex()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->index:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->language:Ljava/lang/String;

    return-object p0
.end method

.method public final getMsgId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->msgId:Ljava/lang/String;

    return-object p0
.end method

.method public final getOriginalText()Lcom/oplus/aiunit/realtime_asr/result/Sentence;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->originalText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    return-object p0
.end method

.method public final getSmoothText()Lcom/oplus/aiunit/realtime_asr/result/Sentence;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->smoothText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    return-object p0
.end method

.method public final getSpeaker()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->speaker:Ljava/lang/String;

    return-object p0
.end method

.method public final getStartOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->startOffset:J

    return-wide v0
.end method

.method public final getText()Lcom/oplus/aiunit/realtime_asr/result/Sentence;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->text:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->type:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->msgId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->callId:Ljava/lang/String;

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

    iget-wide v3, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->startOffset:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->endOffset:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->text:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->index:Ljava/lang/Integer;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->speaker:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->smoothText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->originalText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/result/Sentence;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->language:Ljava/lang/String;

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    return v0
.end method

.method public final setSmoothText(Lcom/oplus/aiunit/realtime_asr/result/Sentence;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->smoothText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    invoke-interface {v1}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v2, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->Companion:Lcom/oplus/aiunit/realtime_asr/result/AudioText$Companion;

    invoke-virtual {v2}, Lcom/oplus/aiunit/realtime_asr/result/AudioText$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->msgId:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->callId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->startOffset:J

    iget-wide v4, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->endOffset:J

    iget-object v6, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->type:Ljava/lang/String;

    iget-object v7, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->text:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    iget-object v8, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->index:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->speaker:Ljava/lang/String;

    iget-object v10, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->smoothText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    iget-object v11, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->originalText:Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->language:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AudioText(msgId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", callId="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", startOffset="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", endOffset="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", text="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", index="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", speaker="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", smoothText="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", originalText="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", language="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
