.class public final Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/text/SupportLanguageManager;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/z;

.field final synthetic b:Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;

.field final synthetic c:Lkotlin/jvm/internal/z;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/z;Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;Lkotlin/jvm/internal/z;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;->a:Lkotlin/jvm/internal/z;

    iput-object p2, p0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;->b:Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;

    iput-object p3, p0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;->c:Lkotlin/jvm/internal/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "asr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tts"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOnlineLanguageConfigGet asr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SupportLanguageManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;->a:Lkotlin/jvm/internal/z;

    iput-boolean v1, p0, Lkotlin/jvm/internal/z;->element:Z

    return-void

    :cond_2
    new-instance v0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1$onOnlineLanguageConfigGet$asrMap$1;

    invoke-direct {v0}, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1$onOnlineLanguageConfigGet$asrMap$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v2, "getType(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/coloros/translate/utils/b0;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance v0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1$onOnlineLanguageConfigGet$onlineTextMap$1;

    invoke-direct {v0}, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1$onOnlineLanguageConfigGet$onlineTextMap$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/coloros/translate/utils/b0;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    new-instance v0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1$onOnlineLanguageConfigGet$ttsList$1;

    invoke-direct {v0}, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1$onOnlineLanguageConfigGet$ttsList$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lcom/coloros/translate/utils/b0;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    iget-object v0, p0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;->b:Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;

    invoke-virtual {v0, p1}, Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;->setAsr(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;->b:Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;

    invoke-virtual {p1, p2}, Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;->setOnlineText(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;->b:Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;

    invoke-virtual {p1, p3}, Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;->setTts(Ljava/util/List;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;->a:Lkotlin/jvm/internal/z;

    iput-boolean v1, p1, Lkotlin/jvm/internal/z;->element:Z

    iget-object p1, p0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;->c:Lkotlin/jvm/internal/z;

    iget-boolean p1, p1, Lkotlin/jvm/internal/z;->element:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/coloros/translate/engine/text/SupportLanguageManager;->INSTANCE:Lcom/coloros/translate/engine/text/SupportLanguageManager;

    iget-object p0, p0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;->b:Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;

    invoke-static {p0}, Lcom/coloros/translate/utils/b0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/translate/engine/text/SupportLanguageManager;->f(Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->INSTANCE:Lcom/coloros/translate/engine/text/SupportLanguageManager;

    invoke-static {p0}, Lcom/coloros/translate/engine/text/SupportLanguageManager;->c(Lcom/coloros/translate/engine/text/SupportLanguageManager;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/coloros/translate/engine/text/SupportLanguageManager;->e(Z)V

    const-string p0, "request_download_offline_info"

    invoke-static {}, Lcom/coloros/translate/engine/text/SupportLanguageManager;->d()Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/u0;->f(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 4

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOfflineLanguageConfigGetmap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SupportLanguageManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;->c:Lkotlin/jvm/internal/z;

    iput-boolean v1, p0, Lkotlin/jvm/internal/z;->element:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;->b:Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;->getOfflineText()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;->b:Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;->getOfflineText()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;->c:Lkotlin/jvm/internal/z;

    iput-boolean v1, p1, Lkotlin/jvm/internal/z;->element:Z

    iget-object p1, p0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;->a:Lkotlin/jvm/internal/z;

    iget-boolean p1, p1, Lkotlin/jvm/internal/z;->element:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/coloros/translate/engine/text/SupportLanguageManager;->INSTANCE:Lcom/coloros/translate/engine/text/SupportLanguageManager;

    iget-object p0, p0, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;->b:Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;

    invoke-static {p0}, Lcom/coloros/translate/utils/b0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/translate/engine/text/SupportLanguageManager;->f(Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->INSTANCE:Lcom/coloros/translate/engine/text/SupportLanguageManager;

    invoke-static {p0}, Lcom/coloros/translate/engine/text/SupportLanguageManager;->c(Lcom/coloros/translate/engine/text/SupportLanguageManager;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/coloros/translate/engine/text/SupportLanguageManager;->e(Z)V

    const-string p0, "request_download_offline_info"

    invoke-static {}, Lcom/coloros/translate/engine/text/SupportLanguageManager;->d()Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/u0;->f(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
