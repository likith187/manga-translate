.class public final Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->translateImage(Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 4

    iget-object p2, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {p2}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$getMImageRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;->b:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "AiUitOnlineTranslateClient"

    if-nez p2, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object p2, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$getMImageRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateImageTranslate:onError,requestId has changed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ,mImageRequestId:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {v1}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$getMImageRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateImageTranslate onError:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,requestId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {p2}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$getMImageTranslateListener$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;

    move-result-object p2

    const-string v0, ""

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;->b:Ljava/lang/String;

    invoke-interface {p2, v1, v0, p1}, Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;->onError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {p0, v0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$setMImageRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;)V

    return-void
.end method

.method public onTranslated(Lcom/oplus/aiunit/translation/model/ImageTranslateResult;)V
    .locals 5

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {v0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$getMImageRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AiUitOnlineTranslateClient"

    if-nez v0, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$getMImageRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateImageTranslate:onSuccess,requestId has changed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ,mImageRequestId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v2, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateImageTranslate onTranslated: requestId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {v0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$getMImageTranslateListener$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;->onImageResult(Ljava/lang/String;Lcom/oplus/aiunit/translation/model/ImageTranslateResult;)V

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$setMImageRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;)V

    return-void
.end method
