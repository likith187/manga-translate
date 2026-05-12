.class public final Lcom/coloros/translate/engine/text/engine/a$f;
.super Lcom/coloros/translate/engine/text/engine/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/text/engine/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lkotlin/jvm/internal/b0;

.field final synthetic d:Lcom/coloros/translate/engine/text/engine/a;

.field final synthetic e:Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/b0;Lcom/coloros/translate/engine/text/engine/a;Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/text/engine/a$f;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/engine/text/engine/a$f;->c:Lkotlin/jvm/internal/b0;

    iput-object p3, p0, Lcom/coloros/translate/engine/text/engine/a$f;->d:Lcom/coloros/translate/engine/text/engine/a;

    iput-object p4, p0, Lcom/coloros/translate/engine/text/engine/a$f;->e:Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;

    iput-object p5, p0, Lcom/coloros/translate/engine/text/engine/a$f;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/coloros/translate/engine/text/engine/a$f;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/coloros/translate/engine/text/engine/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "requestId"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "translate_text"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p2}, Lcom/coloros/translate/engine/text/engine/c;->onDataAvailable(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v5, v0, Lcom/coloros/translate/engine/text/engine/a$f;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateStreamTextTranslate, onDataAvailable requestId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AiUnitOnlineStreamTextTranslateClient"

    invoke-virtual {v4, v6, v5}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/coloros/translate/engine/text/engine/a$f;->b:Ljava/lang/String;

    iget-object v7, v0, Lcom/coloros/translate/engine/text/engine/a$f;->c:Lkotlin/jvm/internal/b0;

    iget-object v8, v0, Lcom/coloros/translate/engine/text/engine/a$f;->e:Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;

    iget-object v9, v0, Lcom/coloros/translate/engine/text/engine/a$f;->f:Ljava/lang/String;

    iget-object v10, v0, Lcom/coloros/translate/engine/text/engine/a$f;->g:Ljava/lang/String;

    iget-object v0, v0, Lcom/coloros/translate/engine/text/engine/a$f;->d:Lcom/coloros/translate/engine/text/engine/a;

    :try_start_0
    sget-object v11, Ln8/r;->Companion:Ln8/r$a;

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, v7, Lkotlin/jvm/internal/b0;->element:J

    sub-long/2addr v11, v13

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doTranslate time onDataAvailable data requestId:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " length:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " time:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Lcom/coloros/translate/engine/info/OnLineTranslateResult;

    const/16 v21, 0x1ff

    const/16 v22, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v11, v3

    invoke-direct/range {v11 .. v22}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8}, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->m(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->j(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->p(Ljava/lang/String;)V

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->q(Ljava/util/List;)V

    invoke-static {v0}, Lcom/coloros/translate/engine/text/engine/a;->a(Lcom/coloros/translate/engine/text/engine/a;)Lc2/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lc2/a;->g(Ljava/lang/String;)Lcom/coloros/translate/engine/ITranslateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/coloros/translate/engine/ITranslateListener;->onStreamResult(Ljava/lang/String;ZLcom/coloros/translate/engine/info/OnLineTranslateResult;)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :goto_2
    :try_start_2
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertToSingleTranslateResult error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v0}, Ln8/r;->box-impl(Ljava/lang/Object;)Ln8/r;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateStreamTextTranslate, onDataAvailable error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/coloros/translate/engine/text/engine/c;->onError(Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateStreamTextTranslate, errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "AiUnitOnlineStreamTextTranslateClient"

    invoke-virtual {v0, v1, p2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/engine/text/engine/a$f;->d:Lcom/coloros/translate/engine/text/engine/a;

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/a$f;->b:Ljava/lang/String;

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p2}, Lcom/coloros/translate/engine/text/engine/a;->a(Lcom/coloros/translate/engine/text/engine/a;)Lc2/a;

    move-result-object p2

    invoke-virtual {p2, p0}, Lc2/a;->g(Ljava/lang/String;)Lcom/coloros/translate/engine/ITranslateListener;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, "generateStreamTextTranslate, onFailure:"

    if-nez p0, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reject"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    if-nez p3, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    const/16 v3, -0x7d0

    invoke-interface {p0, p1, v2, v3}, Lcom/coloros/translate/engine/ITranslateListener;->onStreamError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "generateStreamTextTranslate, onFailure error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "requestId"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p2}, Lcom/coloros/translate/engine/text/engine/c;->onFinished(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/coloros/translate/engine/text/engine/a$f;->e:Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;

    iget-object v4, v1, Lcom/coloros/translate/engine/text/engine/a$f;->f:Ljava/lang/String;

    iget-object v5, v1, Lcom/coloros/translate/engine/text/engine/a$f;->g:Ljava/lang/String;

    iget-object v6, v1, Lcom/coloros/translate/engine/text/engine/a$f;->d:Lcom/coloros/translate/engine/text/engine/a;

    iget-object v7, v1, Lcom/coloros/translate/engine/text/engine/a$f;->b:Ljava/lang/String;

    :try_start_0
    sget-object v8, Ln8/r;->Companion:Ln8/r$a;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "full_text"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v8, ""

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-static {v8}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    :goto_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "event_code"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v15, Lcom/coloros/translate/engine/info/OnLineTranslateResult;

    const/16 v19, 0x1ff

    const/16 v20, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object v9, v15

    move-object/from16 v22, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v21

    invoke-direct/range {v9 .. v20}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3}, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v9, v22

    invoke-virtual {v9, v3}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->m(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->j(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->p(Ljava/lang/String;)V

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/o;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->q(Ljava/util/List;)V

    invoke-virtual {v9, v0}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->g(I)V

    invoke-static {v6}, Lcom/coloros/translate/engine/text/engine/a;->a(Lcom/coloros/translate/engine/text/engine/a;)Lc2/a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lc2/a;->g(Ljava/lang/String;)Lcom/coloros/translate/engine/ITranslateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    invoke-interface {v0, v7, v3, v9}, Lcom/coloros/translate/engine/ITranslateListener;->onStreamResult(Ljava/lang/String;ZLcom/coloros/translate/engine/info/OnLineTranslateResult;)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v3, "AiUnitOnlineStreamTextTranslateClient"

    if-eqz v0, :cond_2

    sget-object v4, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateStreamTextTranslate onFinished e1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, v1, Lcom/coloros/translate/engine/text/engine/a$f;->d:Lcom/coloros/translate/engine/text/engine/a;

    :try_start_1
    invoke-static {v0}, Lcom/coloros/translate/engine/text/engine/a;->a(Lcom/coloros/translate/engine/text/engine/a;)Lc2/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lc2/a;->k(Ljava/lang/String;)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateStreamTextTranslate, onFinished e2:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 6

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/coloros/translate/engine/text/engine/c;->onStart(Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/text/engine/a$f;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/coloros/translate/engine/text/engine/a$f;->c:Lkotlin/jvm/internal/b0;

    iget-wide v4, v4, Lkotlin/jvm/internal/b0;->element:J

    sub-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doTranslate time onStart requestId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " time:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiUnitOnlineStreamTextTranslateClient"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/text/engine/a$f;->d:Lcom/coloros/translate/engine/text/engine/a;

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/a$f;->b:Ljava/lang/String;

    :try_start_0
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Lcom/coloros/translate/engine/text/engine/a;->a(Lcom/coloros/translate/engine/text/engine/a;)Lc2/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc2/a;->g(Ljava/lang/String;)Lcom/coloros/translate/engine/ITranslateListener;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateStreamTextTranslate, onStart requestId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reject"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/coloros/translate/engine/ITranslateListener;->onStreamTranslateStart(Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateStreamTextTranslate, onStart error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
