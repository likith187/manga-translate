.class public final Lcom/coloros/translate/engine/offline/t0;
.super Lcom/coloros/translate/engine/IOfflineTranslateEngine$Stub;
.source "SourceFile"

# interfaces
.implements La2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/offline/t0$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/coloros/translate/engine/offline/t0$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/ai/slp/library/mt/e;

.field private final c:Landroid/os/HandlerThread;

.field private final d:Landroid/os/Handler;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/engine/offline/t0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/offline/t0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/engine/offline/t0;->f:Lcom/coloros/translate/engine/offline/t0$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/engine/IOfflineTranslateEngine$Stub;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/t0;->a:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ZiyanOppoOfflineTranslateEngine_Thread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/t0;->c:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/t0;->d:Landroid/os/Handler;

    new-instance p1, Lcom/coloros/translate/engine/offline/q0;

    invoke-direct {p1, p0}, Lcom/coloros/translate/engine/offline/q0;-><init>(Lcom/coloros/translate/engine/offline/t0;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/engine/offline/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/t0;->i(Lcom/coloros/translate/engine/offline/t0;)V

    return-void
.end method

.method public static synthetic c(Ly0/a;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/t0;->k(Ly0/a;)V

    return-void
.end method

.method public static synthetic d(Lcom/ai/slp/library/base/exception/b;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/t0;->l(Lcom/ai/slp/library/base/exception/b;)V

    return-void
.end method

.method public static synthetic e(Lcom/coloros/translate/engine/offline/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/t0;->h(Lcom/coloros/translate/engine/offline/t0;)V

    return-void
.end method

.method public static synthetic f(Lcom/coloros/translate/engine/offline/t0;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/translate/engine/offline/t0;->n(Lcom/coloros/translate/engine/offline/t0;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    return-void
.end method

.method public static synthetic g(Lcom/coloros/translate/engine/offline/t0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/translate/engine/offline/t0;->m(Lcom/coloros/translate/engine/offline/t0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    return-void
.end method

.method private static final h(Lcom/coloros/translate/engine/offline/t0;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/t0;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initOfflineMtServer error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ZiyanOppoOfflineTranslateEngineNew"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final i(Lcom/coloros/translate/engine/offline/t0;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ZiyanOppoOfflineTranslateEngineNew"

    const-string v2, "mOfflineHandler , mTranslateEngine release"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/t0;->b:Lcom/ai/slp/library/mt/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ai/slp/library/impl/component/d;->stop()V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/engine/offline/t0;->b:Lcom/ai/slp/library/mt/e;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/d;->release()V

    :cond_1
    return-void
.end method

.method private final j()V
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ziyan translate init has been started"

    const-string v2, "ZiyanOppoOfflineTranslateEngineNew"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/t0;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/slp/library/SlpSdk;->install(Landroid/content/Context;)Z

    new-instance v1, Lcom/ai/slp/library/mt/e;

    invoke-direct {v1}, Lcom/ai/slp/library/mt/e;-><init>()V

    iput-object v1, p0, Lcom/coloros/translate/engine/offline/t0;->b:Lcom/ai/slp/library/mt/e;

    sget-object v3, Lcom/ai/slp/library/mt/b;->a:Lb1/d;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/t0;->a:Landroid/content/Context;

    sget-object v4, Lcom/coloros/translate/engine/offline/g0;->d:Ljava/lang/String;

    const-string v5, "MODEL_PATH"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/coloros/translate/utils/y;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, v3, p0}, Lcom/ai/slp/library/impl/component/d;->d(Lb1/d;Ljava/lang/Object;)Lb1/b;

    new-instance p0, Lcom/coloros/translate/engine/offline/r0;

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/r0;-><init>()V

    invoke-virtual {v1, p0}, Lcom/ai/slp/library/impl/component/d;->O(Lc1/b;)V

    new-instance p0, Lcom/coloros/translate/engine/offline/s0;

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/s0;-><init>()V

    invoke-virtual {v1, p0}, Lcom/ai/slp/library/impl/component/d;->N(Lc1/a;)V

    invoke-virtual {v1}, Lcom/ai/slp/library/impl/component/d;->start()V

    const-string p0, "ziyan translate init has been end"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final k(Ly0/a;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ZiyanOppoOfflineTranslateEngineNew"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final l(Lcom/ai/slp/library/base/exception/b;)V
    .locals 2

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ZiyanOppoOfflineTranslateEngineNew"

    invoke-virtual {p0}, Lcom/ai/slp/library/base/exception/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final m(Lcom/coloros/translate/engine/offline/t0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "this$0"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$from"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$to"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$inputText"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$resultListener"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "nmt_common_exist"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "ZiyanOppoOfflineTranslateEngineNew"

    if-eqz v5, :cond_9

    invoke-virtual/range {p0 .. p2}, Lcom/coloros/translate/engine/offline/t0;->existsOfflinePackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/engine/offline/h;->a(Ljava/lang/String;)Lcom/ai/slp/library/mt/c;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Lcom/coloros/translate/engine/offline/h;->a(Ljava/lang/String;)Lcom/ai/slp/library/mt/c;

    move-result-object v7

    sget-object v8, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v8}, Lcom/coloros/translate/utils/c0$a;->l()Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "offline has start, from =="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " langFrom=="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " langTo=="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v6, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v5, :cond_8

    if-nez v7, :cond_2

    goto/16 :goto_5

    :cond_2
    new-instance v2, Lcom/ai/slp/library/mt/f;

    invoke-direct {v2, v3, v5, v7}, Lcom/ai/slp/library/mt/f;-><init>(Ljava/lang/String;Lcom/ai/slp/library/mt/a;Lcom/ai/slp/library/mt/a;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inputText"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v6, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/coloros/translate/engine/offline/t0;->b:Lcom/ai/slp/library/mt/e;

    const/4 v9, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/ai/slp/library/impl/component/b;->c()Ly0/a;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v9

    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "state"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v6, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/coloros/translate/engine/offline/t0;->b:Lcom/ai/slp/library/mt/e;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/ai/slp/library/impl/component/b;->c()Ly0/a;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v9

    :goto_1
    sget-object v10, Ly0/a;->STATE_START:Ly0/a;

    if-eq v3, v10, :cond_5

    iget-object v3, v1, Lcom/coloros/translate/engine/offline/t0;->b:Lcom/ai/slp/library/mt/e;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/ai/slp/library/impl/component/d;->start()V

    :cond_5
    :try_start_0
    iget-object v3, v1, Lcom/coloros/translate/engine/offline/t0;->b:Lcom/ai/slp/library/mt/e;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v2}, Lcom/ai/slp/library/mt/e;->R(Lcom/ai/slp/library/mt/f;)Lcom/ai/slp/library/mt/g;

    move-result-object v9

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_6
    :goto_2
    if-nez v9, :cond_7

    new-instance v0, Lcom/coloros/translate/engine/offline/t0$d;

    invoke-direct {v0, v4}, Lcom/coloros/translate/engine/offline/t0$d;-><init>(Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    invoke-direct {v1, v0}, Lcom/coloros/translate/engine/offline/t0;->o(Lw8/a;)V

    const-string v0, "translate failed"

    invoke-virtual {v8, v6, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v9}, Lcom/ai/slp/library/mt/g;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/coloros/translate/engine/offline/t0;->a:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/coloros/translate/engine/offline/l0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coloros/translate/engine/info/OnLineTranslateResult;

    const/16 v19, 0x1ff

    const/16 v20, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v20}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v0}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->m(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/ai/slp/library/mt/c;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->j(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/ai/slp/library/mt/c;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->p(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->q(Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/coloros/translate/engine/offline/t0$e;

    invoke-direct {v2, v4, v0}, Lcom/coloros/translate/engine/offline/t0$e;-><init>(Lcom/coloros/translate/engine/IOfflineTranslateListener;Ljava/util/List;)V

    invoke-direct {v1, v2}, Lcom/coloros/translate/engine/offline/t0;->o(Lw8/a;)V

    const-string v0, "translate success"

    invoke-virtual {v8, v6, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "translate error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/coloros/translate/engine/offline/t0$f;

    invoke-direct {v2, v4, v0}, Lcom/coloros/translate/engine/offline/t0$f;-><init>(Lcom/coloros/translate/engine/IOfflineTranslateListener;Ljava/lang/Exception;)V

    invoke-direct {v1, v2}, Lcom/coloros/translate/engine/offline/t0;->o(Lw8/a;)V

    :goto_4
    return-void

    :cond_8
    :goto_5
    const-string v0, "translate parameters null"

    invoke-virtual {v8, v6, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/engine/offline/t0$c;

    invoke-direct {v0, v4}, Lcom/coloros/translate/engine/offline/t0$c;-><init>(Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    invoke-direct {v1, v0}, Lcom/coloros/translate/engine/offline/t0;->o(Lw8/a;)V

    return-void

    :cond_9
    :goto_6
    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not exist: from:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/engine/offline/t0$b;

    invoke-direct {v0, v4}, Lcom/coloros/translate/engine/offline/t0$b;-><init>(Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    invoke-direct {v1, v0}, Lcom/coloros/translate/engine/offline/t0;->o(Lw8/a;)V

    return-void
.end method

.method private static final n(Lcom/coloros/translate/engine/offline/t0;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "this$0"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$from"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$to"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$resultListener"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "nmt_common_exist"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "ZiyanOppoOfflineTranslateEngineNew"

    if-eqz v5, :cond_e

    invoke-virtual/range {p0 .. p2}, Lcom/coloros/translate/engine/offline/t0;->existsOfflinePackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/engine/offline/h;->a(Ljava/lang/String;)Lcom/ai/slp/library/mt/c;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Lcom/coloros/translate/engine/offline/h;->a(Ljava/lang/String;)Lcom/ai/slp/library/mt/c;

    move-result-object v7

    sget-object v8, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v8}, Lcom/coloros/translate/utils/c0$a;->l()Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "offline has start, from =="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " langFrom=="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " langTo=="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v6, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v5, :cond_d

    if-nez v7, :cond_2

    goto/16 :goto_7

    :cond_2
    if-eqz v3, :cond_c

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_6

    :cond_3
    const-string v2, "translate begin"

    invoke-virtual {v8, v6, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/t0;->b:Lcom/ai/slp/library/mt/e;

    if-nez v2, :cond_4

    const-string v0, "mTranslateEngine has not init"

    invoke-virtual {v8, v6, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v9, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/ai/slp/library/impl/component/b;->c()Ly0/a;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v9

    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current state=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v6, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/t0;->b:Lcom/ai/slp/library/mt/e;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/ai/slp/library/impl/component/b;->c()Ly0/a;

    move-result-object v2

    goto :goto_1

    :cond_6
    move-object v2, v9

    :goto_1
    sget-object v8, Ly0/a;->STATE_START:Ly0/a;

    if-eq v2, v8, :cond_7

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/t0;->b:Lcom/ai/slp/library/mt/e;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/ai/slp/library/impl/component/d;->start()V

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x0

    move v11, v10

    :goto_2
    if-ge v11, v8, :cond_8

    new-instance v12, Lcom/ai/slp/library/mt/f;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v13, Ljava/lang/String;

    invoke-direct {v12, v13, v5, v7}, Lcom/ai/slp/library/mt/f;-><init>(Ljava/lang/String;Lcom/ai/slp/library/mt/a;Lcom/ai/slp/library/mt/a;)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_8
    :try_start_0
    iget-object v3, v1, Lcom/coloros/translate/engine/offline/t0;->b:Lcom/ai/slp/library/mt/e;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v2}, Lcom/ai/slp/library/mt/e;->S(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_9
    :goto_3
    if-nez v9, :cond_a

    new-instance v0, Lcom/coloros/translate/engine/offline/t0$i;

    invoke-direct {v0, v4}, Lcom/coloros/translate/engine/offline/t0$i;-><init>(Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    invoke-direct {v1, v0}, Lcom/coloros/translate/engine/offline/t0;->o(Lw8/a;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "translateList failed"

    invoke-virtual {v0, v6, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    :goto_4
    if-ge v10, v3, :cond_b

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ai/slp/library/mt/g;

    invoke-virtual {v8}, Lcom/ai/slp/library/mt/g;->a()Ljava/lang/String;

    move-result-object v8

    new-instance v15, Lcom/coloros/translate/engine/info/OnLineTranslateResult;

    const/16 v21, 0x1ff

    const/16 v22, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object v11, v15

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v23

    invoke-direct/range {v11 .. v22}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v11, v24

    invoke-virtual {v11, v0}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->m(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/ai/slp/library/mt/c;->getCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->j(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/ai/slp/library/mt/c;->getCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->p(Ljava/lang/String;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v12}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->q(Ljava/util/List;)V

    iget-object v12, v1, Lcom/coloros/translate/engine/offline/t0;->a:Landroid/content/Context;

    invoke-static {v12, v0, v8}, Lcom/coloros/translate/engine/offline/l0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->d()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_b
    new-instance v0, Lcom/coloros/translate/engine/offline/t0$j;

    invoke-direct {v0, v4, v2}, Lcom/coloros/translate/engine/offline/t0$j;-><init>(Lcom/coloros/translate/engine/IOfflineTranslateListener;Ljava/util/List;)V

    invoke-direct {v1, v0}, Lcom/coloros/translate/engine/offline/t0;->o(Lw8/a;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "translateList success"

    invoke-virtual {v0, v6, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "translateList error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/coloros/translate/engine/offline/t0$k;

    invoke-direct {v2, v4, v0}, Lcom/coloros/translate/engine/offline/t0$k;-><init>(Lcom/coloros/translate/engine/IOfflineTranslateListener;Ljava/lang/Exception;)V

    invoke-direct {v1, v2}, Lcom/coloros/translate/engine/offline/t0;->o(Lw8/a;)V

    :cond_c
    :goto_6
    return-void

    :cond_d
    :goto_7
    const-string v0, "translate list parameters null"

    invoke-virtual {v8, v6, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/engine/offline/t0$h;

    invoke-direct {v0, v4}, Lcom/coloros/translate/engine/offline/t0$h;-><init>(Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    invoke-direct {v1, v0}, Lcom/coloros/translate/engine/offline/t0;->o(Lw8/a;)V

    return-void

    :cond_e
    :goto_8
    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not exist: from:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/engine/offline/t0$g;

    invoke-direct {v0, v4}, Lcom/coloros/translate/engine/offline/t0$g;-><init>(Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    invoke-direct {v1, v0}, Lcom/coloros/translate/engine/offline/t0;->o(Lw8/a;)V

    return-void
.end method

.method private final o(Lw8/a;)V
    .locals 2

    :try_start_0
    sget-object p0, Ln8/r;->Companion:Ln8/r$a;

    invoke-interface {p1}, Lw8/a;->invoke()Ljava/lang/Object;

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrapBinderCallBack error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZiyanOppoOfflineTranslateEngineNew"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/t0;->destroy()V

    return-void
.end method

.method public destroy()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/engine/offline/t0;->e:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy isPendingDestroy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZiyanOppoOfflineTranslateEngineNew"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/engine/offline/t0;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/engine/offline/t0;->e:Z

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/t0;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/t0;->d:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/translate/engine/offline/o0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/engine/offline/o0;-><init>(Lcom/coloros/translate/engine/offline/t0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/t0;->c:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public existsOfflinePackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "from"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "to"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/coloros/translate/engine/offline/h;->a(Ljava/lang/String;)Lcom/ai/slp/library/mt/c;

    move-result-object p0

    invoke-static {p2}, Lcom/coloros/translate/engine/offline/h;->a(Ljava/lang/String;)Lcom/ai/slp/library/mt/c;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/translate/engine/offline/h0;->f(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Z

    move-result p0

    return p0
.end method

.method public translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
    .locals 8

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/t0;->d:Landroid/os/Handler;

    new-instance v7, Lcom/coloros/translate/engine/offline/p0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/coloros/translate/engine/offline/p0;-><init>(Lcom/coloros/translate/engine/offline/t0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public translateList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
    .locals 8

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/t0;->d:Landroid/os/Handler;

    new-instance v7, Lcom/coloros/translate/engine/offline/n0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/coloros/translate/engine/offline/n0;-><init>(Lcom/coloros/translate/engine/offline/t0;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
