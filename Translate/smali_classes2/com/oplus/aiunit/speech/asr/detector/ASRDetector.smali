.class public final Lcom/oplus/aiunit/speech/asr/detector/ASRDetector;
.super Lcom/oplus/aiunit/core/base/FrameDetector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/speech/asr/detector/ASRDetector$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/aiunit/core/base/FrameDetector<",
        "Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot;",
        "Lcom/oplus/aiunit/speech/asr/slot/ASROutputSlot;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/speech/asr/detector/ASRDetector$Companion;

.field public static final PARAM_KEY_ASR_TYPE:Ljava/lang/String; = "ai::key::asr::asr_type"

.field public static final TYPE_ASR_CALL:I = 0x0

.field public static final TYPE_ASR_GLOBAL:I = 0x2

.field public static final TYPE_ASR_RECORD:I = 0x1


# instance fields
.field public a:I

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/speech/asr/detector/ASRDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/speech/asr/detector/ASRDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/speech/asr/detector/ASRDetector;->Companion:Lcom/oplus/aiunit/speech/asr/detector/ASRDetector$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p4}, Lcom/oplus/aiunit/speech/asr/detector/ASRDetector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput p2, p0, Lcom/oplus/aiunit/speech/asr/detector/ASRDetector;->a:I

    iput-boolean p3, p0, Lcom/oplus/aiunit/speech/asr/detector/ASRDetector;->b:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "detectName is:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ASRClient"

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/speech/asr/detector/ASRDetector;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/core/base/FrameDetector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInputSlot()Lcom/oplus/aiunit/core/base/FrameInputSlot;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/speech/asr/detector/ASRDetector;->createInputSlot()Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot;

    move-result-object p0

    return-object p0
.end method

.method public createInputSlot()Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot;
    .locals 1

    .line 2
    new-instance v0, Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/speech/asr/slot/ASRInputSlot;-><init>(Lcom/oplus/aiunit/core/base/AIContext;)V

    return-object v0
.end method

.method public bridge synthetic createOutputSlot()Lcom/oplus/aiunit/core/base/FrameOutputSlot;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/speech/asr/detector/ASRDetector;->createOutputSlot()Lcom/oplus/aiunit/speech/asr/slot/ASROutputSlot;

    move-result-object p0

    return-object p0
.end method

.method public createOutputSlot()Lcom/oplus/aiunit/speech/asr/slot/ASROutputSlot;
    .locals 1

    .line 2
    new-instance v0, Lcom/oplus/aiunit/speech/asr/slot/ASROutputSlot;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/speech/asr/slot/ASROutputSlot;-><init>(Lcom/oplus/aiunit/core/base/AIContext;)V

    return-object v0
.end method

.method public getConfigMemoryPool()[I
    .locals 0

    const/16 p0, 0x400

    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "getExtras(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/oplus/aiunit/speech/asr/detector/ASRDetector;->a:I

    const-string v2, "ai::key::asr::asr_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v1, p0, Lcom/oplus/aiunit/speech/asr/detector/ASRDetector;->b:Z

    const-string v2, "ai::key::filter_local_llm"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean p0, p0, Lcom/oplus/aiunit/speech/asr/detector/ASRDetector;->b:Z

    const-string v1, "ai::key::filter_attach_local_llm"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getUnstableRunningType()I
    .locals 1

    iget-boolean v0, p0, Lcom/oplus/aiunit/speech/asr/detector/ASRDetector;->b:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getUnstableRunningType()I

    move-result p0

    return p0
.end method
