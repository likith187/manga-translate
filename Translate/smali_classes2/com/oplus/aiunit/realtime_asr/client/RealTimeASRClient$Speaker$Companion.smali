.class public final Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;
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
    invoke-direct {p0}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toSpeaker(Ljava/lang/String;)Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;
    .locals 2

    const-string p0, "speakerSide"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->getEntries()Lr8/a;

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

    check-cast v1, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    invoke-virtual {v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$Speaker;

    return-object v0
.end method
