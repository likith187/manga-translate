.class public final Lcom/coloros/translate/ui/texttranslation/p0$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/p0$j;->onResult(Lcom/coloros/translate/engine/info/OnLineTranslateResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/texttranslation/p0;

.field final synthetic b:Lcom/coloros/translate/repository/local/Conversation;

.field final synthetic c:Lcom/coloros/translate/ui/texttranslation/p0$j;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/p0;Lcom/coloros/translate/repository/local/Conversation;Lcom/coloros/translate/ui/texttranslation/p0$j;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0$j$a;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    iput-object p2, p0, Lcom/coloros/translate/ui/texttranslation/p0$j$a;->b:Lcom/coloros/translate/repository/local/Conversation;

    iput-object p3, p0, Lcom/coloros/translate/ui/texttranslation/p0$j$a;->c:Lcom/coloros/translate/ui/texttranslation/p0$j;

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

    const-string v0, "TextTranslationViewModel"

    invoke-virtual {p2, v0, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0$j$a;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/coloros/translate/ui/texttranslation/p0;->y0(Z)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0$j$a;->c:Lcom/coloros/translate/ui/texttranslation/p0$j;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/p0$j;->a(Lcom/coloros/translate/ui/texttranslation/p0$j;)V

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

    const-string v2, "TextTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$j$a;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->getStatus()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/texttranslation/p0;->y0(Z)V

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0$j$a;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->j0()Z

    move-result v1

    const-string v2, "-2000"

    const-string v3, "text"

    invoke-virtual {v0, v2, v3, v1}, Lcom/coloros/translate/utils/n;->V(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/antispam/client/AntiSpamResult;->getStatus()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    :goto_2
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0$j$a;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/repository/local/Conversation;->setToText(Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0$j$a;->c:Lcom/coloros/translate/ui/texttranslation/p0$j;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/p0$j;->a(Lcom/coloros/translate/ui/texttranslation/p0$j;)V

    return-void
.end method
