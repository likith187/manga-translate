.class final Lcom/coloros/translate/engine/text/engine/d$b;
.super Lcom/coloros/translate/engine/IOfflineTranslateListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/text/engine/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/coloros/translate/engine/ITranslateListener;

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/IOfflineTranslateListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/text/engine/d$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/engine/text/engine/d$b;->b:Lcom/coloros/translate/engine/ITranslateListener;

    iput-boolean p3, p0, Lcom/coloros/translate/engine/text/engine/d$b;->c:Z

    return-void
.end method


# virtual methods
.method public onOfflineError(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    iget-object p1, p0, Lcom/coloros/translate/engine/text/engine/d$b;->b:Lcom/coloros/translate/engine/ITranslateListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/d$b;->a:Ljava/lang/String;

    const-string p2, "error info"

    const/16 v0, 0x66

    invoke-interface {p1, p0, p2, v0}, Lcom/coloros/translate/engine/ITranslateListener;->onStreamError(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onOfflineError:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "StreamTextTranslateEngine"

    invoke-virtual {p1, p2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onOfflineResult(Ljava/util/List;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "list"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v3, v0, Lcom/coloros/translate/engine/text/engine/d$b;->b:Lcom/coloros/translate/engine/ITranslateListener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOfflineResult result has calback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StreamTextTranslateEngine"

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/coloros/translate/engine/text/engine/d$b;->c:Z

    const/4 v5, 0x0

    const-string v6, "translate result="

    if-eqz v3, :cond_1

    :try_start_0
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/info/TranslateResult;

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/TranslateResult;->c()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/coloros/translate/engine/text/engine/d$b;->b:Lcom/coloros/translate/engine/ITranslateListener;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/coloros/translate/engine/text/engine/d$b;->a:Ljava/lang/String;

    new-instance v15, Lcom/coloros/translate/engine/info/OnLineTranslateResult;

    const/16 v16, 0x1ff

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v5, v15

    move-object v3, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v5 .. v16}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->r(Lcom/coloros/translate/engine/info/TranslateResult;)Lcom/coloros/translate/engine/info/OnLineTranslateResult;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v1}, Lcom/coloros/translate/engine/ITranslateListener;->onStreamResult(Ljava/lang/String;ZLcom/coloros/translate/engine/info/OnLineTranslateResult;)V

    sget-object v5, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v5}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOfflineResult1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1
    :try_start_1
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/coloros/translate/engine/text/engine/d$b;->b:Lcom/coloros/translate/engine/ITranslateListener;

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/coloros/translate/engine/text/engine/d$b;->a:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/translate/engine/info/TranslateResult;

    new-instance v15, Lcom/coloros/translate/engine/info/OnLineTranslateResult;

    const/16 v16, 0x1ff

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object v6, v15

    move-object/from16 v19, v15

    move/from16 v15, v18

    invoke-direct/range {v6 .. v17}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v6, v19

    invoke-virtual {v6, v5}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->r(Lcom/coloros/translate/engine/info/TranslateResult;)Lcom/coloros/translate/engine/info/OnLineTranslateResult;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_2
    invoke-interface {v2, v0, v3}, Lcom/coloros/translate/engine/ITranslateListener;->onStreamResultList(Ljava/lang/String;Ljava/util/List;)V

    sget-object v5, Ln8/h0;->INSTANCE:Ln8/h0;

    :cond_3
    invoke-static {v5}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

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

    if-eqz v0, :cond_4

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOfflineResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_6
    return-void
.end method

.method public onOfflineStart()V
    .locals 3

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object v0, p0, Lcom/coloros/translate/engine/text/engine/d$b;->b:Lcom/coloros/translate/engine/ITranslateListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/d$b;->a:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/coloros/translate/engine/ITranslateListener;->onStreamTranslateStart(Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStreamTranslateStart error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "StreamTextTranslateEngine"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
