.class public Lcom/oplus/aiunit/nlp/slot/NlpInputSlot;
.super Lcom/oplus/aiunit/core/base/FrameInputSlot;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/nlp/slot/NlpInputSlot$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/nlp/slot/NlpInputSlot$Companion;

.field private static final JSON_KEY:Ljava/lang/String; = "processedSource"

.field private static final TAG:Ljava/lang/String; = "BitmapInputSlot"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/nlp/slot/NlpInputSlot$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/nlp/slot/NlpInputSlot$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/nlp/slot/NlpInputSlot;->Companion:Lcom/oplus/aiunit/nlp/slot/NlpInputSlot$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/aiunit/core/base/AIContext;)V
    .locals 1

    const-string v0, "aiContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;-><init>(Lcom/oplus/aiunit/core/base/AIContext;)V

    return-void
.end method


# virtual methods
.method public final setJsonValue(Ljava/lang/String;)I
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setJsonSource(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanExistFrameUnit()V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameSlot;->getAIContext()Lcom/oplus/aiunit/core/base/AIContext;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/base/AIContext;->applyFrameUnit(I)Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidParam:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setError(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getErrorCode()Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FrameUnit;->setFlag(I)V

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FrameUnit;->setWidth(I)V

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FrameUnit;->setHeight(I)V

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FrameUnit;->setChannel(I)V

    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->IGNORED:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FrameUnit;->setImageFormatDirectly(Lcom/oplus/aiunit/core/protocol/common/ImageFormat;)V

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameSlot;->addFrameUnit(Lcom/oplus/aiunit/core/FrameUnit;)I

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getErrorCode()Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0
.end method

.method public final setValue(Ljava/lang/String;)I
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "processedSource"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/nlp/slot/NlpInputSlot;->setJsonValue(Ljava/lang/String;)I

    move-result p0

    return p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setJsonValue err. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BitmapInputSlot"

    invoke-static {v0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidParam:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setError(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getErrorCode()Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0
.end method
