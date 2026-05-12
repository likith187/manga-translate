.class final Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion$fromJson$jsonDecoder$1;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion;->fromJson(Ljava/lang/String;)Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/s;",
        "Lw8/l;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion$fromJson$jsonDecoder$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion$fromJson$jsonDecoder$1;

    invoke-direct {v0}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion$fromJson$jsonDecoder$1;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion$fromJson$jsonDecoder$1;->INSTANCE:Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion$fromJson$jsonDecoder$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/serialization/json/JsonBuilder;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/realtime_asr/result/AsrAckMessage$Companion$fromJson$jsonDecoder$1;->invoke(Lkotlinx/serialization/json/JsonBuilder;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Lkotlinx/serialization/json/JsonBuilder;)V
    .locals 0

    .line 2
    const-string p0, "$this$Json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/JsonBuilder;->setIgnoreUnknownKeys(Z)V

    return-void
.end method
