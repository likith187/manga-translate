.class public abstract Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;
.super Lcom/coloros/translate/engine/ITranslateListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/repository/remote/TranslationEngineHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TranslateListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/ITranslateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Lcom/coloros/translate/engine/ITranslateListener;->onError(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onStreamResult(Ljava/lang/String;ZLcom/coloros/translate/engine/info/OnLineTranslateResult;)V
    .locals 0

    return-void
.end method

.method public onStreamResultList(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/coloros/translate/engine/info/OnLineTranslateResult;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0, p2}, Lcom/coloros/translate/engine/ITranslateListener;->onResultList(Ljava/util/List;)V

    return-void
.end method

.method public onStreamTranslateStart(Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/coloros/translate/engine/ITranslateListener;->onTranslateStart(Ljava/lang/String;)V

    return-void
.end method
