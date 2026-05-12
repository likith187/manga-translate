.class public final Lcom/coloros/translate/ui/texttranslation/p0$j;
.super Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/p0;->C0(Lcom/coloros/translate/repository/local/Conversation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/texttranslation/p0;

.field final synthetic b:Lcom/coloros/translate/repository/local/Conversation;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/p0;Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    iput-object p2, p0, Lcom/coloros/translate/ui/texttranslation/p0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-direct {p0}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/coloros/translate/ui/texttranslation/p0$j;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/p0$j;->onStop()V

    return-void
.end method

.method private final onStop()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->Y()Landroidx/lifecycle/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/coloros/translate/ui/texttranslation/p0;->E(Lcom/coloros/translate/ui/texttranslation/p0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v8, p3

    const-string v2, "requestId"

    move-object/from16 v4, p1

    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const v11, 0x186be

    if-ne v8, v11, :cond_0

    move v3, v9

    goto :goto_0

    :cond_0
    move v3, v10

    :goto_0
    invoke-virtual {v2, v3}, Lcom/coloros/translate/ui/texttranslation/p0;->y0(Z)V

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    const-string v12, ""

    invoke-static {v2, v12}, Lcom/coloros/translate/ui/texttranslation/p0;->E(Lcom/coloros/translate/ui/texttranslation/p0;Ljava/lang/String;)V

    const/16 v13, 0x66

    const/16 v14, -0x3e8

    if-eq v8, v14, :cond_1

    if-eq v8, v13, :cond_1

    const-string v2, "SDK"

    goto :goto_1

    :cond_1
    const-string v2, "APP"

    :goto_1
    if-eq v8, v14, :cond_4

    if-eq v8, v13, :cond_3

    if-eq v8, v11, :cond_2

    const-string v3, "SDK_ERROR"

    goto :goto_2

    :cond_2
    const-string v3, "SDK_SENSITIVE"

    goto :goto_2

    :cond_3
    const-string v3, "PARAM_INVALID"

    goto :goto_2

    :cond_4
    const-string v3, "NETWORK_ERROR"

    :goto_2
    if-nez v1, :cond_5

    move-object v5, v12

    goto :goto_3

    :cond_5
    move-object v5, v1

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]["

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v2, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    iget-object v3, v0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v3}, Lcom/coloros/translate/ui/texttranslation/p0;->j0()Z

    move-result v6

    const-string v5, "text"

    move/from16 v3, p3

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/coloros/translate/utils/n;->g0(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "translate onError translation message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , errorCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TextTranslationViewModel"

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/coloros/translate/ui/texttranslation/p0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v3, v9}, Lcom/coloros/translate/repository/local/Conversation;->setState(I)V

    iget-object v3, v0, Lcom/coloros/translate/ui/texttranslation/p0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    if-ne v8, v11, :cond_6

    invoke-virtual {v3}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_6
    move-object v5, v12

    :goto_4
    invoke-virtual {v3, v5}, Lcom/coloros/translate/repository/local/Conversation;->setToText(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v3}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v3}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v5}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :cond_7
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/p0$j;->onStop()V

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v0}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v0

    const/4 v3, 0x0

    const/4 v5, 0x2

    if-eqz v0, :cond_8

    const-string v0, "translate onError network not available"

    invoke-virtual {v2, v4, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/coloros/translate/R$string;->no_network:I

    invoke-static {v0, v10, v5, v3}, Lcom/coloros/translate/utils/b1;->c(IIILjava/lang/Object;)V

    return-void

    :cond_8
    const/16 v0, -0x7d0

    if-eq v8, v0, :cond_c

    if-eq v8, v14, :cond_b

    if-eq v8, v13, :cond_a

    if-eq v8, v11, :cond_d

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    move-object v12, v1

    :goto_5
    invoke-static {v12, v10, v5, v3}, Lcom/coloros/translate/utils/w;->i(Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_6

    :cond_a
    sget v0, Lcom/coloros/translate/R$string;->guide_to_download_offline_package_settings:I

    invoke-static {v0, v10, v5, v3}, Lcom/coloros/translate/utils/b1;->c(IIILjava/lang/Object;)V

    goto :goto_6

    :cond_b
    sget v0, Lcom/coloros/translate/R$string;->no_network:I

    invoke-static {v0, v10, v5, v3}, Lcom/coloros/translate/utils/b1;->c(IIILjava/lang/Object;)V

    goto :goto_6

    :cond_c
    sget v0, Lcom/coloros/translate/R$string;->translate_error:I

    invoke-static {v0, v10, v5, v3}, Lcom/coloros/translate/utils/b1;->c(IIILjava/lang/Object;)V

    :cond_d
    :goto_6
    return-void
.end method

.method public onResult(Lcom/coloros/translate/engine/info/OnLineTranslateResult;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->y(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->c()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "TextTranslationViewModel"

    if-nez v1, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onResult already cancel and return"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "translate onResult already use AI translate and return"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->f()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "translate onResult : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " , isSafe : "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->d()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move-object v5, v4

    goto :goto_4

    :cond_6
    :goto_3
    const-string v4, ""

    goto :goto_2

    :goto_4
    invoke-virtual {v1}, Lcom/coloros/translate/utils/c0$a;->l()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1, v5}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "translate onResult result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "\\\\"

    const-string v7, "\\"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/r;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "\\n"

    const-string v13, "\n"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/r;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/coloros/translate/ui/texttranslation/p0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v5, v4}, Lcom/coloros/translate/repository/local/Conversation;->setToText(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v5, v4}, Lcom/coloros/translate/ui/texttranslation/p0;->v0(Ljava/lang/String;)V

    const/4 v4, 0x1

    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->e()Z

    move-result v5

    if-ne v5, v4, :cond_8

    goto :goto_5

    :cond_8
    iget-object v5, v0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v5}, Lcom/coloros/translate/ui/texttranslation/p0;->g0()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v0, Lcom/coloros/translate/ui/texttranslation/p0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v5}, Lcom/coloros/translate/repository/local/Conversation;->getToLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    invoke-virtual {v6}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_5

    :cond_9
    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->N()Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

    move-result-object v2

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/p0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/coloros/translate/ui/texttranslation/p0$j$a;

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    iget-object v4, v0, Lcom/coloros/translate/ui/texttranslation/p0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-direct {v7, v1, v4, v0}, Lcom/coloros/translate/ui/texttranslation/p0$j$a;-><init>(Lcom/coloros/translate/ui/texttranslation/p0;Lcom/coloros/translate/repository/local/Conversation;Lcom/coloros/translate/ui/texttranslation/p0$j;)V

    const-string v4, "900003"

    const-string v5, ""

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;->checkText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oplus/aiunit/antispam/client/AntiSpamCallback;)Lx5/a;

    goto :goto_6

    :cond_a
    :goto_5
    if-eqz p1, :cond_d

    iget-object v5, v0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->a()I

    move-result v6

    const v7, 0x186be

    if-eq v6, v7, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->f()Z

    move-result v6

    if-nez v6, :cond_c

    :cond_b
    move v2, v4

    :cond_c
    invoke-virtual {v5, v2}, Lcom/coloros/translate/ui/texttranslation/p0;->y0(Z)V

    invoke-virtual {v5}, Lcom/coloros/translate/ui/texttranslation/p0;->j0()Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "translate onResult isResultSensitive : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v5}, Lcom/coloros/translate/ui/texttranslation/p0;->j0()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/coloros/translate/utils/n;->V(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/ui/texttranslation/p0$j;->onStop()V

    :cond_d
    :goto_6
    return-void
.end method

.method public onResultList(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public onStreamResult(Ljava/lang/String;ZLcom/coloros/translate/engine/info/OnLineTranslateResult;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-super/range {p0 .. p3}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;->onStreamResult(Ljava/lang/String;ZLcom/coloros/translate/engine/info/OnLineTranslateResult;)V

    iget-object v2, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/p0;->A(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v8, "TextTranslationViewModel"

    if-nez v2, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onStreamResult already cancel and return"

    invoke-virtual {v0, v8, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    const/4 v9, 0x0

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->d()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_2

    :cond_1
    const-string v3, ""

    :cond_2
    invoke-static {v2, v3}, Lcom/coloros/translate/ui/texttranslation/p0;->H(Lcom/coloros/translate/ui/texttranslation/p0;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/p0;->B(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "\\\\"

    const-string v12, "\\"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/r;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v17, "\\n"

    const-string v18, "\n"

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/text/r;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/translate/ui/texttranslation/p0;->F(Lcom/coloros/translate/ui/texttranslation/p0;Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    if-eqz p2, :cond_6

    sget-object v13, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "onStreamResult isFinalResult"

    invoke-virtual {v13, v8, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v2, v9}, Lcom/coloros/translate/ui/texttranslation/p0;->y0(Z)V

    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->a()I

    move-result v3

    iget-object v2, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    const v4, 0x186be

    if-ne v3, v4, :cond_3

    move v5, v12

    goto :goto_0

    :cond_3
    move v5, v9

    :goto_0
    invoke-virtual {v2, v5}, Lcom/coloros/translate/ui/texttranslation/p0;->y0(Z)V

    if-eqz v0, :cond_5

    if-ne v3, v4, :cond_4

    const-string v4, "SDK_SENSITIVE"

    goto :goto_1

    :cond_4
    const-string v4, "SDK_ERROR"

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SDK]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v4, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string v5, "text"

    invoke-virtual {v2}, Lcom/coloros/translate/ui/texttranslation/p0;->j0()Z

    move-result v6

    move-object v2, v4

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/coloros/translate/utils/n;->g0(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_5
    iget-object v0, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->j0()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStreamResult isFinalResult isResultSensitive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v8, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v0, v10, v11}, Lcom/coloros/translate/ui/texttranslation/p0;->D(Lcom/coloros/translate/ui/texttranslation/p0;J)V

    iget-object v0, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0, v12}, Lcom/coloros/translate/ui/texttranslation/p0;->z0(Z)V

    iget-object v0, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    iget-object v2, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/p0;->z(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coloros/translate/repository/local/Conversation;->setToText(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/ui/texttranslation/p0$j;->onStop()V

    iget-object v0, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0, v9, v9}, Lcom/coloros/translate/ui/texttranslation/p0;->K(ZZ)V

    goto/16 :goto_7

    :cond_6
    iget-object v0, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v4}, Lcom/coloros/translate/ui/texttranslation/p0;->r(Lcom/coloros/translate/ui/texttranslation/p0;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/coloros/translate/ui/texttranslation/p0;->I(Lcom/coloros/translate/ui/texttranslation/p0;J)V

    iget-object v0, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->r(Lcom/coloros/translate/ui/texttranslation/p0;)J

    move-result-wide v2

    cmp-long v0, v2, v10

    if-nez v0, :cond_7

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "onStreamResult first"

    invoke-virtual {v0, v8, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v3}, Lcom/coloros/translate/ui/texttranslation/p0;->z(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coloros/translate/repository/local/Conversation;->setToText(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/ui/texttranslation/p0$j;->onStop()V

    goto/16 :goto_6

    :cond_7
    iget-object v0, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    iget-object v2, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    :try_start_0
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->C(Lcom/coloros/translate/ui/texttranslation/p0;)J

    move-result-wide v3

    const-wide/16 v5, 0x14

    cmp-long v3, v3, v5

    if-gez v3, :cond_8

    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v4, "onStreamResult quick"

    invoke-virtual {v3, v8, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x50

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_8
    :goto_2
    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->z(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/coloros/translate/repository/local/Conversation;->setToText(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/ui/texttranslation/p0$j;->onStop()V

    goto :goto_3

    :cond_9
    invoke-virtual {v0, v9, v12}, Lcom/coloros/translate/ui/texttranslation/p0;->K(ZZ)V

    :goto_3
    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStreamResult failure : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_6
    iget-object v0, v1, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/coloros/translate/ui/texttranslation/p0;->D(Lcom/coloros/translate/ui/texttranslation/p0;J)V

    :goto_7
    return-void
.end method

.method public onStreamTranslateStart(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;->onStreamTranslateStart(Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationViewModel"

    const-string v2, "translate onStreamTranslateStart"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v0, p1}, Lcom/coloros/translate/ui/texttranslation/p0;->G(Lcom/coloros/translate/ui/texttranslation/p0;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/texttranslation/p0;->z0(Z)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/coloros/translate/repository/local/Conversation;->setToText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/coloros/translate/ui/texttranslation/p0;->D(Lcom/coloros/translate/ui/texttranslation/p0;J)V

    return-void
.end method

.method public onTranslateStart(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationViewModel"

    const-string v2, "translate onTranslateStart"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/texttranslation/p0;->z0(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/local/Conversation;->setToText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0$j;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/p0;->E(Lcom/coloros/translate/ui/texttranslation/p0;Ljava/lang/String;)V

    return-void
.end method
