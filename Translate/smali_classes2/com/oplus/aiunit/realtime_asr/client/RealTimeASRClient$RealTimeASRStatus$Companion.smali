.class public final Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;
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
    invoke-direct {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus$Companion;-><init>()V

    return-void
.end method

.method public static synthetic toExtStatusCode$default(Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus$Companion;ILjava/lang/String;ILjava/lang/Object;)Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus$Companion;->toExtStatusCode(ILjava/lang/String;)Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toExtStatusCode(ILjava/lang/String;)Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;
    .locals 2

    invoke-static {}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getEntries()Lr8/a;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->getCode()I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->statusDesc(Ljava/lang/String;)Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    move-result-object p0

    if-nez p0, :cond_3

    :cond_2
    sget-object p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_UNKNOWN:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {p0, p2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->statusDesc(Ljava/lang/String;)Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    move-result-object p0

    :cond_3
    return-object p0
.end method
