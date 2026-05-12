.class public final Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;
    .locals 3

    const-string p0, "jsonStr"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    sget-object v0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion$fromJson$jsonDecoder$1;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion$fromJson$jsonDecoder$1;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p0}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lw8/l;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v1, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;->Companion:Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion;

    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromJson error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AsrAckMessage"

    invoke-static {v1, p1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$$serializer;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$$serializer;

    return-object p0
.end method
