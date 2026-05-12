.class public final Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;
.super Lcom/oplus/aiunit/core/AIConnector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/aiunit/core/AIConnector<",
        "Lcom/oplus/aiunit/nlp/slot/NlpInputSlot;",
        "Lcom/oplus/aiunit/core/base/FrameOutputSlot;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient$Companion;

.field private static final TAG:Ljava/lang/String; = "TextSmoothClient"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;->Companion:Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/oplus/aiunit/realtime_asr/detector/TextSmoothDetector;

    invoke-direct {p2, p1}, Lcom/oplus/aiunit/realtime_asr/detector/TextSmoothDetector;-><init>(Landroid/content/Context;)V

    const-string v0, "TextSmoothClient"

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/aiunit/core/AIConnector;-><init>(Landroid/content/Context;Lcom/oplus/aiunit/core/base/FrameDetector;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "nlp_text_smooth"

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getDetector(Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;)Lcom/oplus/aiunit/core/base/FrameDetector;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetector()Lcom/oplus/aiunit/core/base/FrameDetector;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG(Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getTextSmoothResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "jsonStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDK method: getTextSmoothResult."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final process(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "jsonSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDK method: textSmooth process."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient$process$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient$process$1;-><init>(Lcom/oplus/aiunit/realtime_asr/client/TextSmoothClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
