.class public final Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient$setRecognizeFeature$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;->setRecognizeFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)V
    .locals 2

    const-string p0, "code"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/translation/utils/AILogHelper;->Companion:Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initOmniPlugin error: ErrorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", msg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RealtimeAsrClient"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/translation/utils/AILogHelper$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
