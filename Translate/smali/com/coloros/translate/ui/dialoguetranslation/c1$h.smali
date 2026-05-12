.class public final Lcom/coloros/translate/ui/dialoguetranslation/c1$h;
.super Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/c1;->p0(Lcom/coloros/translate/repository/local/Conversation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/repository/local/Conversation;

.field final synthetic b:Lcom/coloros/translate/ui/dialoguetranslation/c1;


# direct methods
.method constructor <init>(Lcom/coloros/translate/repository/local/Conversation;Lcom/coloros/translate/ui/dialoguetranslation/c1;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-direct {p0}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;-><init>()V

    return-void
.end method

.method private final onStop()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "translate onStop"

    const-string v2, "FaceToFaceTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->J()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v1, v3}, Lcom/coloros/translate/repository/local/Conversation;->setTranslated(Z)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/coloros/translate/repository/local/Conversation;->setRecognizeing(Z)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    sget-object v3, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v3}, Lcom/coloros/translate/repository/d$a;->c()Li2/a;

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v3, v4}, Li2/a;->g(Lcom/coloros/translate/repository/local/Conversation;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/coloros/translate/repository/local/Conversation;->setId(J)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/Conversation;->isLeft()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->Y()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->N()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->L()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->Q()Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "translate playText:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->Q()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "onStop() mIsReadyToPlay mIsReadyToPlay"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "onStop() conversion is empty"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->P()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->b0(Lcom/coloros/translate/repository/local/Conversation;)V

    :cond_4
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
    const-string v7, "dialog"

    move v5, p3

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/coloros/translate/utils/n;->g0(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "translate onError : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , errorCode : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FaceToFaceTranslationViewModel"

    invoke-virtual {p1, v0, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->J()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p1, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {p1}, Lcom/coloros/translate/observer/e;->k()Z

    move-result p1

    if-nez p1, :cond_3

    sget p1, Lcom/coloros/translate/R$string;->network_error:I

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p1, v1, p2, v0}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p1, v2}, Lcom/coloros/translate/repository/local/Conversation;->setTranslated(Z)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p1, v2}, Lcom/coloros/translate/repository/local/Conversation;->setState(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {p1, p3}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->A(Lcom/coloros/translate/ui/dialoguetranslation/c1;I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->onStop()V

    return-void
.end method

.method public onResult(Lcom/coloros/translate/engine/info/OnLineTranslateResult;)V
    .locals 9

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "translate onResult"

    const-string v2, "FaceToFaceTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->a()I

    move-result v1

    const v3, 0x186be

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->f()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    sget-object v3, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->a()I

    move-result v4

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dialog"

    const/4 v7, 0x1

    const-string v8, "[SDK][SDK_SENSITIVE]"

    invoke-virtual/range {v3 .. v8}, Lcom/coloros/translate/utils/n;->g0(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/coloros/translate/repository/local/Conversation;->setState(I)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v3, p1

    goto :goto_3

    :cond_3
    :goto_2
    const-string p1, ""

    goto :goto_1

    :goto_3
    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "\\n"

    const-string v5, "\n"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/r;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "translate text:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v0, p1}, Lcom/coloros/translate/repository/local/Conversation;->setToText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/translate/repository/local/Conversation;->setTranslated(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1$h;->onStop()V

    return-void
.end method

.method public onResultList(Ljava/util/List;)V
    .locals 1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "FaceToFaceTranslationViewModel"

    const-string v0, "translate onResultList"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTranslateStart(Ljava/lang/String;)V
    .locals 1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "FaceToFaceTranslationViewModel"

    const-string v0, "translate onTranslateStart"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
