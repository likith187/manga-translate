.class public final Lcom/coloros/translate/ui/dialoguetranslation/i0$j;
.super Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/i0;->S0(Lcom/coloros/translate/repository/local/Conversation;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/dialoguetranslation/i0;

.field final synthetic b:Lcom/coloros/translate/repository/local/Conversation;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/i0;Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->a:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-direct {p0}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;-><init>()V

    return-void
.end method

.method private final onStop()V
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onTranslate Stop"

    const-string v2, "DialogueTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->a:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->H0(Z)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/coloros/translate/repository/local/Conversation;->setTranslated(Z)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v1, v3}, Lcom/coloros/translate/repository/local/Conversation;->setRecognizeing(Z)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    sget-object v4, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v4}, Lcom/coloros/translate/repository/d$a;->c()Li2/a;

    move-result-object v4

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v4, v5}, Li2/a;->g(Lcom/coloros/translate/repository/local/Conversation;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/coloros/translate/repository/local/Conversation;->setId(J)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->a:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->c0()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->a:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->T()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "onStop() mIsReadyToPlay and return"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->a:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1, v3}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->F0(Z)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "onStop() conversion is empty"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->a:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->a:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->q0(Lcom/coloros/translate/repository/local/Conversation;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x186be

    if-ne p3, v0, :cond_0

    const-string v1, "SDK_SENSITIVE"

    goto :goto_0

    :cond_0
    const-string v1, "SDK_ERROR"

    :goto_0
    if-nez p2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SDK]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v4, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v0, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move v8, v1

    :goto_2
    const-string v7, "dialog_text"

    move v5, p3

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/coloros/translate/utils/n;->g0(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text translate on error : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , errorCode : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DialogueTranslationViewModel"

    invoke-virtual {p1, v0, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->a:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1, v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->H0(Z)V

    sget-object p1, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {p1}, Lcom/coloros/translate/observer/e;->k()Z

    move-result p1

    if-nez p1, :cond_3

    sget p1, Lcom/coloros/translate/R$string;->network_error:I

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p1, v1, p2, v0}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p1, v2}, Lcom/coloros/translate/repository/local/Conversation;->setTranslated(Z)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p1, v2}, Lcom/coloros/translate/repository/local/Conversation;->setState(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->a:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-static {p1, p3}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->w(Lcom/coloros/translate/ui/dialoguetranslation/i0;I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->onStop()V

    return-void
.end method

.method public onResult(Lcom/coloros/translate/engine/info/OnLineTranslateResult;)V
    .locals 10

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "translate onResult"

    const-string v2, "DialogueTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x186be

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->a()I

    move-result v3

    if-ne v3, v1, :cond_0

    sget-object v4, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->a()I

    move-result v5

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->c()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dialog_text"

    const/4 v8, 0x1

    const-string v9, "[SDK][SDK_SENSITIVE]"

    invoke-virtual/range {v4 .. v9}, Lcom/coloros/translate/utils/n;->g0(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->a()I

    move-result v5

    if-eq v5, v1, :cond_2

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->f()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "translate onResult isResultSensitive : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->c()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dialog_text"

    invoke-virtual {v5, v6, v7, v1}, Lcom/coloros/translate/utils/n;->V(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->onStop()V

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v1, v4}, Lcom/coloros/translate/repository/local/Conversation;->setState(I)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    move-object v4, p1

    goto :goto_4

    :cond_5
    :goto_3
    const-string p1, ""

    goto :goto_2

    :goto_4
    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "\\n"

    const-string v6, "\n"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/r;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/coloros/translate/utils/c0$a;->l()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, p1}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "translate onResult result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v0, p1}, Lcom/coloros/translate/repository/local/Conversation;->setToText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p1, v3}, Lcom/coloros/translate/repository/local/Conversation;->setTranslated(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->onStop()V

    return-void
.end method

.method public onResultList(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public onTranslateStart(Ljava/lang/String;)V
    .locals 2

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "DialogueTranslationViewModel"

    const-string v1, "onTranslateStart"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$j;->a:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->H0(Z)V

    return-void
.end method
