.class public final Lcom/oplus/aiunit/realtime_asr/result/AudioText$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/realtime_asr/result/AudioText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/oplus/aiunit/realtime_asr/result/AudioText;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/AudioText$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText$$serializer;

    invoke-direct {v0}, Lcom/oplus/aiunit/realtime_asr/result/AudioText$$serializer;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText$$serializer;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/AudioText$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.oplus.aiunit.realtime_asr.result.AudioText"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "msgId"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "callId"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "startOffset"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "endOffset"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "type"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "text"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "index"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "speaker"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "smoothText"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "originalText"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "language"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lcom/oplus/aiunit/realtime_asr/result/AudioText$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    sget-object v1, Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    sget-object v3, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    const/16 v7, 0xb

    new-array v7, v7, [Lkotlinx/serialization/KSerializer;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    sget-object v0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    const/4 v8, 0x2

    aput-object v0, v7, v8

    const/4 v8, 0x3

    aput-object v0, v7, v8

    const/4 v0, 0x4

    aput-object p0, v7, v0

    const/4 p0, 0x5

    aput-object v2, v7, p0

    const/4 p0, 0x6

    aput-object v3, v7, p0

    const/4 p0, 0x7

    aput-object v4, v7, p0

    const/16 p0, 0x8

    aput-object v5, v7, p0

    const/16 p0, 0x9

    aput-object v1, v7, p0

    const/16 p0, 0xa

    aput-object v6, v7, p0

    return-object v7
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/oplus/aiunit/realtime_asr/result/AudioText;
    .locals 40

    .line 1
    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/aiunit/realtime_asr/result/AudioText$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0x9

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v2

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v0, v1, v12, v13, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v0, v1, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v15

    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v17

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;

    invoke-interface {v0, v1, v7, v10, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    sget-object v11, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-interface {v0, v1, v6, v11, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v0, v1, v5, v13, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v1, v9, v10, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    invoke-interface {v0, v1, v4, v10, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    invoke-interface {v0, v1, v3, v13, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v10, 0x7ff

    move-object/from16 v26, v2

    move-object/from16 v38, v3

    move-object/from16 v37, v4

    move-object/from16 v35, v5

    move-object/from16 v34, v6

    move-object/from16 v33, v7

    move-object/from16 v32, v8

    move-object/from16 v36, v9

    move/from16 v25, v10

    move-object/from16 v27, v12

    move-wide/from16 v28, v15

    move-wide/from16 v30, v17

    goto/16 :goto_4

    :cond_0
    const-wide/16 v15, 0x0

    move/from16 v23, v12

    move v2, v13

    move-object v7, v14

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-wide/from16 v19, v15

    move-wide/from16 v21, v19

    move-object v15, v13

    move-object/from16 v16, v15

    :goto_0
    if-eqz v23, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v6}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v0, v1, v3, v6, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x400

    :goto_1
    const/4 v6, 0x6

    goto :goto_0

    :pswitch_1
    sget-object v6, Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;

    invoke-interface {v0, v1, v4, v6, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    or-int/lit16 v2, v2, 0x200

    goto :goto_1

    :pswitch_2
    sget-object v6, Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;

    invoke-interface {v0, v1, v9, v6, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    or-int/lit16 v2, v2, 0x100

    goto :goto_1

    :pswitch_3
    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v0, v1, v5, v6, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x80

    goto :goto_1

    :pswitch_4
    sget-object v6, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/4 v3, 0x6

    invoke-interface {v0, v1, v3, v6, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Ljava/lang/Integer;

    or-int/lit8 v2, v2, 0x40

    move v6, v3

    const/16 v3, 0xa

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x6

    sget-object v6, Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/Sentence$$serializer;

    const/4 v3, 0x5

    invoke-interface {v0, v1, v3, v6, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lcom/oplus/aiunit/realtime_asr/result/Sentence;

    or-int/lit8 v2, v2, 0x20

    :goto_2
    const/16 v3, 0xa

    goto :goto_1

    :pswitch_6
    const/4 v3, 0x5

    const/4 v6, 0x4

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v16

    or-int/lit8 v2, v2, 0x10

    goto :goto_2

    :pswitch_7
    const/4 v3, 0x3

    const/4 v6, 0x4

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v21

    or-int/lit8 v2, v2, 0x8

    goto :goto_2

    :pswitch_8
    const/4 v3, 0x2

    const/4 v6, 0x4

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v19

    or-int/lit8 v2, v2, 0x4

    goto :goto_2

    :pswitch_9
    const/4 v6, 0x4

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v4, 0x1

    invoke-interface {v0, v1, v4, v3, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    or-int/lit8 v2, v2, 0x2

    :goto_3
    const/16 v3, 0xa

    const/16 v4, 0x9

    goto :goto_1

    :pswitch_a
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x4

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v14

    or-int/lit8 v2, v2, 0x1

    goto :goto_3

    :pswitch_b
    const/4 v3, 0x0

    const/4 v6, 0x4

    move/from16 v23, v3

    goto :goto_2

    :cond_1
    move/from16 v25, v2

    move-object/from16 v38, v7

    move-object/from16 v36, v8

    move-object/from16 v37, v10

    move-object/from16 v35, v11

    move-object/from16 v34, v12

    move-object/from16 v33, v13

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    move-object/from16 v32, v16

    move-wide/from16 v28, v19

    move-wide/from16 v30, v21

    :goto_4
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    const/16 v39, 0x0

    move-object/from16 v24, v0

    invoke-direct/range {v24 .. v39}, Lcom/oplus/aiunit/realtime_asr/result/AudioText;-><init>(ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/Integer;Ljava/lang/String;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Lcom/oplus/aiunit/realtime_asr/result/Sentence;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/realtime_asr/result/AudioText$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/oplus/aiunit/realtime_asr/result/AudioText$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/oplus/aiunit/realtime_asr/result/AudioText;)V
    .locals 1

    .line 1
    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/realtime_asr/result/AudioText$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/oplus/aiunit/realtime_asr/result/AudioText;->write$Self$aiunit_sdk_realtime_asr_release(Lcom/oplus/aiunit/realtime_asr/result/AudioText;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/oplus/aiunit/realtime_asr/result/AudioText;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/realtime_asr/result/AudioText$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/oplus/aiunit/realtime_asr/result/AudioText;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method
