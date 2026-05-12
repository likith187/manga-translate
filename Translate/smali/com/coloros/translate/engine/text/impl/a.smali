.class public final Lcom/coloros/translate/engine/text/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/text/impl/a$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/coloros/translate/engine/text/impl/a$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/coloros/translate/engine/ITranslateListener;

.field private c:Ljava/lang/String;

.field private d:Z

.field private final e:Ljava/lang/Object;

.field private final f:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/engine/text/impl/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/text/impl/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/engine/text/impl/a;->g:Lcom/coloros/translate/engine/text/impl/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/text/impl/a;->a:Landroid/content/Context;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/text/impl/a;->e:Ljava/lang/Object;

    new-instance p1, Lcom/coloros/translate/engine/text/impl/a$b;

    invoke-direct {p1, p0}, Lcom/coloros/translate/engine/text/impl/a$b;-><init>(Lcom/coloros/translate/engine/text/impl/a;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/engine/text/impl/a;->f:Ln8/j;

    sget-object p1, Lcom/coloros/translate/observer/c;->o:Lcom/coloros/translate/observer/c$a;

    invoke-direct {p0}, Lcom/coloros/translate/engine/text/impl/a;->i()Landroidx/lifecycle/b0;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/translate/observer/c$a;->c(Landroidx/lifecycle/b0;)V

    return-void
.end method

.method public static final synthetic a(Lcom/coloros/translate/engine/text/impl/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/coloros/translate/engine/text/impl/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/coloros/translate/engine/text/impl/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/coloros/translate/engine/text/impl/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic c(Lcom/coloros/translate/engine/text/impl/a;)Lcom/coloros/translate/engine/ITranslateListener;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/text/impl/a;->b:Lcom/coloros/translate/engine/ITranslateListener;

    return-object p0
.end method

.method public static final synthetic d(Lcom/coloros/translate/engine/text/impl/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/engine/text/impl/a;->d:Z

    return-void
.end method

.method private final e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 16

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/translation/model/TextTranslateData;

    new-instance v15, Lcom/coloros/translate/engine/info/OnLineTranslateResult;

    const/16 v13, 0x1ff

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v15

    invoke-direct/range {v3 .. v14}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2}, Lcom/oplus/aiunit/translation/model/TextTranslateData;->getSourceText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->m(Ljava/lang/String;)V

    move-object/from16 v3, p1

    invoke-virtual {v15, v3}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->j(Ljava/lang/String;)V

    move-object/from16 v4, p2

    invoke-virtual {v15, v4}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->p(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Lcom/oplus/aiunit/translation/model/TextTranslateData;->getTranslateText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v5}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->q(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v15, v2}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->h(Ljava/util/List;)V

    invoke-virtual {v15, v6}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->l(Z)V

    move/from16 v2, p4

    invoke-virtual {v15, v2}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->g(I)V

    move-object/from16 v5, p5

    invoke-virtual {v15, v5}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->n(Ljava/lang/String;)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/coloros/translate/engine/text/impl/a;->b:Lcom/coloros/translate/engine/ITranslateListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/coloros/translate/engine/ITranslateListener;->onResultList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToListTranslateResult error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AiUnitOnlineTextTranslateClient"

    invoke-virtual {v1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "AiUnitOnlineTextTranslateClient"

    :try_start_0
    new-instance v15, Lcom/coloros/translate/engine/info/OnLineTranslateResult;

    const/16 v13, 0x1ff

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v15

    invoke-direct/range {v3 .. v14}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v3, v0, Lcom/coloros/translate/engine/text/impl/a;->c:Ljava/lang/String;

    invoke-virtual {v15, v3}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->m(Ljava/lang/String;)V

    move-object/from16 v3, p1

    invoke-virtual {v15, v3}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->j(Ljava/lang/String;)V

    move-object/from16 v3, p2

    invoke-virtual {v15, v3}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->p(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15, v4}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->q(Ljava/util/List;)V

    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->l(Z)V

    move/from16 v4, p4

    invoke-virtual {v15, v4}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->g(I)V

    move-object/from16 v4, p5

    invoke-virtual {v15, v4}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->n(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/aiunit/translation/model/TextTranslateData;

    invoke-virtual {v5}, Lcom/oplus/aiunit/translation/model/TextTranslateData;->getIfSafe()Z

    move-result v5

    invoke-virtual {v15, v5}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->o(Z)V

    sget-object v5, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/aiunit/translation/model/TextTranslateData;

    invoke-virtual {v4}, Lcom/oplus/aiunit/translation/model/TextTranslateData;->getIfSafe()Z

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertToSingleTranslateResult data[0].ifSafe : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static/range {p2 .. p2}, Lb2/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/aiunit/translation/model/TextTranslateData;

    invoke-virtual {v5}, Lcom/oplus/aiunit/translation/model/TextTranslateData;->getTranslateText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v15}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "join(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/coloros/translate/engine/text/impl/a;->b:Lcom/coloros/translate/engine/ITranslateListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, v15}, Lcom/coloros/translate/engine/ITranslateListener;->onResult(Lcom/coloros/translate/engine/info/OnLineTranslateResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertToSingleTranslateResult error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    return-void
.end method

.method private final h(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Lcom/coloros/translate/engine/text/impl/a;->j()V

    new-instance v7, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;

    invoke-direct {v7}, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;-><init>()V

    invoke-virtual {v7, p5}, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->setSource(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->setTarget(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->setText(Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->setEnableLLM(Z)V

    invoke-static {}, Lcom/coloros/translate/utils/o;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPersistRegion(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->setRegion(Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/engine/text/impl/a$c;

    invoke-direct {v0, p1, p2, p5, p3}, Lcom/coloros/translate/engine/text/impl/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/coloros/translate/engine/text/impl/a;->k(Lw8/a;)V

    sget-object p3, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    new-instance v8, Lcom/coloros/translate/engine/text/impl/a$d;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v7

    move-object v3, p5

    move v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/coloros/translate/engine/text/impl/a$d;-><init>(Lcom/coloros/translate/engine/text/impl/a;Lcom/oplus/aiunit/translation/request/TextTranslateRequest;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v7, v8}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->generateTextTranslate(Lcom/oplus/aiunit/translation/request/TextTranslateRequest;Lcom/oplus/aiunit/translation/callback/TextTranslateCallback;)V

    return-void
.end method

.method private final i()Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/text/impl/a;->f:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private final j()V
    .locals 6

    iget-boolean v0, p0, Lcom/coloros/translate/engine/text/impl/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/text/impl/a;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "AiUnitOnlineTextTranslateClient"

    iget-boolean v3, p0, Lcom/coloros/translate/engine/text/impl/a;->d:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initTranslate if necessary:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/coloros/translate/engine/text/impl/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const-string v3, "AiUnitOnlineTextTranslateClient"

    const-string v4, "initTranslate"

    invoke-virtual {v1, v3, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    iget-object v3, p0, Lcom/coloros/translate/engine/text/impl/a;->a:Landroid/content/Context;

    new-instance v4, Lcom/coloros/translate/engine/text/impl/a$e;

    invoke-direct {v4}, Lcom/coloros/translate/engine/text/impl/a$e;-><init>()V

    new-instance v5, Lcom/coloros/translate/engine/text/impl/a$f;

    invoke-direct {v5, v2, p0}, Lcom/coloros/translate/engine/text/impl/a$f;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/coloros/translate/engine/text/impl/a;)V

    invoke-virtual {v1, v3, v4, v5}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->initTranslate(Landroid/content/Context;Lcom/oplus/aiunit/translation/callback/ITranslateConfig;Lcom/oplus/aiunit/translation/callback/Callback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_3
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "AiUnitOnlineTextTranslateClient"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initTranslate e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private final k(Lw8/a;)V
    .locals 0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Lcom/coloros/translate/utils/c0$a;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lw8/a;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final g()V
    .locals 2

    sget-object v0, Lcom/coloros/translate/observer/c;->o:Lcom/coloros/translate/observer/c$a;

    invoke-direct {p0}, Lcom/coloros/translate/engine/text/impl/a;->i()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/observer/c$a;->e(Landroidx/lifecycle/b0;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/engine/text/impl/a;->b:Lcom/coloros/translate/engine/ITranslateListener;

    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V
    .locals 9

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "translateSingleText"

    const-string v2, "AiUnitOnlineTextTranslateClient"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/coloros/translate/engine/text/impl/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/coloros/translate/engine/text/impl/a;->b:Lcom/coloros/translate/engine/ITranslateListener;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-static {v6, p3}, Lb2/a;->b(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sget-object v0, Lz8/c;->Default:Lz8/c$a;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lz8/c$a;->nextInt(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "-sensitive"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :try_start_0
    iget-object p3, p0, Lcom/coloros/translate/engine/text/impl/a;->b:Lcom/coloros/translate/engine/ITranslateListener;

    if-eqz p3, :cond_1

    invoke-interface {p3, v8}, Lcom/coloros/translate/engine/ITranslateListener;->onTranslateStart(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    sget-object p4, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "translateSingleText error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, v2, p3}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/coloros/translate/engine/text/impl/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/ITranslateListener;)V
    .locals 10

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputTextList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "translateTextList"

    const-string v2, "AiUnitOnlineTextTranslateClient"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/coloros/translate/engine/text/impl/a;->b:Lcom/coloros/translate/engine/ITranslateListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p4, Lz8/c;->Default:Lz8/c$a;

    const/16 v3, 0x64

    invoke-virtual {p4, v3}, Lz8/c$a;->nextInt(I)I

    move-result p4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "-sensitive"

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :try_start_0
    iget-object p4, p0, Lcom/coloros/translate/engine/text/impl/a;->b:Lcom/coloros/translate/engine/ITranslateListener;

    if-eqz p4, :cond_0

    invoke-interface {p4, v9}, Lcom/coloros/translate/engine/ITranslateListener;->onTranslateStart(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "translateTextList error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, v2, p4}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v8, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/coloros/translate/engine/text/impl/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method
