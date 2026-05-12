.class public final Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$getImgTransConfig$callback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/translation/callback/ImgTransConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->getImgTransConfig(Lcom/coloros/translate/screen/translate/engine/language/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$getImgTransConfig$callback$1;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImgTransConfig onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,errorMsg: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AiUitOnlineTranslateClient"

    invoke-virtual {v0, p2, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$getImgTransConfig$callback$1;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {p1}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$getMLanguageLoadListener$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Lcom/coloros/translate/screen/translate/engine/language/f;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/coloros/translate/screen/translate/engine/language/f;->a()V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$getImgTransConfig$callback$1;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$setMLanguageLoadListener$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Lcom/coloros/translate/screen/translate/engine/language/f;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiUitOnlineTranslateClient"

    const-string v2, "getImgTransConfig onSuccess"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$getImgTransConfig$callback$1;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {v0, p1}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$parseAuthCfg(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$getImgTransConfig$callback$1;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    invoke-static {v0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$getMLanguageLoadListener$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Lcom/coloros/translate/screen/translate/engine/language/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/coloros/translate/screen/translate/engine/language/f;->onSuccess(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$getImgTransConfig$callback$1;->a:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->access$setMLanguageLoadListener$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Lcom/coloros/translate/screen/translate/engine/language/f;)V

    return-void
.end method
