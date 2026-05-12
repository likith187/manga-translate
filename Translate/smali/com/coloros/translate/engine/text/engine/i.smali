.class public final Lcom/coloros/translate/engine/text/engine/i;
.super Lcom/coloros/translate/engine/ITranslateEngine$Stub;
.source "SourceFile"

# interfaces
.implements La2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/text/engine/i$a;,
        Lcom/coloros/translate/engine/text/engine/i$b;
    }
.end annotation


# static fields
.field public static final e:Lcom/coloros/translate/engine/text/engine/i$a;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private final b:Lcom/coloros/translate/engine/IOfflineTranslateEngine;

.field private final c:Lcom/coloros/translate/engine/text/impl/a;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/engine/text/engine/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/text/engine/i$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/engine/text/engine/i;->e:Lcom/coloros/translate/engine/text/engine/i$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/engine/ITranslateEngine$Stub;-><init>()V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newFixedThreadPool(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/engine/text/engine/i;->a:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/coloros/translate/engine/offline/a0;->INSTANCE:Lcom/coloros/translate/engine/offline/a0;

    const-string v1, "text_offline"

    invoke-virtual {v0, p1, v1}, Lcom/coloros/translate/engine/offline/a0;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/text/engine/i;->b:Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    new-instance v0, Lcom/coloros/translate/engine/text/impl/a;

    invoke-direct {v0, p1}, Lcom/coloros/translate/engine/text/impl/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/engine/text/engine/i;->c:Lcom/coloros/translate/engine/text/impl/a;

    iput-object p1, p0, Lcom/coloros/translate/engine/text/engine/i;->d:Landroid/content/Context;

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/engine/text/engine/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/translate/engine/text/engine/i;->k(Lcom/coloros/translate/engine/text/engine/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/coloros/translate/engine/text/engine/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/translate/engine/text/engine/i;->g(Lcom/coloros/translate/engine/text/engine/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/coloros/translate/engine/text/engine/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/ITranslateListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/translate/engine/text/engine/i;->m(Lcom/coloros/translate/engine/text/engine/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/ITranslateListener;)V

    return-void
.end method

.method public static synthetic e(Lcom/coloros/translate/engine/text/engine/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/translate/engine/text/engine/i;->i(Lcom/coloros/translate/engine/text/engine/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    return-void
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
    .locals 7

    iget-object p4, p0, Lcom/coloros/translate/engine/text/engine/i;->b:Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    if-nez p4, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "TextTranslateEngine"

    const-string p2, "mOfflineTranslateEngine is null"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x66

    invoke-interface {p5, p2, p0}, Lcom/coloros/translate/engine/IOfflineTranslateListener;->onOfflineError(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/coloros/translate/engine/text/engine/i;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/coloros/translate/engine/text/engine/h;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/coloros/translate/engine/text/engine/h;-><init>(Lcom/coloros/translate/engine/text/engine/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    invoke-interface {p4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static final g(Lcom/coloros/translate/engine/text/engine/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$inputText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/i;->b:Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/coloros/translate/engine/IOfflineTranslateEngine;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    return-void
.end method

.method private final h(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
    .locals 7

    iget-object p4, p0, Lcom/coloros/translate/engine/text/engine/i;->b:Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    if-nez p4, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "TextTranslateEngine"

    const-string p2, "mOfflineTranslateEngine is null"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x66

    invoke-interface {p5, p2, p0}, Lcom/coloros/translate/engine/IOfflineTranslateListener;->onOfflineError(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/coloros/translate/engine/text/engine/i;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/coloros/translate/engine/text/engine/g;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/coloros/translate/engine/text/engine/g;-><init>(Lcom/coloros/translate/engine/text/engine/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    invoke-interface {p4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static final i(Lcom/coloros/translate/engine/text/engine/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$inputTextList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/i;->b:Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/coloros/translate/engine/IOfflineTranslateEngine;->translateList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    return-void
.end method

.method private final j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V
    .locals 7

    iget-object p4, p0, Lcom/coloros/translate/engine/text/engine/i;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/coloros/translate/engine/text/engine/e;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/coloros/translate/engine/text/engine/e;-><init>(Lcom/coloros/translate/engine/text/engine/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V

    invoke-interface {p4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final k(Lcom/coloros/translate/engine/text/engine/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$inputText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/i;->c:Lcom/coloros/translate/engine/text/impl/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coloros/translate/engine/text/impl/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V

    return-void
.end method

.method private final l(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V
    .locals 7

    iget-object p4, p0, Lcom/coloros/translate/engine/text/engine/i;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/coloros/translate/engine/text/engine/f;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/coloros/translate/engine/text/engine/f;-><init>(Lcom/coloros/translate/engine/text/engine/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/ITranslateListener;)V

    invoke-interface {p4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final m(Lcom/coloros/translate/engine/text/engine/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/ITranslateListener;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$inputTexts"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/i;->c:Lcom/coloros/translate/engine/text/impl/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coloros/translate/engine/text/impl/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/ITranslateListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/engine/text/engine/i;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lcom/coloros/translate/engine/text/engine/i;->b:Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/translate/engine/IOfflineTranslateEngine;->destroy()V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/i;->c:Lcom/coloros/translate/engine/text/impl/a;

    invoke-virtual {p0}, Lcom/coloros/translate/engine/text/impl/a;->g()V

    return-void
.end method

.method public existsOfflinePackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/i;->b:Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    if-nez p0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "TextTranslateEngine"

    const-string p2, "offline engine is not existed"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/coloros/translate/engine/IOfflineTranslateEngine;->existsOfflinePackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public invokeMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V
    .locals 9

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TextTranslateEngine"

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/text/engine/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/translate/utils/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "translate net is ok --> translateOnline"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, ""

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/coloros/translate/engine/text/engine/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "translate net is no --> offline only"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/coloros/translate/engine/text/engine/i$b;

    const/4 v0, 0x1

    invoke-direct {v8, p4, v0}, Lcom/coloros/translate/engine/text/engine/i$b;-><init>(Lcom/coloros/translate/engine/ITranslateListener;Z)V

    const-string v7, ""

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/coloros/translate/engine/text/engine/i;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "translate some param is null, just return!"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "translate from to or inputText is empty"

    const/16 p1, 0x66

    const-string p2, ""

    invoke-interface {p4, p2, p0, p1}, Lcom/coloros/translate/engine/ITranslateListener;->onError(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public translateList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/ITranslateListener;)V
    .locals 9

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputTextList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TextTranslateEngine"

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/text/engine/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/translate/utils/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "translateList net is ok --> translateOnline"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, ""

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/coloros/translate/engine/text/engine/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "translateList net is no --> translateOffline"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/coloros/translate/engine/text/engine/i$b;

    const/4 v0, 0x0

    invoke-direct {v8, p4, v0}, Lcom/coloros/translate/engine/text/engine/i$b;-><init>(Lcom/coloros/translate/engine/ITranslateListener;Z)V

    const-string v7, ""

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/coloros/translate/engine/text/engine/i;->h(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "translateList some param is null, just return!"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "translatelist from to or inputText is empty"

    const/16 p1, 0x66

    const-string p2, ""

    invoke-interface {p4, p2, p0, p1}, Lcom/coloros/translate/engine/ITranslateListener;->onError(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
