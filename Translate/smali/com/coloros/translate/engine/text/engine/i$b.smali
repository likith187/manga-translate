.class final Lcom/coloros/translate/engine/text/engine/i$b;
.super Lcom/coloros/translate/engine/IOfflineTranslateListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/text/engine/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/coloros/translate/engine/ITranslateListener;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/coloros/translate/engine/ITranslateListener;Z)V
    .locals 1

    const-string v0, "mResultListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/engine/IOfflineTranslateListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/text/engine/i$b;->a:Lcom/coloros/translate/engine/ITranslateListener;

    iput-boolean p2, p0, Lcom/coloros/translate/engine/text/engine/i$b;->b:Z

    return-void
.end method


# virtual methods
.method public onOfflineError(Ljava/lang/String;I)V
    .locals 1

    const-string p2, "msg"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/i$b;->a:Lcom/coloros/translate/engine/ITranslateListener;

    const-string p1, ""

    const-string p2, "error info"

    const/16 v0, 0x66

    invoke-interface {p0, p1, p2, v0}, Lcom/coloros/translate/engine/ITranslateListener;->onError(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onOfflineError: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "TextTranslateEngine"

    invoke-virtual {p1, p2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onOfflineResult(Ljava/util/List;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "list"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "transate result has calback"

    const-string v4, "TextTranslateEngine"

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/coloros/translate/engine/text/engine/i$b;->b:Z

    const-string v5, "translate result="

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/info/TranslateResult;

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/TranslateResult;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v0, Lcom/coloros/translate/engine/text/engine/i$b;->a:Lcom/coloros/translate/engine/ITranslateListener;

    new-instance v2, Lcom/coloros/translate/engine/info/OnLineTranslateResult;

    const/16 v15, 0x1ff

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v16}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->r(Lcom/coloros/translate/engine/info/TranslateResult;)Lcom/coloros/translate/engine/info/OnLineTranslateResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/coloros/translate/engine/ITranslateListener;->onResult(Lcom/coloros/translate/engine/info/OnLineTranslateResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

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

    goto/16 :goto_2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, v0, Lcom/coloros/translate/engine/text/engine/i$b;->a:Lcom/coloros/translate/engine/ITranslateListener;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/translate/engine/info/TranslateResult;

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

    move-object/from16 v18, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v5 .. v16}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v18

    invoke-virtual {v5, v3}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->r(Lcom/coloros/translate/engine/info/TranslateResult;)Lcom/coloros/translate/engine/info/OnLineTranslateResult;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2}, Lcom/coloros/translate/engine/ITranslateListener;->onResultList(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
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

    :goto_2
    return-void
.end method

.method public onOfflineStart()V
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/i$b;->a:Lcom/coloros/translate/engine/ITranslateListener;

    const-string v0, ""

    invoke-interface {p0, v0}, Lcom/coloros/translate/engine/ITranslateListener;->onTranslateStart(Ljava/lang/String;)V

    return-void
.end method
