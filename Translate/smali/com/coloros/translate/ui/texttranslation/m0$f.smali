.class public final Lcom/coloros/translate/ui/texttranslation/m0$f;
.super Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/m0;->G()V
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

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0$f;->a:Lcom/coloros/translate/ui/texttranslation/m0;

    iput-object p2, p0, Lcom/coloros/translate/ui/texttranslation/m0$f;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationPanelViewMode"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x186be

    if-ne p3, v0, :cond_0

    const-string v1, "SDK_SENSITIVE"

    goto :goto_0

    :cond_0
    const-string v1, "SDK_ERROR"

    :goto_0
    const-string v2, ""

    if-nez p2, :cond_1

    move-object p2, v2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SDK]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v4, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    if-ne p3, v0, :cond_2

    const/4 p2, 0x1

    :goto_1
    move v8, p2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    goto :goto_1

    :goto_2
    const-string v7, "text_panel"

    move v5, p3

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/coloros/translate/utils/n;->g0(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    if-ne p3, v0, :cond_3

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0$f;->a:Lcom/coloros/translate/ui/texttranslation/m0;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/m0;->p(Lcom/coloros/translate/ui/texttranslation/m0;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/m0$f;->a:Lcom/coloros/translate/ui/texttranslation/m0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->w()Landroidx/lifecycle/a0;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public onResult(Lcom/coloros/translate/engine/info/OnLineTranslateResult;)V
    .locals 14

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationPanelViewMode"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v2, v1

    goto :goto_3

    :cond_2
    :goto_2
    const-string v1, ""

    goto :goto_1

    :goto_3
    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "\\\\"

    const-string v4, "\\"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/r;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "\\n"

    const-string v10, "\n"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/r;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->e()Z

    move-result v3

    if-ne v3, v1, :cond_3

    goto :goto_4

    :cond_3
    iget-object v3, p0, Lcom/coloros/translate/ui/texttranslation/m0$f;->a:Lcom/coloros/translate/ui/texttranslation/m0;

    invoke-virtual {v3}, Lcom/coloros/translate/ui/texttranslation/m0;->y()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/coloros/translate/ui/texttranslation/m0$f;->b:Ljava/lang/String;

    sget-object v4, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    invoke-virtual {v4}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0$f;->a:Lcom/coloros/translate/ui/texttranslation/m0;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/m0;->o(Lcom/coloros/translate/ui/texttranslation/m0;)Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

    move-result-object v1

    new-instance v6, Lcom/coloros/translate/ui/texttranslation/m0$f$a;

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/m0$f;->a:Lcom/coloros/translate/ui/texttranslation/m0;

    invoke-direct {v6, p0, v2}, Lcom/coloros/translate/ui/texttranslation/m0$f$a;-><init>(Lcom/coloros/translate/ui/texttranslation/m0;Ljava/lang/String;)V

    const-string v3, "900003"

    const-string v4, ""

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;->checkText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oplus/aiunit/antispam/client/AntiSpamCallback;)Lx5/a;

    goto :goto_5

    :cond_5
    :goto_4
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->a()I

    move-result v3

    const v4, 0x186be

    if-eq v3, v4, :cond_6

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->f()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    move v0, v1

    :cond_7
    sget-object v1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->c()Ljava/lang/String;

    move-result-object p1

    const-string v3, "text_panel"

    invoke-virtual {v1, p1, v3, v0}, Lcom/coloros/translate/utils/n;->V(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_8
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/m0$f;->a:Lcom/coloros/translate/ui/texttranslation/m0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/m0;->w()Landroidx/lifecycle/a0;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :goto_5
    return-void
.end method

.method public onResultList(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public onTranslateStart(Ljava/lang/String;)V
    .locals 1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "TextTranslationPanelViewMode"

    const-string v0, "onTranslateStart"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
