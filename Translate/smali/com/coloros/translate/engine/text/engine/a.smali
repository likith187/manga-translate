.class public final Lcom/coloros/translate/engine/text/engine/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/text/engine/a$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/coloros/translate/engine/text/engine/a$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lc2/a;

.field private c:Z

.field private final d:Ljava/lang/Object;

.field private final e:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/engine/text/engine/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/text/engine/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/engine/text/engine/a;->f:Lcom/coloros/translate/engine/text/engine/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/text/engine/a;->a:Landroid/content/Context;

    new-instance p1, Lc2/a;

    invoke-direct {p1}, Lc2/a;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/text/engine/a;->b:Lc2/a;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/text/engine/a;->d:Ljava/lang/Object;

    new-instance p1, Lcom/coloros/translate/engine/text/engine/a$b;

    invoke-direct {p1, p0}, Lcom/coloros/translate/engine/text/engine/a$b;-><init>(Lcom/coloros/translate/engine/text/engine/a;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/engine/text/engine/a;->e:Ln8/j;

    sget-object p1, Lcom/coloros/translate/observer/c;->o:Lcom/coloros/translate/observer/c$a;

    invoke-direct {p0}, Lcom/coloros/translate/engine/text/engine/a;->f()Landroidx/lifecycle/b0;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/translate/observer/c$a;->c(Landroidx/lifecycle/b0;)V

    return-void
.end method

.method public static final synthetic a(Lcom/coloros/translate/engine/text/engine/a;)Lc2/a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/a;->b:Lc2/a;

    return-object p0
.end method

.method public static final synthetic b(Lcom/coloros/translate/engine/text/engine/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/engine/text/engine/a;->c:Z

    return-void
.end method

.method private final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    iget-object v0, v7, Lcom/coloros/translate/engine/text/engine/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/translate/utils/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v8}, Lcom/coloros/translate/engine/text/engine/a;->g(Ljava/lang/String;)V

    new-instance v9, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;

    invoke-direct {v9}, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;-><init>()V

    invoke-virtual {v9, v8}, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->setSource(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->setTarget(Ljava/lang/String;)V

    const/16 v17, 0x3e

    const/16 v18, 0x0

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p4

    invoke-static/range {v10 .. v18}, Lkotlin/collections/o;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lw8/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->setText(Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/engine/text/engine/a$e;

    invoke-direct {v0, v5, v6, v8, v9}, Lcom/coloros/translate/engine/text/engine/a$e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;)V

    invoke-direct {v7, v0}, Lcom/coloros/translate/engine/text/engine/a;->h(Lw8/a;)V

    new-instance v10, Lkotlin/jvm/internal/b0;

    invoke-direct {v10}, Lkotlin/jvm/internal/b0;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lkotlin/jvm/internal/b0;->element:J

    sget-object v11, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v9}, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doTranslate time start requestId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " time:0 length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "AiUnitOnlineStreamTextTranslateClient"

    invoke-virtual {v11, v12, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v13, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    new-instance v14, Lcom/coloros/translate/engine/text/engine/a$f;

    move-object v0, v14

    move-object/from16 v1, p3

    move-object v2, v10

    move-object/from16 v3, p0

    move-object v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/coloros/translate/engine/text/engine/a$f;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/b0;Lcom/coloros/translate/engine/text/engine/a;Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v9, v14}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->generateStreamTextTranslate(Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;Lcom/oplus/aiunit/translation/callback/StreamTextTranslateCallback;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v10, Lkotlin/jvm/internal/b0;->element:J

    sub-long/2addr v0, v2

    iput-wide v0, v10, Lkotlin/jvm/internal/b0;->element:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doTranslate time end requestId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/engine/text/engine/a$g;

    invoke-direct {v0, v8}, Lcom/coloros/translate/engine/text/engine/a$g;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v0}, Lcom/coloros/translate/engine/text/engine/a;->h(Lw8/a;)V

    return-void
.end method

.method private final f()Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/a;->e:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private final g(Ljava/lang/String;)V
    .locals 6

    iget-boolean v0, p0, Lcom/coloros/translate/engine/text/engine/a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/text/engine/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "AiUnitOnlineStreamTextTranslateClient"

    iget-boolean v3, p0, Lcom/coloros/translate/engine/text/engine/a;->c:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initTranslate if necessary:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/coloros/translate/engine/text/engine/a;->c:Z
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

    const-string v3, "AiUnitOnlineStreamTextTranslateClient"

    const-string v4, "initTranslate"

    invoke-virtual {v1, v3, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    iget-object v3, p0, Lcom/coloros/translate/engine/text/engine/a;->a:Landroid/content/Context;

    new-instance v4, Lcom/coloros/translate/engine/text/engine/a$h;

    invoke-direct {v4}, Lcom/coloros/translate/engine/text/engine/a$h;-><init>()V

    new-instance v5, Lcom/coloros/translate/engine/text/engine/a$i;

    invoke-direct {v5, v2, p0, p1}, Lcom/coloros/translate/engine/text/engine/a$i;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/coloros/translate/engine/text/engine/a;Ljava/lang/String;)V

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
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiUnitOnlineStreamTextTranslateClient"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initTranslate e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

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

.method private final h(Lw8/a;)V
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
.method public final c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "currentRequestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelStreamTextTranslate id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiUnitOnlineStreamTextTranslateClient"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/a;->b:Lc2/a;

    invoke-virtual {p0, p1}, Lc2/a;->k(Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/translate/engine/text/engine/a$c;

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/text/engine/a$c;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1, v0}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/observer/c;->o:Lcom/coloros/translate/observer/c$a;

    invoke-direct {p0}, Lcom/coloros/translate/engine/text/engine/a;->f()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/observer/c$a;->e(Landroidx/lifecycle/b0;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/text/engine/a;->b:Lc2/a;

    invoke-virtual {v0}, Lc2/a;->f()Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/a;->b:Lc2/a;

    invoke-virtual {p0}, Lc2/a;->j()V

    new-instance p0, Lcom/coloros/translate/engine/text/engine/a$d;

    invoke-direct {p0, v0}, Lcom/coloros/translate/engine/text/engine/a$d;-><init>(Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p0, v0, v1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V
    .locals 4

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "translateSingleText"

    const-string v2, "AiUnitOnlineStreamTextTranslateClient"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/text/engine/a;->b:Lc2/a;

    invoke-virtual {v0, p3, p5}, Lc2/a;->i(Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V

    if-eqz p5, :cond_0

    :try_start_0
    invoke-interface {p5, p3}, Lcom/coloros/translate/engine/ITranslateListener;->onStreamTranslateStart(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "translateSingleText error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, v2, p5}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez p4, :cond_1

    const-string p4, ""

    :cond_1
    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lkotlin/collections/o;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/translate/engine/text/engine/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/ITranslateListener;)V
    .locals 3

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputTextList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiUnitOnlineStreamTextTranslateClient"

    const-string v2, "translateTextList"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/text/engine/a;->b:Lc2/a;

    invoke-virtual {v0, p3, p5}, Lc2/a;->i(Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/translate/engine/text/engine/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
