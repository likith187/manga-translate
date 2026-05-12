.class Lcom/coloros/translate/engine/service/b$a;
.super Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/service/b;->c()Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/engine/service/b;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/service/b;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/service/b$a;->a:Lcom/coloros/translate/engine/service/b;

    invoke-direct {p0}, Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMap(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearMap verifyPass, type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranslateServiceInterProxy"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/b$a;->a:Lcom/coloros/translate/engine/service/b;

    invoke-static {v0}, Lcom/coloros/translate/engine/service/b;->b(Lcom/coloros/translate/engine/service/b;)Lcom/coloros/translate/engine/service/a;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/engine/service/b$a;->a:Lcom/coloros/translate/engine/service/b;

    invoke-static {p0}, Lcom/coloros/translate/engine/service/b;->a(Lcom/coloros/translate/engine/service/b;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/engine/service/a;->f(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public generateOfflineTranslateEngine(Ljava/lang/String;)Lcom/coloros/translate/engine/IOfflineTranslateEngine;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public generateRtasrEngine(Ljava/lang/String;)Lcom/coloros/translate/engine/IRtasrEngine;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateRtasrEngine verifyPass---FileAsr type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranslateServiceInterProxy"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/b$a;->a:Lcom/coloros/translate/engine/service/b;

    invoke-static {v0}, Lcom/coloros/translate/engine/service/b;->b(Lcom/coloros/translate/engine/service/b;)Lcom/coloros/translate/engine/service/a;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/engine/service/b$a;->a:Lcom/coloros/translate/engine/service/b;

    invoke-static {p0}, Lcom/coloros/translate/engine/service/b;->a(Lcom/coloros/translate/engine/service/b;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/engine/service/a;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/IRtasrEngine;

    move-result-object p0

    return-object p0
.end method

.method public generateTranslateEngine(Ljava/lang/String;)Lcom/coloros/translate/engine/ITranslateEngine;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateTranslateEngine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranslateServiceInterProxy"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/b$a;->a:Lcom/coloros/translate/engine/service/b;

    invoke-static {v0}, Lcom/coloros/translate/engine/service/b;->b(Lcom/coloros/translate/engine/service/b;)Lcom/coloros/translate/engine/service/a;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/engine/service/b$a;->a:Lcom/coloros/translate/engine/service/b;

    invoke-static {p0}, Lcom/coloros/translate/engine/service/b;->a(Lcom/coloros/translate/engine/service/b;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/engine/service/a;->m(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/ITranslateEngine;

    move-result-object p0

    return-object p0
.end method

.method public generateTtsEngine(Ljava/lang/String;)Lcom/coloros/translate/engine/ITtsEngine;
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/engine/service/b$a;->a:Lcom/coloros/translate/engine/service/b;

    invoke-static {v0}, Lcom/coloros/translate/engine/service/b;->b(Lcom/coloros/translate/engine/service/b;)Lcom/coloros/translate/engine/service/a;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/engine/service/b$a;->a:Lcom/coloros/translate/engine/service/b;

    invoke-static {p0}, Lcom/coloros/translate/engine/service/b;->a(Lcom/coloros/translate/engine/service/b;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/engine/service/a;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/ITtsEngine;

    move-result-object p0

    return-object p0
.end method

.method public invokeMethod(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invokeMethod:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranslateServiceInterProxy"

    invoke-static {p1, p0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public registerClient(Lcom/coloros/translate/engine/IRegisterListener;)V
    .locals 2

    const-string v0, "TranslateServiceInterProxy"

    const-string v1, "registerClient verifyPass"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/b$a;->a:Lcom/coloros/translate/engine/service/b;

    invoke-static {v0}, Lcom/coloros/translate/engine/service/b;->b(Lcom/coloros/translate/engine/service/b;)Lcom/coloros/translate/engine/service/a;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/engine/service/b$a;->a:Lcom/coloros/translate/engine/service/b;

    invoke-static {p0}, Lcom/coloros/translate/engine/service/b;->a(Lcom/coloros/translate/engine/service/b;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/engine/service/a;->q(Landroid/content/Context;Lcom/coloros/translate/engine/IRegisterListener;)V

    return-void
.end method

.method public registerLLMClient(Lcom/coloros/translate/engine/IRegisterListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/service/b$a;->a:Lcom/coloros/translate/engine/service/b;

    invoke-static {p0}, Lcom/coloros/translate/engine/service/b;->b(Lcom/coloros/translate/engine/service/b;)Lcom/coloros/translate/engine/service/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/service/a;->r(Lcom/coloros/translate/engine/IRegisterListener;)V

    return-void
.end method

.method public setEngineAutoDestroyWhenBinderDied(Lcom/coloros/translate/engine/IRegisterListener;Z)V
    .locals 2

    const-string v0, "TranslateServiceInterProxy"

    const-string v1, "registerClient verifyPass"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/service/b$a;->a:Lcom/coloros/translate/engine/service/b;

    invoke-static {p0}, Lcom/coloros/translate/engine/service/b;->b(Lcom/coloros/translate/engine/service/b;)Lcom/coloros/translate/engine/service/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/engine/service/a;->s(Lcom/coloros/translate/engine/IRegisterListener;Z)V

    return-void
.end method

.method public unRegisterClient(Lcom/coloros/translate/engine/IRegisterListener;)V
    .locals 2

    const-string v0, "TranslateServiceInterProxy"

    const-string v1, "unRegisterClient verifyPass"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/service/b$a;->a:Lcom/coloros/translate/engine/service/b;

    invoke-static {p0}, Lcom/coloros/translate/engine/service/b;->b(Lcom/coloros/translate/engine/service/b;)Lcom/coloros/translate/engine/service/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/service/a;->t(Lcom/coloros/translate/engine/IRegisterListener;)V

    return-void
.end method
