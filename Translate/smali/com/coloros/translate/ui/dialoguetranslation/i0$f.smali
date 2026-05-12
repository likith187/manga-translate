.class public final Lcom/coloros/translate/ui/dialoguetranslation/i0$f;
.super Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/i0;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Lcom/coloros/translate/utils/n$a;

.field private b:Ljava/lang/String;

.field final synthetic c:Lcom/coloros/translate/ui/dialoguetranslation/i0;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/i0;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-direct {p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;-><init>()V

    new-instance p1, Lcom/coloros/translate/utils/n$a;

    invoke-direct {p1}, Lcom/coloros/translate/utils/n$a;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->a:Lcom/coloros/translate/utils/n$a;

    return-void
.end method

.method private final a(Ljava/lang/String;Z)V
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildAndAddNewConversationData asrResult : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DialogueTranslationViewModel"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->q(Lcom/coloros/translate/ui/dialoguetranslation/i0;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, v0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->r(Lcom/coloros/translate/ui/dialoguetranslation/i0;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, v0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    new-instance v15, Lcom/coloros/translate/repository/local/Conversation;

    const/16 v16, 0x719

    const/16 v17, 0x0

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object v2, v15

    move/from16 v12, p2

    move-object/from16 v19, v15

    move-object/from16 v15, v18

    invoke-direct/range {v2 .. v17}, Lcom/coloros/translate/repository/local/Conversation;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 v3, 0x1

    move-object/from16 v4, v19

    invoke-virtual {v4, v3}, Lcom/coloros/translate/repository/local/Conversation;->setRecognizeing(Z)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/coloros/translate/repository/local/Conversation;->setShowEditIcon(Z)V

    invoke-virtual {v4}, Lcom/coloros/translate/repository/local/Conversation;->isLeft()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->L()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/coloros/translate/repository/local/Conversation;->setFromLanguage(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/coloros/translate/repository/local/Conversation;->setToLanguage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/coloros/translate/repository/local/Conversation;->setFromLanguage(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/coloros/translate/repository/local/Conversation;->setToLanguage(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->z0(Lcom/coloros/translate/repository/local/Conversation;)V

    iget-object v1, v0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/coloros/translate/repository/local/Conversation;->setFromText(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->G()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v0, v0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onRtasrResult(Lcom/coloros/translate/engine/info/AsrResult;)V
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->d()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asr onRtasrResult "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DialogueTranslationViewModel"

    invoke-virtual {v0, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->U()Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsRecoding : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->a()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v1, "recordId"

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->b:Ljava/lang/String;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->t(Lcom/coloros/translate/ui/dialoguetranslation/i0;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "result msg is not this time request"

    invoke-virtual {v0, v3, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->h0()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->w0(I)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->L()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFromLanguageInPicker:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "asr_language"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Z()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLastFromLanguageCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " currentFromLanguage:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_10

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->a0()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNeedAppend : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->a0()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    const-string p0, "no result only start and stop abandon"

    invoke-virtual {v0, v3, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->a0()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->J0(I)V

    :cond_6
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Z()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->L()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->a(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-static {v2, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->o(Lcom/coloros/translate/ui/dialoguetranslation/i0;Lcom/coloros/translate/engine/info/AsrResult;)Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/repository/local/Conversation;->isRecognizeing()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/coloros/translate/repository/local/Conversation;->setRecognizeing(Z)V

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2, v5}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->F0(Z)V

    :cond_8
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->q(Lcom/coloros/translate/ui/dialoguetranslation/i0;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->x(Lcom/coloros/translate/ui/dialoguetranslation/i0;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v5}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/coloros/translate/repository/local/Conversation;->setFromText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "is remove empty"

    invoke-virtual {v0, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->d0()Landroidx/lifecycle/a0;

    move-result-object v2

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v5}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/repository/local/Conversation;->getState()I

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "remove from db"

    invoke-virtual {v0, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v2}, Lcom/coloros/translate/repository/d$a;->c()Li2/a;

    move-result-object v2

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v5}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v5

    invoke-virtual {v2, v5}, Li2/a;->b(Lcom/coloros/translate/repository/local/Conversation;)V

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->c0()Landroidx/lifecycle/a0;

    move-result-object v2

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v5}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :cond_a
    :goto_1
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_b

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/coloros/translate/repository/local/Conversation;->setShowEditIcon(Z)V

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->c0()Landroidx/lifecycle/a0;

    move-result-object v2

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :cond_b
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->r(Lcom/coloros/translate/ui/dialoguetranslation/i0;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->x(Lcom/coloros/translate/ui/dialoguetranslation/i0;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/coloros/translate/repository/local/Conversation;->setToText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->c0()Landroidx/lifecycle/a0;

    move-result-object v2

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->L()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->a(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-static {v2, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->o(Lcom/coloros/translate/ui/dialoguetranslation/i0;Lcom/coloros/translate/engine/info/AsrResult;)Ljava/lang/String;

    goto :goto_2

    :cond_d
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_f

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v2

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-static {v5, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->o(Lcom/coloros/translate/ui/dialoguetranslation/i0;Lcom/coloros/translate/engine/info/AsrResult;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/coloros/translate/repository/local/Conversation;->setFromText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->U()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/coloros/translate/repository/local/Conversation;->setShowEditIcon(Z)V

    :cond_e
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->c0()Landroidx/lifecycle/a0;

    move-result-object p1

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :cond_f
    :goto_2
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1, v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->I0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Z()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastFromLanguageCode : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    :goto_3
    const-string p0, "currentFromLanguage is empty"

    invoke-virtual {v0, v3, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    :goto_4
    const-string p0, "asrResult is empty"

    invoke-virtual {v0, v3, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->U()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asr onStart:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogueTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->U()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->a:Lcom/coloros/translate/utils/n$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/n$a;->d(J)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->I()Landroidx/lifecycle/a0;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q0()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->I0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->N0(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->J0(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-static {p0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->y(Lcom/coloros/translate/ui/dialoguetranslation/i0;Z)V

    return-void
.end method

.method public onStatus(ILjava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->s(Lcom/coloros/translate/ui/dialoguetranslation/i0;)Lcom/coloros/translate/engine/info/AsrParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->d()I

    move-result v1

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->U()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asr code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " msg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mCommonConfig.macSilence "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsRecording:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogueTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->U()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/coloros/translate/repository/c;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->s(Lcom/coloros/translate/ui/dialoguetranslation/i0;)Lcom/coloros/translate/engine/info/AsrParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrParams;->d()I

    move-result p1

    const/16 p2, 0x4e20

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->E0(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {v0, p1}, Lcom/coloros/translate/utils/n;->H(I)V

    new-instance v3, Lcom/coloros/translate/ui/dialoguetranslation/i0$f$a;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-direct {v3, v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0$f$a;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/i0;)V

    new-instance v5, Lcom/coloros/translate/ui/dialoguetranslation/i0$f$b;

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-direct {v5, p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0$f$b;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/i0;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lcom/coloros/translate/repository/c;->b(ILjava/lang/String;Lw8/a;Lw8/a;Lw8/a;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->U()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asr onStop mIsRecording : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogueTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->a0()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNeedAppend : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->a:Lcom/coloros/translate/utils/n$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/coloros/translate/utils/n$a;->c(J)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->a0()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->J0(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->a0()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->J0(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/coloros/translate/repository/local/Conversation;->setRecognizeing(Z)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/coloros/translate/repository/local/Conversation;->setShowEditIcon(Z)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->c0()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Z()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->X()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->W()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->l0()Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/coloros/translate/R$string;->no_sound_detected3:I

    const/4 v4, 0x0

    invoke-static {v1, v5, v3, v4}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1, v5}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->F0(Z)V

    :cond_4
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->I()Landroidx/lifecycle/a0;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->T()Z

    move-result v1

    if-nez v1, :cond_5

    const-string p0, "onStop() mIsReadyToPlay mIsReadyToPlay"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_6

    const-string p0, "onStop() conversion is empty"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->q0(Lcom/coloros/translate/repository/local/Conversation;)V

    :cond_7
    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string v1, "2"

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->a:Lcom/coloros/translate/utils/n$a;

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/n;->P(Ljava/lang/String;Lcom/coloros/translate/utils/n$a;)V

    return-void
.end method

.method public onTranslateResult(Lcom/coloros/translate/engine/info/AsrTranslateResult;)V
    .locals 12

    const-string v0, "asrTranslateResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTranslateResult result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogueTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->a0()I

    move-result v1

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->d()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNeedAppend : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , type : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->a0()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->a()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "translate_is_safe"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->y(Lcom/coloros/translate/ui/dialoguetranslation/i0;Z)V

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->d()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrTranslateResult;->a()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "recordId"

    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-static {v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->v(Lcom/coloros/translate/ui/dialoguetranslation/i0;)Z

    move-result v4

    xor-int/2addr v4, v5

    const-string v6, "dialog"

    invoke-virtual {v1, v3, v6, v4}, Lcom/coloros/translate/utils/n;->V(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->v(Lcom/coloros/translate/ui/dialoguetranslation/i0;)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTranslateResult isResultSafe : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-static {v1, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->p(Lcom/coloros/translate/ui/dialoguetranslation/i0;Lcom/coloros/translate/engine/info/AsrTranslateResult;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/coloros/translate/repository/local/Conversation;->setState(I)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "\\n"

    const-string v8, "\n"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/r;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "onTranslateResult not valid result"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v0

    sget-object v1, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/d$a;->c()Li2/a;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v2

    invoke-virtual {v1, v2}, Li2/a;->g(Lcom/coloros/translate/repository/local/Conversation;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/repository/local/Conversation;->setId(J)V

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/translate/repository/local/Conversation;->setToText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/coloros/translate/repository/local/Conversation;->setTranslated(Z)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->c0()Landroidx/lifecycle/a0;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    sget-object p1, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/d$a;->c()Li2/a;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->c:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object p0

    invoke-virtual {p1, p0}, Li2/a;->h(Lcom/coloros/translate/repository/local/Conversation;)V

    return-void
.end method

.method public onVoiceVolume(D)V
    .locals 0

    return-void
.end method
