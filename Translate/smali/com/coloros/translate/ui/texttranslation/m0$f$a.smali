.class public final Lcom/coloros/translate/ui/texttranslation/m0$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/m0$f;->onResult(Lcom/coloros/translate/engine/info/OnLineTranslateResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/texttranslation/m0;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/m0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0$f$a;->a:Lcom/coloros/translate/ui/texttranslation/m0;

    iput-object p2, p0, Lcom/coloros/translate/ui/texttranslation/m0$f$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "translate onResult onFailure errCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextTranslationPanelViewMode"

    invoke-virtual {p2, v0, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0$f$a;->a:Lcom/coloros/translate/ui/texttranslation/m0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/m0;->w()Landroidx/lifecycle/a0;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/m0$f$a;->a:Lcom/coloros/translate/ui/texttranslation/m0;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->p(Lcom/coloros/translate/ui/texttranslation/m0;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public onProcess(Lcom/oplus/aiunit/antispam/client/AntiSpamResult;)V
    .locals 0

    const-string p0, "result"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/oplus/aiunit/antispam/client/AntiSpamResult;)V
    .locals 4

    const-string v0, "antiResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->getStatus()Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "translate onResult onSuccess antiResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationPanelViewMode"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->getStatus()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/m0$f$a;->a:Lcom/coloros/translate/ui/texttranslation/m0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/m0;->w()Landroidx/lifecycle/a0;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/m0$f$a;->a:Lcom/coloros/translate/ui/texttranslation/m0;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->p(Lcom/coloros/translate/ui/texttranslation/m0;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/m0$f$a;->a:Lcom/coloros/translate/ui/texttranslation/m0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/m0;->w()Landroidx/lifecycle/a0;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/m0$f$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :goto_1
    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->getStatus()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    :goto_2
    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    const-string v0, "-2000"

    const-string v1, "text_panel"

    invoke-virtual {p0, v0, v1, p1}, Lcom/coloros/translate/utils/n;->V(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
