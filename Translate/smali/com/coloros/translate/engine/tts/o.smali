.class public abstract Lcom/coloros/translate/engine/tts/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/translation/callback/TtsWebsocketCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract b(Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;)V
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract d(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public onAudio(Ljava/lang/String;JLjava/lang/String;IJLjava/lang/String;)V
    .locals 0

    const-string p5, "requestId"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "dataType"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "audio"

    invoke-static {p8, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p8}, Lcom/coloros/translate/engine/tts/o;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;)V
    .locals 1

    const-string v0, "rsp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/tts/o;->b(Lcom/oplus/aiunit/translation/model/OdinWebsocketBaseRsp;)V

    return-void
.end method

.method public onTtsEnd(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    const-string p2, "requestId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "dataType"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "format"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p4}, Lcom/coloros/translate/engine/tts/o;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTtsStart(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    const-string p2, "requestId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "dataType"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "format"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p4}, Lcom/coloros/translate/engine/tts/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
