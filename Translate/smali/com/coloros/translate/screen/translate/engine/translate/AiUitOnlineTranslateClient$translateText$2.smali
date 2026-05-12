.class public final Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/translation/callback/TextTranslateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->translateText(Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;->c:Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {v0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$getMTextRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AiUitOnlineTranslateClient"

    if-nez v0, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object p2, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$getMTextRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateTextTranslate:onError,requestId has changed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ,mTextRequestId:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const v0, 0x186be

    const-string v2, ""

    if-ne p1, v0, :cond_2

    iget-object v3, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {v3}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$getMImageTranslateListener$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {v4}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$getMTextRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;->c:Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;

    invoke-virtual {v5}, Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;->getText()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v0, v6}, Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;->onTextResult(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {p0, v2}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$setMTextRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$getMImageTranslateListener$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;

    move-result-object p0

    if-eqz p0, :cond_4

    if-nez p2, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    move-object v0, p2

    :goto_0
    const/16 v3, -0x7d0

    invoke-interface {p0, v2, v0, v3}, Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;->onError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    :goto_1
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateTextTranslate, onFailure:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/translation/model/TextTranslateData;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {v0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$getMTextRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AiUitOnlineTranslateClient"

    if-nez v0, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object p2, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$getMTextRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateTextTranslate:onSuccess,requestId has changed:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ,mTextRequestId:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateTextTranslate, requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {p1}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$getMTextRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;->c:Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;->getTargetLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p2, p3}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$convertToSingleTranslateResult(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$setMTextRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;)V

    return-void
.end method
