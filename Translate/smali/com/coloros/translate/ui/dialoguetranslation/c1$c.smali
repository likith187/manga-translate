.class public final Lcom/coloros/translate/ui/dialoguetranslation/c1$c;
.super Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/c1;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Lcom/coloros/translate/utils/n$a;

.field private b:Ljava/lang/String;

.field final synthetic c:Lcom/coloros/translate/ui/dialoguetranslation/c1;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/c1;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-direct {p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;-><init>()V

    new-instance p1, Lcom/coloros/translate/utils/n$a;

    invoke-direct {p1}, Lcom/coloros/translate/utils/n$a;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->a:Lcom/coloros/translate/utils/n$a;

    return-void
.end method

.method private final a()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->r(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v2, v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->x(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Z

    move-result v2

    const/4 v15, 0x1

    if-ne v2, v15, :cond_0

    move v12, v15

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v12, v2

    :goto_0
    new-instance v14, Lcom/coloros/translate/repository/local/Conversation;

    const/16 v16, 0x719

    const/16 v17, 0x0

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v2, v14

    move-object/from16 v20, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    invoke-direct/range {v2 .. v17}, Lcom/coloros/translate/repository/local/Conversation;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-object/from16 v4, v20

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/coloros/translate/repository/local/Conversation;->setRecognizeing(Z)V

    invoke-virtual {v4}, Lcom/coloros/translate/repository/local/Conversation;->isLeft()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->t(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/coloros/translate/repository/local/Conversation;->setFromLanguage(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->w(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/coloros/translate/repository/local/Conversation;->setToLanguage(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->w(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/coloros/translate/repository/local/Conversation;->setFromLanguage(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->t(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/coloros/translate/repository/local/Conversation;->setToLanguage(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1, v4}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->C(Lcom/coloros/translate/ui/dialoguetranslation/c1;Lcom/coloros/translate/repository/local/Conversation;)V

    iget-object v1, v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->x(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->N()Ljava/util/List;

    move-result-object v1

    iget-object v0, v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->Y()Ljava/util/List;

    move-result-object v1

    iget-object v0, v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method


# virtual methods
.method public onRtasrResult(Lcom/coloros/translate/engine/info/AsrResult;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->a()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "recordId"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->b:Ljava/lang/String;

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asr onRtasrResult resultId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FaceToFaceTranslationViewModel"

    invoke-virtual {v2, v3, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->d()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v2, v0}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asr onRtasrResult result: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->v(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "onRtasrResult result msg is not this time request"

    invoke-virtual {v2, v3, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->M()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "onRtasrResult conversion data is not recognizing"

    invoke-virtual {v2, v3, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->B(Lcom/coloros/translate/ui/dialoguetranslation/c1;I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->y(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/Conversation;->isRecognizeing()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRtasrResult mLastRequestId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isRecognizeing: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/Conversation;->isRecognizeing()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->y(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->v(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v1, p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->p(Lcom/coloros/translate/ui/dialoguetranslation/c1;Lcom/coloros/translate/engine/info/AsrResult;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/translate/repository/local/Conversation;->setFromText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->x(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->U()Landroidx/lifecycle/a0;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->V()Landroidx/lifecycle/a0;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->a()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrResult;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/translate/repository/local/Conversation;->setFromText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->L()Landroidx/lifecycle/a0;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v1, p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->p(Lcom/coloros/translate/ui/dialoguetranslation/c1;Lcom/coloros/translate/engine/info/AsrResult;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/translate/repository/local/Conversation;->setFromText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->x(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->U()Landroidx/lifecycle/a0;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->V()Landroidx/lifecycle/a0;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_9
    :goto_2
    const-string p0, "onRtasrResult asrResult.voiceResult is empty"

    invoke-virtual {v2, v3, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "FaceToFaceTranslationViewModel"

    const-string v3, "asr onStart"

    invoke-virtual {v1, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->J()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->a:Lcom/coloros/translate/utils/n$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/coloros/translate/utils/n$a;->d(J)V

    iget-object v1, v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->M()Landroidx/lifecycle/a0;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->N()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->N()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v2

    const/16 v16, 0x7ff

    const/16 v17, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v17}, Lcom/coloros/translate/repository/local/Conversation;->copy$default(Lcom/coloros/translate/repository/local/Conversation;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->C(Lcom/coloros/translate/ui/dialoguetranslation/c1;Lcom/coloros/translate/repository/local/Conversation;)V

    :cond_0
    iget-object v1, v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/coloros/translate/repository/local/Conversation;->setFromText(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->o0()V

    return-void
.end method

.method public onStatus(ILjava/lang/String;)V
    .locals 10

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {v0, p1}, Lcom/coloros/translate/utils/n;->M(I)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->s(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/engine/info/AsrParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->d()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatus asr code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , msg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , macSilence : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceToFaceTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/coloros/translate/ui/dialoguetranslation/c1$c$a;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-direct {v5, v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1$c$a;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/c1;)V

    new-instance v7, Lcom/coloros/translate/ui/dialoguetranslation/c1$c$b;

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-direct {v7, p1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1$c$b;-><init>(ILcom/coloros/translate/ui/dialoguetranslation/c1;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-object v4, p2

    invoke-static/range {v3 .. v9}, Lcom/coloros/translate/repository/c;->b(ILjava/lang/String;Lw8/a;Lw8/a;Lw8/a;ILjava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/Conversation;->isRecognizeing()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asr onStop isRecognizing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceToFaceTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->a:Lcom/coloros/translate/utils/n$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/coloros/translate/utils/n$a;->c(J)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->M()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "onStop reject"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/Conversation;->isRecognizeing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->S()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->R()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/coloros/translate/R$string;->no_sound_detected3:I

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->h0(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v0, v2, v4}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->D(Lcom/coloros/translate/ui/dialoguetranslation/c1;Lcom/coloros/translate/repository/local/Conversation;Z)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->u(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/local/Conversation;->setRecognizeing(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->c:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->M()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string v1, "4"

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->a:Lcom/coloros/translate/utils/n$a;

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/n;->P(Ljava/lang/String;Lcom/coloros/translate/utils/n$a;)V

    return-void
.end method

.method public onTranslateResult(Lcom/coloros/translate/engine/info/AsrTranslateResult;)V
    .locals 1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "FaceToFaceTranslationViewModel"

    const-string v0, "asr onTranslateResult"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVoiceVolume(D)V
    .locals 0

    return-void
.end method
