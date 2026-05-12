.class Lcom/coloros/translate/engine/service/TranslateService$a;
.super Lcom/coloros/translate/engine/ITranslateServiceBinder$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/service/TranslateService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/engine/service/TranslateService;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/service/TranslateService;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/service/TranslateService$a;->a:Lcom/coloros/translate/engine/service/TranslateService;

    invoke-direct {p0}, Lcom/coloros/translate/engine/ITranslateServiceBinder$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public generateOfflineTranslateEngine(Ljava/lang/String;)Lcom/coloros/translate/engine/IOfflineTranslateEngine;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateTranslateEngine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranslateService"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v2, p0, Lcom/coloros/translate/engine/service/TranslateService$a;->a:Lcom/coloros/translate/engine/service/TranslateService;

    invoke-static {v2}, Lcom/coloros/translate/engine/service/TranslateService;->a(Lcom/coloros/translate/engine/service/TranslateService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/coloros/translate/engine/service/TranslateService;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.coloros.ocrscanner"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid package:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/service/TranslateService$a;->a:Lcom/coloros/translate/engine/service/TranslateService;

    invoke-static {v0}, Lcom/coloros/translate/engine/service/TranslateService;->b(Lcom/coloros/translate/engine/service/TranslateService;)Lcom/coloros/translate/engine/service/a;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/engine/service/TranslateService$a;->a:Lcom/coloros/translate/engine/service/TranslateService;

    invoke-static {p0}, Lcom/coloros/translate/engine/service/TranslateService;->a(Lcom/coloros/translate/engine/service/TranslateService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/engine/service/a;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    move-result-object p0

    return-object p0
.end method
